function w= wave1(a,f)
t=0:0.001:1;
y= a*sin(2*pi*f*t);
        plot(t,y);
        xlabel('time');
        ylabel('amplitude');
        title('sine wave');
end