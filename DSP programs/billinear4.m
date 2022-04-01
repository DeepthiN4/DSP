clc;
clear all;
close all;

%low pass filter design using billinear transformation
fs=1000; % sampling frequency
fn=fs/2;
fc=300; %cutoff frequency
n=5;
[z,p,k]=butter(n,fc/fn);
b=k*poly(z); %zeroes
a=poly(p);  %poles
[h,om]= freqz(b,a,512,fs);
subplot(2,1,1);
plot(om,20*log10(abs(h)));
xlabel('Normalized Frequency');
ylabel('Gain in dB');
title('Magnitude rsponse');
subplot(2,1,2);
plot(om,angle(h));
xlabel('Normalized Frequency');
ylabel('Phase in radians');
title('Phase response');






