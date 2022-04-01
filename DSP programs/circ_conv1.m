clc;
close all;
clear all;

x = input('enter the samples for x(n)');
y = input('enter the samples for y(n)');
n = length(x)+length(y)-1;
XK= fft(x,n);
YK= fft(y,n);
HK= times(XK,YK);
h= ifft(HK);
x1= [x zeros(1,length(y)-1)];
y1= [y zeros(1,length(x)-1)];
h1= conv(x1,y1);
disp(h);
disp(h1);