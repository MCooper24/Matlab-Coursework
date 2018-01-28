%% -- TASK 12 --
% Test your new function by analysing signal stored in "ecgbn.dat" file.
% Plot the signal such that x-axis displays time (t) in miliseconds (ms) 
% rather than sample numbers n.
% What are the main interference components and their frequencies you can 
% identify in this signal?

clear all;
close all;
clc;

load ecgbn.dat;                         % Load the data file.
soundsc(abs(ecgbn));                    % Play original sound file.
fs = 600;                               % Frequency sampling at 600Hz.
[X,f] = DFTSamples(ecgbn,fs);           % Call the equation from task 11.

figure(1);                              % Generate a figure numbered 1.
stem(f,abs(X));                         % Plot a stem graph.
soundsc(abs(X));                        % Play the new sound.
f = round(f);                           % Round the frequency results.
grid on;                                % Apply a grid.
xlabel('Time (ms)');                    % Give the x-axis a title.
ylabel('Frequencies');                  % Give the y-axis a title.
title('ECG Sampled Signal');            % Give the graph a title.

% OBSERVATION - 150Hz, 38Hz & 75Hz are the three frequency interference 
% points on the graph. Beyond 300ms, these are mirrored.

%% -- TASK 13 --
% Load "nspeech1.dat" speech signal and plot it. Sampling rate used during 
% the signal recording is 8192 Hz. Play the signal and observe the noise 
% in the signal.
% As in the previous task, compute the signal spectrum and plot it. You can
% use "DFTsamples()" function to do this.

clear all;
close all;
clc;

% ORGIGNAL AUDIO FILE
load ('nspeech1.mat');                  % Load the speech file.
stem(abs(nspeech1));                    % Plot the file as a stem graph.
grid on;                                % Add a grid.
xlabel('Time (ms)');                    % Name the x-axis.
ylabel('Frequencies');                  % Name the y-axis.
title('Original Speech Audio File');    % Give the graph a title.
soundsc(nspeech1);                      % Play the file.

% 1) DFT TRANSFORM (FAST)
Z = fft(nspeech1);                      % Apply the FFT to the speech file.
stem(abs(Z));                           % Plotting the FFT on the graph.
grid on;                                % Apply a grid.
xlabel('Time (ms)');                    % Give the x-axis a label.
ylabel('Frequencies');                  % Give the y-axis a label.
title('DFT Transform (Fast Method)');   % Give the generated graph a title.
soundsc(abs(Z));                        % Play the changed audio file.

% 2) DFT TRANSFORM (SLOW)
[X, f] = DFTSamples(nspeech1, 8192);    % Option 2.
f = round(f);                           % Round off the values.
stem(abs(X));                           % Plot the DFT of the X signal.
grid on;                                % Apply a grid.
xlabel('Time (ms)');                    % Give the x-axis a label.
ylabel('Frequencies');                  % Give the y-axis a label.
title('DFT Transform (Slow Method)');   % Give the generated graph a title.
soundsc(abs(X));                        % Play the changed audio file.

% The frequency interference is at 3,914Hz and is mirrored.

%% -- TASK 14 --
% Remove the interference component from the "nspeech1" signal by simple 
% modification of its spectrum. This can be achieved by setting the 
% magnitude value at the identified frequency to zero or a very low value.

clear all;
close all;
clc;

% ORIGINAL FILE
load nspeech1.mat;                      % Load the speech file.
soundsc(nspeech1);                      % Play the unmodified sound file.
stem(abs(nspeech1));                    % Plot the signal on a stem graph.

% DFT THE FILE
Z = fft(nspeech1);                      % Apply the FFT to the speech file.
stem(abs(Z));                           % Plotting the FFT of the Z signal.
grid on;                                % Apply a grid.
xlabel('Frequencies (Hz)');             % Give the x-axis a label.
ylabel('Magnitude');                    % Give the y-axis a label.
title('DFT Transform (Fast Method)');   % Give the generated graph a title.
soundsc(abs(Z));                        % Play the modified sound file.

% REMOVED FREQUENCIES
% These are the frequency values removed from the DFT graph from previous.
Z(2749)= 0;
Z(2750)= 0;
Z(2751)= 0;
Z(2752)= 0;
Z(2753)= 0;
Z(2754)= 0;
Z(2755)= 0;
Z(2756)= 0;
Z(2757)= 0;
Z(2758)= 0;
Z(2759)= 0;
Z(10316)= 0;
Z(10315)= 0;
Z(10314)= 0;
Z(10313)= 0;
Z(10312)= 0;
Z(10311)= 0;
Z(10310)= 0;
Z(10309)= 0;
Z(10308)= 0;
Z(10307)= 0;
Z(10306)= 0;
Z(10305)= 0;
Z(10304)= 0;
Z(10303)= 0;

% APPLY REMOVED FREQUENCIES
f = round(f);                           % Round the frequency values.
stem(abs(Z));                           % Plot the results onto a graph.
grid on;                                % Apply a grid.
xlabel('Time (ms)');                    % Give the x-axis a title.
ylabel('Magnitude');                    % Give the y-axis a title.
title('Removed Frequencies');           % Give the graph a title.
soundsc(abs(Z));                        % Play the modified sound file.

% IFFT REVERSAL
Y = ifft(Z);                            % Apply the IFFT function.
stem(abs(Y));                           % Plot the reversed results.
grid on;                                % Apply a grid.
xlabel('Time (ms)');                    % Give the x-axis a label.
ylabel('Magnitude');                    % Give the y-axis a label.
title('Inversed Results');              % Give the graph a title.
soundsc(abs(Y));                        % Play the new sound file.