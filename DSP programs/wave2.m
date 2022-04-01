function w= wave2(a,f)
t=0:0.001:1;
y= a*cos(2*pi*f*t);
        plot(t,y);
        xlabel('time');
        ylabel('amplitude');
        title('cosine wave');
end