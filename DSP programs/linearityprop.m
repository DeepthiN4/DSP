clc;
clear all;
close all;

% linearity
x1= input('Enter the sequence x1[n]:');
x2= input('Enter the sequence x2[n]:');
a= input('Enter the first constant a:');
b= input('Enter the second constant b:');

X1K=fft(x1);
X2K= fft(x2);
z= a*x1 + b*x2;
ZK=fft(z);
disp('Y[K]=');
disp(ZK);
ZK1=a*X1K +b*X2K;
disp('Y[K]=');
disp(ZK1);
