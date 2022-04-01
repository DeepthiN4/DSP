N=input('ENTER THE FILTER ORDER N = ');
fs=input('ENTER THE SAMPLING FREQUENCY fs = ');
wc=input('ENTER THE CUT-OFF FREQUENCY wc = ');

[na,da]=butter(N,wc,'s');
[n,d]=impinvar(na,da,fs);
[h,f]=freqz(n,d,512,fs);
gain=20*log10(abs(h));
subplot(2,1,1);
plot(f/fs,gain);
xlabel('Frequency');
ylabel('Magnitude');
title('AMPLITUDE RESPONSSE');
subplot(2,1,2);
zplane(n,d);
z=roots(n); 
p=roots(d);
xlabel('Real part');
ylabel('Imaginary part');
title('POLE-ZERO PLOT');
disp(tf(na,da));
fvtool(n,d);