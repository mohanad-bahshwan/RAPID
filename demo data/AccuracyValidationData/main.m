%% Clean up
close all, clc

%==========================================================================
% Constants and Setup
%==========================================================================

% The dataset contains a 6x11 grid of squares.
% This script analyzes 10 pairs of elements per row (1:10).


%==========================================================================
% Data Loading and Preparation
%==========================================================================

% Setup path
addpath(genpath(pwd));

% Load the mstruct file
load('mstruct.mat');

% Convert the input structure 'mStruct'
% to a table for easier data manipulation.
dataTable = struct2table(mStruct);

% Load the preferences file from the previous run:
load('Preferences.mat');

% um2pxFactor: Conversion factor from micrometers (um) to pixels (px).
um2pxFactor = 1/(prefs.scaleDataCollection.conversionFactor);

% Load the binary mask image (e.g., for validation or overlay).
bwimg = imread("B_.png");

% Load the primary grayscale or color image for visualization.
img = imread("L_.png");

% Display the main image in a new figure window.
figure();
imshow(img);
hold on; % Hold the figure to allow overlaying rectangles.

%==========================================================================
% Main Processing Loop: Iterate Over Grid and Calculate Pitch
%==========================================================================

% xdist: Horizontal distance accumulator for ROI placement (in um).
xdist = 0;
% ydist: Vertical distance accumulator for ROI placement (in um).
ydist = 0;

% calculatedPitch: Array to store the pitch measurement from each valid pair.
% Pre-allocation is skipped for simplicity as the final size is unknown.
calculatedPitch = [];

% Outer loop: Iterates over the 6 rows of the grid.
for j = 1:6
    % Reset horizontal distance for each new row.
    xdist = 0;
    
    % Inner loop: Iterates over the first 10 elements in the row
    % to calculate pitch between adjacent pairs.
    for i = 1:10
        
        % --- Define Alternating Colors for ROI Visualization ---
        % Use modulo operator to alternate colors for adjacent ROIs
        % to make them easier to distinguish visually.
        if mod(i, 2) == 1
            % Odd number: Set color to semi-transparent green.
            eColor = [0 1 0 0.5];
        else
            % Even number: Set color to semi-transparent blue.
            eColor = [0 0 1 0.5];
        end
        
        % Draw a dashed rectangle representing the current Region of Interest (ROI).
        % Position is defined in um [x, y, width, height] and scaled to pixels.
        rectangle('Position', [1+xdist 1.2+ydist 18.9 9.5]*um2pxFactor, ...
            'EdgeColor', eColor, 'LineWidth', 2, 'LineStyle', '--');
        
        % --- Isolate Data Points within the Current ROI ---
        
        % Define the reference box [x, y, w, h] in pixel coordinates
        % for filtering the dataTable.
        refBox = [1+xdist, 1.2+ydist, 18.9, 9.5]*um2pxFactor;
        
        % Scale all bounding boxes from the dataTable to pixel coordinates.
        allBBoxes = dataTable.BoundingBox*um2pxFactor;
        
        % Create a logical index 'isInside' to find all data elements
        % that are *fully contained* within the reference box.
        isInside = (allBBoxes(:, 1) >= refBox(1)) & ... % Left edge check
            (allBBoxes(:, 2) >= refBox(2)) & ... % Top edge check
            ((allBBoxes(:, 1) + allBBoxes(:, 3)) <= (refBox(1) + refBox(3))) & ... % Right edge check
            ((allBBoxes(:, 2) + allBBoxes(:, 4)) <= (refBox(2) + refBox(4)));    % Bottom edge check
        
        % Create a new table 'filteredTable' containing only the
        % data elements found inside the current ROI.
        filteredTable = dataTable(isInside, :);
        
        % --- Calculate Pitch ---
        % Calculate the horizontal pitch by subtracting the x-centroid
        % of the first element from the x-centroid of the second element.
        % This assumes exactly two elements are found inside the ROI
        % and are correctly ordered.
        calculatedPitch(end+1) = filteredTable(2,:).Centroid_x - filteredTable(1,:).Centroid_x;
        
        % Increment the horizontal distance to move to the next ROI position.
        % 9.98 um is the expected horizontal pitch to avoid including a third block.
        xdist = xdist + 9.98;
    end
    
    % Increment the vertical distance to move to the next row.
    % 9.98 um is the expected vertical pitch to avoid including a third block.
    ydist = ydist + 9.98;
end

hold off; % Release the figure hold.

%==========================================================================
% Statistical Analysis
%==========================================================================

% Calculate the average horizontal pitch from all measurements.
avgPitch = mean(calculatedPitch)

% Calculate the Standard Error of the Mean (SEM) for the pitch.
stdErr = std(calculatedPitch) / sqrt(length(calculatedPitch))

% Store the total number of pitch measurements taken.
n = length(calculatedPitch)