%% -- TASK 1 --
% Implement DFT equation given in the lectures.

clear all;
clc;
close all;

n = [0:1:9]                     % Number of discrete points.
x = [1 0 0 0 0 0 0 0 0 0];      % Values of x.
x2 = [1 1 1 1 1 1 1 1 1 1];     % Values of x2.
x3 = cos(2*pi*n/10);            % Values of x3.

% X1
stem(abs(x))                    % Plot x values as a stem graph.
ylim([-0.1 2])                  % Area of Y-axis.
grid on                         % Grid enabled.
ylabel('Magnitude')             % Label the Y-axis.
xlabel('Discrete Points')       % Label the X-axis.
title('X DFT Results');         % Give the graph a title.

% X2
stem(abs(x2))                   % Plot x2 values as a stem graph.
ylim([-0.1 2])                  % Area of Y-axis.
grid on                         % Grid enabled.
ylabel('Magnitude')             % Label the Y-axis.
xlabel('Discrete Points')       % Label the X-axis.
title('X2 DFT Results');        % Give the graph a title.

% X3
stem(abs(x3))                   % Plot x3 values as a stem graph.
ylim([-0.1 2])                  % Area of Y-axis.
grid on                         % Grid enabled.
ylabel('Magnitude')             % Label the Y-axis.
xlabel('Discrete Points')       % Label the X-axis.
title('X3 DFT Results');        % Give the graph a title.

%% -- TASK 2 --
% Test your DFTsum function.

clear all;
clc;
close all;

n = [0:1:9]                     % Width of discrete points.
x = [1 0 0 0 0 0 0 0 0 0];      % Values for x.
x2 = [1 1 1 1 1 1 1 1 1 1];     % Values for x2.
x3 = cos(2*pi*n/10);            % Values for x3.

% X1 DFT Equivalent.
X = DFTsum(x)                   % Call the DFTsum.
stem(abs(X))                    % Apply a stem graph for the X-axis.
grid on                         % Apply a grid.
ylabel('Magnitude')             % Label the Y-axis.
xlabel('Discrete Points')       % Label the X-axis.
title('X DFT')                  % Give the graph a title.
ylim([-0.1 2]);                 % Set the parameters for the Y-axis.

% X2 DFT Equivalent.
X = DFTsum(x2)                  % Call the DFTsum.
stem(abs(X))                    % Apply a stem graph for the X-axis.
grid on                         % Apply a grid.
ylabel('Magnitude')             % Label the Y-axis.
xlabel('Discrete Points')       % Label the X-axis.
title('X2 DFT')                 % Give the graph a title.
ylim([-1 12]);                  % Set the parameters for the Y-axis.

% X3 DFT Equivalent.
X = DFTsum(x3)                  % Call the DFTsum.
stem(abs(X))                    % Apply a stem graph for the X-axis.
grid on                         % Apply a grid.
ylabel('Magnitude')             % Label the Y-axis.
xlabel('Discrete Points')       % Label the X-axis.
title('X3 DFT');                % Give the graph a title.
ylim([-1 10]);                  % Set the parameters for the Y-axis.