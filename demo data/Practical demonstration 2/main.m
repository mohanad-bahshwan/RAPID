%% clean up
clc, close all, clear all

% Add path
addpath(genpath('results'));

%%
T = readtable('results/data.csv');
load('Preferences/Preferences.mat')
scaleFactor = prefs.scaleDataCollection.conversionFactor;

%% 
Tclean = T(T.BorderObject ~= 1, :);


% Mean and standard deviation for each file name
UniqueFiles = unique(Tclean.FileName);% get all unique file names
meanArea = arrayfun(@(x) mean(Tclean.Area(strcmp(Tclean.FileName, x))), UniqueFiles)
stdArea = arrayfun(@(x) std(Tclean.Area(strcmp(Tclean.FileName, x))), UniqueFiles)


f = figure;
boxplot(Tclean.Area, 'Symbol', 'o', 'Orientation', 'vertical',...
    'BoxStyle','outline', 'Colors',[0 0 0], 'MedianStyle','target',...
    'Widths', 0.25, 'LabelVerbosity','all');
ylabel('Porosity area (\mum^2)');
xlabel('');
ax = gca;
ax.XTick = []
f.Position = [407   241   431   557];
set(gca, 'YScale', 'log')
ax.XLim = [0.8323    1.8323];
ax.YLim = [1 100000];

% Mean and standard deviation for all files combined
overallMean = mean(Tclean.Area)      % mean of all rows
overallStd  = std(Tclean.Area)       % standard deviation of all rows
median(Tclean.Area)

%%
%close all
f = figure;

% --- NEW CODE: Define marker sizes ---
% We want size to be inversely related to Solidity.
% (1 - Tclean.Solidity) gives 0 for perfect, and larger numbers for low solidity.
min_marker_size = 15;   % The size for perfect (Solidity = 1) objects
size_scaler = 250;      % Adjust this to make low-solidity points bigger/smaller

% This creates a vector where high solidity -> small size, low solidity -> large size
marker_sizes = min_marker_size + (size_scaler * (1 - Tclean.Solidity));
% --- END NEW CODE ---

% --- SIMPLIFIED PLOTTING ---
% Plot all points in a single call, using 'marker_sizes' for size
% and 'Tclean.Solidity' for color.
h1 = scatter(Tclean.Area, Tclean.ConvexArea, ...
    marker_sizes, Tclean.Solidity, 's',...
    'filled', 'MarkerFaceAlpha', 0.01,'MarkerFaceColor', [0 0 0], 'MarkerEdgeColor',[0 0 0], 'MarkerEdgeAlpha', 0.50);
hold on
% --- END SIMPLIFIED PLOTTING ---

xlabel('Area (µm^2)');
ylabel('Convex Area (µm^2)');
title('');
%colormap black;
%c = colorbar;
%c.Label.String = 'Solidity';

% identity line for perfect convex shapes
xMin = min(Tclean.Area) - 3;
xMax = max(Tclean.Area) + 3000;
h2 = plot([xMin xMax], [xMin xMax], 'k--'); % Assign plot to handle h2

% --- UPDATED LEGEND ---
% Update legend to correctly label the scatter plot and the line
legend('', 'Perfect Convexity', 'Location', 'northwest');
% --- END UPDATED LEGEND ---

set(gca, 'XScale', 'log')
set(gca, 'YScale', 'log')
f.Position = [273   255   526   430];
ax = gca;
ax.XLim = [10 25360];
ax.YLim = [10 25360];