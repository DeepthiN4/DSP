clc;
clear all;
close all;

disp('For FIR Low Pass Filter:');
N=input('Enter the value of N:');
wc=input('Enter cutoff frequency:'); 
h=fir1(N,wc/pi,hamming(N+1));

disp('For FIR High Pass Filter:');
N1=input('Enter the value of N:'); 
wc1=input('Enter cutoff frequency:'); 
h1=fir1(N1,wc1/pi,'high',hamming(N1+1)); 

disp('For FIR Band Pass Filter:');
N2=input('Enter the value of N:'); 
wc2=input('Enter cutoff frequency:'); 
h2=fir1(N2,wc2/pi,'bandpass',hamming(N2+1)); 

disp('For FIR Band stop Filter:');
N3=input('Enter the value of N:'); 
wc3=input('Enter cutoff frequency:'); 
h3=fir1(N3,wc3/pi,'stop',hamming(N3+1)); 


figure(1);
freqz(h);
title('Low Pass Filter');
figure(2);
zplane(h);
title('Pole-Zero Plot- Low Pass');
figure(3);
freqz(h1);
title('High Pass Filter');
figure(4);
zplane(h1);
title('Pole-Zero Plot- High Pass');
figure(5);
freqz(h2);
title('Band Pass Filter');
figure(6);
zplane(h2);
title('Pole-Zero Plot- BandPass');
figure(7);
freqz(h3);
title('Band Stop Filter');
figure(8);
zplane(h3);
title('Pole-Zero Plot- Band Stop');

% For FIR Low Pass Filter:
% Enter the value of N:28
% Enter cutoff frequency:0.5*pi
% For FIR High Pass Filter:
% Enter the value of N:34
% Enter cutoff frequency:0.4*pi
% For FIR Band Pass Filter:
% Enter the value of N:24
% Enter cutoff frequency:[0.2*pi 0.5*pi]
% For FIR Band stop Filter:
% Enter the value of N:28
% Enter cutoff frequency:[0.1*pi 0.8*pi]


