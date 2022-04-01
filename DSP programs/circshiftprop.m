clc;
clear all;
close all;

% circular shift property
x= input('Enter the sequence x[n]:');
m= input('Enter the constant m:');
XK=fft(x);
x1= circshift(x,m);
X1K=fft(x1);
N= length(x);
W=exp(2*pi*sqrt(-1)/N);
k=0:N-1;
G=W.^(-m*k).*XK;
disp(X1K);
disp(G);

% 1 1 -1 -1