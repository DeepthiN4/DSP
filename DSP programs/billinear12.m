%The specification of the desired low-pass digital butterworth filter is
% 0.7<=(H(w))<=1.0; 0<w<=0.25pi
% (H(w))<=0.24; 0.5pi<=w<=pi
%T=1s

clc;
clear all;
close all;

Ap=0.7;
As=0.24;
omega_p=0.25*pi;
omega_s=0.5*pi;
T=1;
Kp=-20*log10(Ap);
Ks=-20*log10(As);
P_p=(2/T)*tan(omega_p/2);
P_s=(2/T)*tan(omega_s/2);
[N,la]=buttord(P_p,P_s,Kp,Ks,'s');
[B,A]=butter(N,la,'s');
Hs=tf(B,A);
[num,den]=bilinear(B,A,1/T);
HZ=tf(num,den,T);
w=0:pi/16:pi;
Hw=freqz(num,den,w);
Hw_mag=abs(Hw);
plot(w/pi,Hw_mag,'k');
title('magnitude response')

