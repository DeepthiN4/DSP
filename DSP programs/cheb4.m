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

[N,wn]=cheb1ord(wp/pi,ws/pi,rp,rs);
[b,a]=cheby1(N,rp,wn);

[N1,wn1]=cheb1ord(wp0/pi,ws0/pi,rp,rs);
[b1,a1]=cheby1(N1,rp,wn1,'high');

[N2,wn2]=cheb1ord(wp1/pi,ws1/pi,rp,rs);
[b2,a2]=cheby1(N2,rp,wn2);

[N3,wn3]=cheb1ord(wp2/pi,ws2/pi,rp,rs);
[b3,a3]=cheby1(N3,rp,wn3,'stop');

figure(1);
freqz(b,a);
title('LPF');
figure(2);
freqz(b1,a1);
title('HPF');
figure(3);
freqz(b2,a2);
title('BPF');
figure(4);
freqz(b3,a3);
title('BSF');

figure(5);
zplane(b,a);
title('LPF');
figure(6);
zplane(b1,a1);
title('HPF');
figure(7);
zplane(b2,a2);
title('BPF');
figure(8);
zplane(b3,a3);
title('BSF');

% 
% Enter pass band attenuation:20
% Enter stop band attenuation:50
% For Low Pass Filter:
% Enter pass band frequency:0.3*pi
% Enter stop band frequency:0.4*pi
% For High Pass Filter:
% Enter pass band frequency:0.4*pi
% Enter stop band frequency:0.3*pi
% For Bandpass Filter:
% Enter pass band frequency:[0.3*pi 0.5*pi]
% Enter stop band frequency:[0.1*pi 0.8*pi]
% For Band Stop Filter:
% Enter pass band frequency:[0.1*pi 0.8*pi]
% Enter stop band frequency:[0.3*pi 0.5*pi]



