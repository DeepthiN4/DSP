clc;
clear all;
close all;
% T.F = 1/(1+0.8z)

a= [1]; % numerator coefficients
b=[1, -0.8]; % denominator coefficients
w= -pi:pi/64:pi;  %RESOLUTION improves with increasing value
[Xw]=freqz(b,a,w); %(num,den,w)
subplot(2,2,1);
plot(w, abs(Xw));

xlabel('Frequency,\omega');
ylabel('Magnitude of X(\omega)');

subplot(2,2,2);
plot(w,angle(Xw));
xlabel('Frequency,\omega');
ylabel('phase of X(\omega)');


subplot(2,2,3);
zplane(b,a);  %plot zero-pole plot
grid on;
