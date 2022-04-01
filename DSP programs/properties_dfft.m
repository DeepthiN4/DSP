clc;
clear all;
close all;

% linearity
x1= input('Enter the sequence x1[n]:');
x2= input('Enter the sequence x2[n]:');
a= input('Enter the first constant a:');
b= input('Enter the second constant b:');
N1=length(x1);
N2=length(x2);
N=max(N1,N2);
X1=zeros(1,N);
X2=zeros(1,N);
X3=zeros(1,N);
X=zeros(1,N);

if N1>N2
    for n=N2+1:N1
        x2(n) = 0;
    end;
elseif N2>N1
    for n=N1+1:N2
        x1(n)=0;
    end;
end;

for k=1:N
for n=1:N
x(n)= a*x1(n)+b*x2(n);
X1(k)=X1(k)+(x1(n)*exp(-1j*2*pi*(n-1)*(k-1)/N));
X2(k)=X2(k)+(x2(n)*exp(-1j*2*pi*(n-1)*(k-1)/N));
X3(k)=a*X1(k)+b*X2(k);
end;
end;
disp('DFT[a*x1(n)+b*x2(n)]');
for k=1:N
disp(X3(k));
end;


