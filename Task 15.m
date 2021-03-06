%% -- TASK 15 --
% Load the speech signal and plot it. 
% Play the signal and observe the noise in this signal. 
% Calculate and plot the spectrum of this signal.

clear all;
clc;
close all;

% NOISY HOMER PLAYED
[s1,Fs] = audioread ('noisyhomer.wav'); % Load the noisy audio file.
soundsc(s1,Fs);                         % Play the sound file.

% PLOT THE SPECTRUM
subplot(2,1,1);                         % Sub-plot the x-axis & 2y-axis.
stem(s1);                               % Plot stem graph of signal.
grid on;                                % Apply a grid.
xlabel('Time (seconds)');               % Give the x-axis a label.
ylabel('Amplitude');                    % Give the y-axis a label.
title('Noisy Homer Signal');            % Give the graph a title.

hold on;                                % Use this to comapre the signals.

% CLEAN HOMER PLAYED
[s2,fs] = audioread('homer.wav')        % Load the clean audio file.
soundsc(s2,Fs);                         % Play the sound file.

% PLOT THE CLEAN SPECTRUM
subplot(2,1,1);                         % Sub-plot the x-axis & 2y-axis.
stem(s2);                               % Plot stem graph of signal.
grid on;                                % Apply a grid.
xlabel('Time (seconds)');               % Give the x-axis a label.
ylabel('Amplitude');                    % Give the y-axis a label.
title('Clean Homer Signal');            % Give the graph a title.

% MATHS
A = HOMERfunction(s1);                  % Noisy Funtion.
B = HOMERfunction(s2);                  % Clean function.

SNR = 10*log10(B/A);                    % SNR equation.