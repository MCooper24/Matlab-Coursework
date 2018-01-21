%% -- TASK 5 & 6 --
% Write a function "A = DFTmatrix(N)" that returns the NxN DFT matrix.

clear all;
clc;
close all;

n = [0:1:9];                    % Length of discrete points.
x = [1 0 0 0 0 0 0 0 0 0];      % Values for x.
x2 = [1 1 1 1 1 1 1 1 1 1];     % Values for x2.
x3 = cos(2*pi*n/10);            % Values for x3.

A = DFTmatrix(length(x));       % Call the sum and multiply by the signal.
X = A*x';                       % Matrix vector equation.
stem(abs(X))                    % Plot the results as a stem graph.
grid on;                        % Enable the grid.
ylabel('Magnitude')             % Label the Y-axis.
xlabel('Discrete Points')       % Label the X-axis.
title('X Matrix DFT')           % Give the graph a title.
ylim([-0.1 2]);                 % Set the parameters for the Y-axis.

A = DFTmatrix(length(x2));      % Call the sum and multiply by the signal.
X = A*x2';                      % Matrix vector equation.
stem(abs(X));                   % Plot the results as a stem graph.
grid on;                        % Enable the grid.
ylabel('Magnitude')             % Label the Y-axis.
xlabel('Discrete Points')       % Label the X-axis.
title('X2 Matrix DFT')          % Give the graph a title.
ylim([-1 11]);                  % Set the parameters for the Y-axis.

A = DFTmatrix(length(x3));      % Call the sum and multiply by the signal.
X = A*x3';                      % Matrix vector equation.
stem(abs(X));                   % Plot the results as a stem graph.
grid on;                        % Enables the grid.
ylabel('Magnitude')             % Label the Y-axis.
xlabel('Discrete Points')       % Label the X-axis.
title('X3 Matrix DFT')          % Give the graph a title.
ylim([-1 7]);                   % Set the parameters for the Y-axis.

%% -- TASK 7 --
% Randomly select a column from your DFT matrix A and extract it into vector a.

a = A(:,2);                     % Select column 2's numbers.
b = A(:,6);                     % Select column 6's numbers.
c = A(:,1);                     % Select column 1's numbers.
d = A(:,8);                     % Select column 8's numbers.

bans = a'*b;                    % Transpose vector a with b.
brans = round(bans);            % Rounded answer.

cans = a'*c;                    % Transpose vector a with c.
crans = round(cans);            % Rounded answer.

dans = a'*d;                    % Transpose vector a with d.
drans = round(dans);            % Rounded answer.

aans = a'*a;                    % Transpose vector a with itself.
arans = round(aans);            % Rounded answer.

% OBSERVATION - It doesn't matter which vector you multiply with another in the same
% matrix, the rounded integer result is always going to be zero. However,
% if you multiply the same vector on itself, you will get an exact answer
% of 10.