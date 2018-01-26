%% -- TASK 3 & 4 --
% Write a second Matlab function for computing the inverse DFT according to
% IDFT equation.

clear all;
clc;
close all;

n = [0:1:9]                     % Width of discrete points.
x = [1 0 0 0 0 0 0 0 0 0];      % Values for x.
x2 = [1 1 1 1 1 1 1 1 1 1];     % Values for x2.
x3 = cos(2*pi*n/10);            % Values for x3.

% X1 IDFT Equivalent.
X = IDFTsum(x)                  % Call the DFTsum.
stem(abs(X))                    % Apply a stem graph for the X-axis.
grid on                         % Apply a grid.
ylabel('Magnitude')             % Label the Y-axis.
xlabel('Discrete Points')       % Label the X-axis.
title('X IDFT')                 % Give the graph a title.
ylim([-0.1 1]);                 % Set the parameters for the Y-axis.

% X2 IDFT Equivalent.
X = IDFTsum(x2)                 % Call the DFTsum.
stem(abs(X))                    % Apply a stem graph for the X-axis.
grid on                         % Apply a grid.
ylabel('Magnitude')             % Label the Y-axis.
xlabel('Discrete Points')       % Label the X-axis.
title('X2 IDFT')                % Give the graph a title.
ylim([-1 1.5]);                 % Set the parameters for the Y-axis.

% X3 IDFT Equivalent.
X = IDFTsum(x3)                 % Call the DFTsum.
stem(abs(X))                    % Apply a stem graph for the X-axis.
grid on                         % Apply a grid.
ylabel('Magnitude')             % Label the Y-axis.
xlabel('Discrete Points')       % Label the X-axis.
title('X3 IDFT');               % Give the graph a title.
ylim([-1 1.5]);                 % Set the parameters for the Y-axis.