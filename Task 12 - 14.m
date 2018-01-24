%% -- TASK 12 --
% Test your new function by analysing the signal stored in "ecgbn.dat" file.
% Plot the signal such that x-axis displays time (t) in miliseconds (ms) rather than sample numbers n.
% What are the main interference components and their frequencies you can identify in this signal?

clear all;
close all;
clc;

load ecgbn.dat;                         % Load the data file.
soundsc(abs(ecgbn));                    % Play original sound file.
fs = 600;                               % Frequency sampling at 600Hz.
[X,f] = DFTSamples(ecgbn,fs);           % Call the equation from task 11.

figure(1);                              % Generate a figure numbered 1.
stem(f,abs(X));                         % Plot a stem graph of the abs. values of X against f.
soundsc(abs(X));                        % Play the new sound.
f = round(f);                           % Round the frequency results to the nearest Hz.
grid on;                                % Apply a grid.
xlabel('Frequencies');                  % Give the x-axis a title.
ylabel('Magnitude');                    % Give the y-axis a title.
title('ECG Sampled Signal');            % Give the graph a title.

% OBSERVATION - 60Hz, 120Hz & 180Hz are the three frequency interference points on the
% graph. Beyond 300Hz, these are mirrored.

%% -- TASK 13 --
% Load ?nspeech1.dat? speech signal and plot it. Sampling rate used during the signal recording is 8192 Hz. Play the signal and observe the noise in the signal.
% As in the previous task, compute the signal spectrum and plot it. You can
% use "DFTsamples()" function to do this.

clear all;
close all;
clc;

load ('nspeech1.mat');                  % Load the speech file.
stem(abs(nspeech1));                    % Plot the file as a stem graph.
grid on;                                % Add a grid.
xlabel('Time (ms)');                    % Name the x-axis.
ylabel('Magnitude');                    % Name the y-axis.
title('Speech Audio File');             % Give the graph a title.
soundsc(nspeech1);                      % Play the file.

% 1) DFT TRANSFORM (FAST)
Z = fft(nspeech1);                      % Apply the FFT to the speech file to give Z.
stem(abs(Z));                           % Plotting the FFT of the Z signal on the graph.
grid on;                                % Apply a grid.
xlabel('Frequencies (Hz)');             % Give the x-axis a label.
ylabel('Magnitude');                    % Give the y-axis a label.
title('DFT Transform (Fast Method)');   % Give the generated graph a title.
soundsc(abs(Z));                        % Play the changed audio file.

% 2) DFT TRANSFORM (SLOW)
[X, f] = DFTSamples(nspeech1, 8192);    % Option 2 using the much slower processing time
f = round(f);                           % To show the frequency of the spikes in integers rather than the floating
stem(abs(X));                           % Plot the DFT of the X signal.
grid on;                                % Apply a grid.
xlabel('Frequencies (Hz)');             % Give the x-axis a label.
ylabel('Magnitude');                    % Give the y-axis a label.
title('DFT Transform (Slow Method)');   % Give the generated graph a title.
soundsc(abs(X));                        % Play the changed audio file.

% Whether you use either the slow or fast method, there are two points on
% the spectrum where interference occurs, although oddly, the faster method
% does result in the points having a 1000Hz exact delay.

%% -- TASK 14 (WIP) --
% Remove the interference component from the "nspeech1" signal by simple 
% modification of its spectrum. This can be achieved by setting the 
% magnitude value at the identified frequency to zero or some very low value.

clear all;
close all;
clc;

load nspeech1.mat;                      % Load the speech file.
soundsc(nspeech1);                      % Play the speech file.

[X, f] = DFTSamples(nspeech1, 8192);    % Apply the DFTSample equation to the speech.
f = round(f);                           % Round the frequency values to the nearest Hz.
stem(abs(X));                           % Interpret the results onto a stem graph.
grid on;                                % Apply a grid.
xlabel('WA');                           % Give the x-axis a title.
ylabel('NA');                           % Give the y-axis a title.
Y = ifft(X);                            % Y is equal to the Inverse Fast-Fourier Transform of signal X.
soundsc(abs(Y));                        % Play the modified sound file.
