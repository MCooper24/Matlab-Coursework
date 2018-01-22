clear all;
clc;
close all;

n = [0:1:9];                    % Length of discrete points.
% n = 10;                         % For use ONLY on task 9!!!!!

x = [1 0 0 0 0 0 0 0 0 0];      % Values for x.
x2 = [1 1 1 1 1 1 1 1 1 1];     % Values for x2.
x3 = cos(2*pi*n/10);            % Values for x3.

%% -- TASK 5 & 6 --
% Write a function "A = DFTmatrix(N)" that returns the NxN DFT matrix.
%
% Use the matrix A to compute the DFT of the same signals used in Task 2.
%
% Confirm that the results are the same as in the previous section.

% X1 DFT Matrix.
A = DFTmatrix(length(x))        
X = A*x'                        
stem(abs(X))                   
grid on                         
ylabel('Magnitude')           
xlabel('Discrete Points')      
title('X DFT Matrix')           
ylim([-0.1 2]);                

% X2 DFT Matrix.
A = DFTmatrix(length(x2))       
X = A*x2'                     
stem(abs(X))                  
grid on                        
ylabel('Magnitude')            
xlabel('Discrete Points')      
title('X2 DFT Matrix')         
ylim([-1 11]);                

% X3 DFT Matrix.
A = DFTmatrix(length(x3))       
X = A*x3'                      
stem(abs(X))                    
grid on                         
ylabel('Magnitude')           
xlabel('Discrete Points')      
title('X3 DFT Matrix')   
ylim([-1 7])
             
%% -- TASK 7 --
% Randomly select a column from your DFT matrix A and extract it into vector a.

a = A(:,2);                     % Select column 2's numbers.
b = A(:,6);                     % ----------
c = A(:,1);                     % ----------
d = A(:,8);                     % ----------

bans = a'*b;                    % Transpose vector a with b.
brans = round(bans);            % Rounded answer.

cans = a'*c;                    % ----------
crans = round(cans);            % ----------

dans = a'*d;                    % ----------
drans = round(dans);            % ----------

aans = a'*a;                    % ----------
arans = round(aans);            % ----------

% OBSERVATION - It doesn't matter which vector you multiply with another in the same
% matrix, the rounded integer result is always going to be zero. However,
% if you multiply the same vector on itself, you will get an exact answer
% of 10.

%% -- TASK 8 --
% Write a Matlab function "B = IDFTmatrix(N)" that returns the NxN inverse
% DFT matrix B.

B = IDFTmatrix(length(x))       % Call the sum and multiply by the signal.
X = B*x'                        % Matrix vector equation.
stem(abs(X))                    % Plot the results as a stem graph.
grid on                         % Enable the grid.
ylabel('Magnitude')             % Label the Y-axis.
xlabel('Discrete Points')       % Label the X-axis.
title('X IDFT Matrix')          % Give the graph a title.
ylim([-0.1 0.2]);               % Set the graph size limits.

B = IDFTmatrix(length(x2))      % ----------
X = B*x2'                       % ----------
stem(abs(X))                    % ----------
grid on                         % ----------
ylabel('Magnitude')             % ----------
xlabel('Discrete Points')       % ----------
title('X2 IDFT Matrix')         % ----------
ylim([-1 2]);                   % ----------

B = IDFTmatrix(length(x3))      % ----------
X = B*x3'                       % ----------
stem(abs(X))                    % ----------
grid on                         % ----------
ylabel('Magnitude')             % ----------
xlabel('Discrete Points')       % ----------
title('X3 IDFT Matrix')         % ----------
ylim([-0.5 1]);                 % ----------

%% -- TASK 9 --
% Compute the matrices A and B for N = 10. Then compute the matrix product C = AB and display it. 
% Is the result as you expected?

C = A*B;
stem(abs(X))                    % ----------
grid on;                        % ----------
ylabel('Magnitude')             % ----------
xlabel('Discrete Points')       % ----------
title('AB Matrix IDFT')         % ----------
ylim([-0.5 1]);                 % ----------
