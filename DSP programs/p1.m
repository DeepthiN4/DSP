clc;
clear all;
close  all;
n=0:0.01:1;
f=input('Enter the value of frequency');
a=input('Enter the value of amplitude');

subplot(2,2,1);
y=a*sin(2*pi*f*n);
stem(n,y,'r');
xlabel('time');
ylabel('amplitude');
title('sine wave')
grid on;
subplot(2,2,2);
z=a*cos(2*pi*f*n);
stem(n,z);
xlabel('time');
ylabel('amplitude');
title('cosine wave')
grid on;
subplot(2,2,3);
s=a*square(2*pi*f*n);
stem(n,s);
xlabel('time');
ylabel('amplitude');
title('square wave')
grid on; 






subplot(2,2,4);
stem(n,n);
xlabel('time');
ylabel('amplitude');
title('ramp wave')
