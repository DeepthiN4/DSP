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
Kp= -20*log10(Ap);
Ks= -20*log10(As);
P_a=omega_p/T;
S_a=omega_s/T;
[N,CF]= buttord(P_a,S_a,Kp,Ks,'s');
[B,A]=butter(N,CF,'s');
HS=tf(B,A);
[num,den]=impinvar(B,A,1/T);
Hz=tf(num,den,T);
w=0:pi/16:pi;
Hw=freqz(num,den,w);
Hw_mag=abs(Hw);
plot(w/pi,Hw_mag);
title('Magnitude response');








