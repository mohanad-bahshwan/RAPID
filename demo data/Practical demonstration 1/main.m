%% clean up
clc, close all, clear all

% Add path
addpath(genpath('results'));

%%
T = readtable(fullfile('results','data.csv'));
load(fullfile('Preferences','Preferences.mat'))
scaleFactor = prefs.scaleDataCollection.conversionFactor;

%% load original input image
img = imread('Steel 1 1200 degree cropped.png');
sz = size(img);
sz = sz(1:2); 
frameArea = sz(1)*sz(2) % view frame area (pixels^2)
frameAreaum = frameArea*(scaleFactor^2) % view frame area (pixels^2)
%% load resulting BW image
bwimg = imread(fullfile('results','Images', 'Binarized', 'B_.png'));
NumPixels = sum(sum(bwimg)) % The number of binary pixels that are equal to 1

%% Calculate ratio (ferrite to austenite)
percentage = 100 -(NumPixels/frameArea)*100 % number of 1's to 0's in the frame

%% As confirmation, we can use the total Area of all objects in the .csv file and convert that area to pixel^2
%Calulcate the ratio of ferrite-to-austenite
objAreaPx = sum(T.Area)/(scaleFactor^2);
percentage = 100-(objAreaPx/frameArea)*100 % number of 1's to 0's in the frame