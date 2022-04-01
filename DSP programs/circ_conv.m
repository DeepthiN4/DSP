clc;
close all;
clear all;

%linear convolution using circular convolution
x=input('Enter coefficients in x[n]:');
h=input('Enter coefficients in h[n]:');

l1=length(x);
l2=length(h);
x=[x, zeros(1,l2-1)];
h=[h,zeros(1,l1-1)];
y1=conv(x,h); % method1: using conv() function
disp('y1=');
disp(y1);

l3=length(x);
c=0:l3-1;
X=fft(x,l3); % method 2: using dft.
H=fft(h,l3);
Y= X.*H;
y=ifft(Y,l3);
disp('y[n]: ');
disp(y);

figure(1);
stem(c,x);
xlabel('Time');
ylabel('Amplitude');
title('x(n)');
figure(2);
stem(c,h);
xlabel('Time');
ylabel('Amplitude');
title('h(n)');
figure(3);
stem(c,y);
xlabel('Time');
ylabel('Amplitude');
title('y(n)');