clc;
close all;
clear all;
%fft
fs= input('Enter the frequency:');

x = [1,2,1,2];
XK=fft(x,4);
disp(XK);
f=[0:length(XK)-1]*fs/length(XK);
figure(1);
plot(f,abs(XK));
xlabel('frequency');
ylabel('Amplitude');

XK1=fft(x,8);
f=[0:length(XK1)-1]*fs/length(XK1);
figure(2);
plot(f,abs(XK1));
xlabel('frequency');
ylabel('Amplitude');

XK2=fft(x,16);
f=[0:length(XK2)-1]*fs/length(XK2);
figure(3);
plot(f,abs(XK2));
xlabel('frequency');
ylabel('Amplitude');

XK3=fft(x,64);
f=[0:length(XK3)-1]*fs/length(XK3);
figure(4);
plot(f,abs(XK3));
xlabel('frequency');
ylabel('Amplitude');
%as n increases with padding, resolution increases and the output becomes
%smoother