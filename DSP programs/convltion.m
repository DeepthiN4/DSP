%Linear convolution

clc;
close all;
clear all;
%x= [1 2 3 ];
%h= [2 5 5];
%y = conv(x,h);
%disp('y=');disp(y);
%stem(y);

%correlation

x= input('Enter the sequence of x[n]:');

nxx = conv(x,fliplr(x));% auto-correlation
disp('nxx= ');
disp(nxx);
y= input('Enter the sequence y[n]:');
nxy = conv(x,fliplr(y));% cross-correlation
disp('nxy= ');
disp(nxy);

subplot(2,2,1);
stem(x);
title('x');

subplot(2,2,2);
stem(nxx);
title('nxx');

subplot(2,2,3);
stem(y);
title('y');

subplot(2,2,4);
stem(nxy);
title('nxy');

