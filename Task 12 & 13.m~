clear all;
close all;
clc;

load ('nspeech1.mat');

stem (abs(nspeech1));
soundsc(nspeech1);
figure(1);

%% DFT TRANSFORM (FAST)
Z = fft(nspeech1);                      % Applicaion of fft
figure(2);                              % Generate a blank figure.
stem(abs(Z));                           % Plotting the FFT of the Z signal on the graph.

%% DFT TRANSFORM (SLOW)
[X, f] = DFTSamples(nspeech1, 8192);    % Option 2 using the much slower processing time
figure(2);                              % DTFT plot showing the spikes at 2.752KHz and6.467KHz
X(10306) INDEX OF SPIKE FREQUENCY = 0

%% ROUND FREQUENCY
f = round(f);                           % To show the frequency of the spikes in integers rather than the floating
stem(f,abs(X));
Y = ifft(X);                            % This is the inverse of the DTFT samples with the interference.

%% Z INVERSED
B = ifft(Z);                            % This is the inverse of Z which will give us the original N-speech 1.
figure(3);
stem(abs(B));

soundsc(abs(Y));                        % Plays the sound file.