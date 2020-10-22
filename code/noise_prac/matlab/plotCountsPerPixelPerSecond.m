function plotCountsPerPixelPerSecond
% Plots counts per pixel per second and returns the bias level
% 
% function plotCountsPerPixelPerSecond
%
% This function should return a plot that is a straight line. 
% The slope of the line will dark counts per pixel per second.
% This should be run from the directory containing the TIFFS
% from different exposures. See further comments below.


% Here you will load the TIFFS. Each is a single image taken at a different exposure. 
imData = readAllImsInCurrentDir; 
imData = single(imData);

exposure_in_ms = [1,10,100,1000,10000,0.1]; % EDIT ME


% Calculate the mean counts per pixel
muCounts = % EDIT ME



% Let's call the shortest exposure the bias level, which we will subtract 




plot( ... % EDIT ME
h=addFitLine;

fprintf('The dark counts are %0.5f counts per pixel per second\n', h.b(2))

xlabel('Exposure time in s')
ylabel('mean counts per pixel')
title('Counts per pixel per second')

grid on

