%Design a IIR Lp byutterworth filter with pass band 0 to 0.2pi rads, gain between 1 and 0.9, stopband 0.3pi to pi rads, attenuatrion -60dB

clc;
clear all;
close all;

rp=input('Enter pass band attenuation:');
rs=input('Enter stop band attenuation:');
disp('For Low Pass Filter:');
wp= input('Enter pass band frequency:');
ws=input('Enter stop band frequency:');
disp('For High Pass Filter:');
wp0= input('Enter pass band frequency:');
ws0=input('Enter stop band frequency:');
disp('For Bandpass Filter:');
wp1= input('Enter pass band frequency:');
ws1=input('Enter stop band frequency:');
disp('For Band Stop Filter:');
wp2= input('Enter pass band frequency:');
ws2=input('Enter stop band frequency:');

[N,Wn]=buttord(wp/pi,ws/pi,rp,rs);
figure(1);
[B,A]=butter(N,Wn,'low');
freqz(B,A);

[N0,Wn0]=buttord(wp0/pi,ws0/pi,rp,rs);
figure(2);
[B0,A0]=butter(N0,Wn0,'high');
freqz(B0,A0);

[N1,Wn1]=buttord(wp1/pi,ws1/pi,rp,rs);
figure(3);
[B1,A1]=butter(N1,Wn1,'bandpass');
freqz(B1,A1);


[N2,Wn2]=buttord(wp2/pi,ws2/pi,rp,rs);
figure(4);
[B2,A2]=butter(N2,Wn2,'stop');
freqz(B2,A2);

figure(5);
zplane(B,A);
figure(6);
zplane(B0,A0);
figure(7);
zplane(B1,A1);
figure(8);
zplane(B2,A2);
%location of poles for Lp,HP,BP,BS
%print the o/p for filter.

% Enter pass band attenuation:0.4
% Enter stop band attenuation:30
% For Low Pass Filter:
% Enter pass band frequency:0.2*pi
% Enter stop band frequency:0.4*pi
% For High Pass Filter:
% Enter pass band frequency:0.6*pi
% Enter stop band frequency:0.2*pi
% For Bandpass Filter:
% Enter pass band frequency:[0.2*pi 0.4*pi]
% Enter stop band frequency:[0.1*pi 0.5*pi]
% For Band Stop Filter:
% Enter pass band frequency:[0.1*pi 0.5*pi]
% Enter stop band frequency:[0.2*pi 0.4*pi]









