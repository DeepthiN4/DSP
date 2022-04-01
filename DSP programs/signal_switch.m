% Display signals to the user based on options using switch.

function sw= signal_switch()
n=input('1.Sine Wave\n2.Cosine Wave\n Choose your option:');

switch n
    case 1
        f=input('Enter the frequency: ');
        a=input('Enter the value of amplitude:');
        wave1(a,f);
     
    case 2
        f=input('Enter the frequency: ');
        a=input('Enter the value of amplitude:');
        wave2(a,f);
      
end

    