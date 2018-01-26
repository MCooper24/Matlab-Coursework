%% -- TASK 10 --
% Generate an N = 50 samples long Hann window and use your "DFTsum()" function to perform a DFT ongenerated window. 
% Plot the results, both in time and frequency domain. 
% What regions of the frequency plot correspond to low frequency components and what regions correspond to high frequency components?

clear all;
clc;
close all;

N = 49;
n = 0:N;

w = 1/2*(1-cos(2*pi*n/N));

stem(abs(w));
grid on;
xlabel('Discrete Points')
ylabel('Magnitude')
title('Hann Window Plot');

hold on;
X = DFTsum(w);
stem(abs(X));

% Between points 3 and 49, the frequency corresponds in both domains.
% However, the very start and end of the graph indicates they have a very
% large magnitude, and therefore do not correspond.

%% -- TASK 11 --
% Modify your DFT function "DFTsum()" into a new function "DFTsamples()" with syntax "[X,f] = DTFTsamples(x,fs)". 
% Equation can be found under file "DFTSamples.m".