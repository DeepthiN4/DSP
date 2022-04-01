clc;
clear all;
close all;

% time reversal property
x= input('Enter the sequence x[n]:');
N= length(x);
XK= fft(x);
k = [0:N-1];
x1= x(mod(-k,N)+1);
T= XK(mod(-k,N)+1);
t= ifft(T);
disp(x1);
disp(t);
disp(XK);