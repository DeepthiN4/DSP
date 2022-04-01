function  wave3()
t=0:0.001:1;
y= square(2*pi*30*t);
        plot(t,y);
        xlabel('time');
        ylabel('amplitude');
        title('square wave');
end