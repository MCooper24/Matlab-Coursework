clear all;
close all;
clc;

load ecgbn.dat; % data file not sound
soundsc(abs(ecgbn)); % to play sound

fs = 600;
[X,f] = DFTSamples(ecgbn,fs);

figure(1);
stem(f,abs(X));
soundsc(abs(X));
f = round(f);
grid on;
xlabel('Frequencies');
ylabel('Magnitude');
title('ECG Sampled Signal');

% 60Hz, 120Hz & 180Hz.