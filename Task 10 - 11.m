%% -- TASK 10 --
% Generate an N = 50 samples long Hann window and use your "DFTsum()" 
% function to perform a DFT ongenerated window. 
% Plot the results, both in time and frequency domain. 
% What regions of the frequency plot correspond to low frequency 
% components and what regions correspond to high frequency components?

clear all;
clc;
close all;

N = 49;                         % Declare the 50 samples.
n = 0:N;                        % n is the width of said samples.

w = 1/2*(1-cos(2*pi*n/N));      % Hann window equation.

stem(abs(w));                   % Plot the Hann window equation onto graph.
grid on;                        % Apply a grid.
xlabel('Discrete Points')       % Give the x-axis a label.
ylabel('Magnitude')             % Give the y-axis a label.
title('Hann Window Plot');      % Give the graph a title.

hold on;                        % Keep the previous graph...
X = DFTsum(w);                  % Apply the DFTsum to the Hann equation.
stem(abs(X));                   % Plot the results on the same graph.

% Between points 3 and 49, the frequency corresponds in both domains.
% However, the very start and end of the graph indicates they have a very
% large magnitude, and therefore do not correspond.

%% -- TASK 11 --
% Modify your DFT function "DFTsum()" into a new function "DFTsamples()" 
% with syntax "[X,f] = DTFTsamples(x,fs)". 
% Equation can be found under file "DFTSamples.m".