%Sampling

f1=input('Enter the highetst frequency of 1st singnal f1 in Hz:');
f2=input('Enter the highetst frequency of 2nd singnal f2 in Hz:');

freq= max(f1,f2);

%Under sampling
fs=freq/2;
t=0:1/fs:0.1;
x= cos(2*pi*f1*t)+cos(2*pi*f2*t);
XK = fft(x); %Fast Fourier transform
f=[0:length(XK)-1]*fs/length(XK);

figure(1);
plot(f,abs(XK));
% axis([-500,1500,0,120]);  %aliasing at 0
xlabel('frequency');
ylabel('Amplitude');
title('UNDER SAMPLING');

%critical sampling

fs=freq;
t=0:1/fs:0.1;
x= cos(2*pi*f1*t)+cos(2*pi*f2*t);
XK = fft(x);
f=[0:length(XK)-1]*fs/length(XK);

figure(2);
plot(f,abs(XK));
xlabel('frequency');
ylabel('Amplitude');
title('CRITICAL SAMPLING');

%over sampling
fs=2*freq;
t=0:1/fs:0.1;
x= cos(2*pi*f1*t)+cos(2*pi*f2*t);
XK = fft(x);
f=[0:length(XK)-1]*fs/length(XK);

figure(3);
plot(f,abs(XK));
xlabel('frequency');
ylabel('Amplitude');
title('OVER SAMPLING');


