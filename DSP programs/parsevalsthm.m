clc;
clear all;
close all;


x= input('Enter the sequence x[n]:');
y= input('Enter the sequence y[n]:');

N1=length(x);
N2=length(y);
N=max(N1,N2);
X=zeros(1,N);
Y=zeros(1,N);
Z=zeros(1,N);

if N1>N2
    for n=N2+1:N1
        y(n) = 0;
    end;
elseif N2>N1
    for n=N1+1:N2
        x(n)=0;
    end;
end;

y1= conj(y);
disp('L.H.S');
z=0;
for n=1:N
    z=z+x(n)*y1(n);
end;

for k=1:N
for n=1:N
X(k)=X(k)+(x(n)*exp(-1j*2*pi*(n-1)*(k-1)/N));
Y(k)=Y(k)+(y(n)*exp(-1j*2*pi*(n-1)*(k-1)/N));
end;
end;

disp('X(k)');
for k=1:N
disp(X(k));
end;
disp('Y(k)');
for k=1:N
disp(Y(k));
end;

Y2= conj(Y);
disp('[Y(k)]*');
for k=1:N
disp(Y2(k));
end;
z1=0;
disp('R.H.S');
for k=1:N
    z1=z1+(X(k)*Y2(k))/N;
end;
disp(z1);
ss



