%% -- TASK 10 --
% Generate an N = 50 samples long Hann window and use your "DFTsum()" function to perform a DFT ongenerated window. 
% Plot the results, both in time and frequency domain. 
% What regions of the frequency plot correspond to low frequency components and what regions correspond to high frequency components?

clear all;
clc;
close all;

N = 50;
n = 0:N;

x = 1/2*(1-cos(2*pi*n/N));

stem(n, x,'o-');
stem(abs(x));
grid on;
xlabel('Discrete Points')
ylabel('Magnitude')
title('Hann Window Plot')
hold on;
X = DFTsum (x)
stem(abs(X));

%% -- TASK 11 --
figure