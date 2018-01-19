%% -- TASK 5 & 6 --
% Write a function "A = DFTmatrix(N)" that returns the NxN DFT matrix.

clear all;
clc;
close all;

n = [0:1:9];
x = [1 0 0 0 0 0 0 0 0 0];      % Values for x.
x2 = [1 1 1 1 1 1 1 1 1 1];     % Values for x2.
x3 = cos(2*pi*n/10);            % Values for x3.

X = DFTmatrix(x);               % Call the DFTsum.
stem(abs(X))                    % Plot the scattered data.
ylabel('Magnitude')             % Label the Y-axis.
xlabel('Discrete Points (N)')   % Label the X-axis.
title('DFT of X Matrix')        % Give the graph a title.
ylim([-0.5 2]);

X = DFTmatrix(x2);              % Call the DFTsum.
plotmatrix(x2,n);               % Plot the scattered data.
ylabel('Magnitude')             % Label the Y-axis.
xlabel('Discrete Points (N)')   % Label the X-axis.
title('DFT of X2 Matrix');      % Give the graph a title.

X = DFTmatrix(x3);              % Call the DFTsum.
plotmatrix(x3,n);               % Plot the scattered data.
ylabel('Magnitude')             % Label the Y-axis.
xlabel('Discrete Points (N)')   % Label the X-axis.
title('DFT of X3 Matrix');      % Give the graph a title.