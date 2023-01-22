clc;
clear ;
N=10;
n=0:N-1;n1=0:0.1:5;f=1;
a=sin(2*pi*f*n1);
b=cos(2*pi*f*n1);
x=n;
y=(n==0);
z=(n>=0);
c=exp(n);
subplot(321),stem(a);
axis([0 20 -1 1]);
xlabel('Time')
ylabel('Amplitude');
title('Discrete Sine Wave');


subplot(322),
stem(b);axis([0 20 -1 1]);
xlabel('Time');
ylabel('Amplitude');
title('Discrete Cosine Wave')

subplot(323), stem(n,x);
axis([0 10 0 10]);
xlabel('Time');
ylabel('Amplitude');
title('Discrete Unit Ramp Signal')


subplot(324), stem(n,c);
xlabel('Time');
ylabel('Amplitude');
title('Discrete Exponential Signal')

subplot(325), stem(n,y);
axis([-4 4 0 2]);
xlabel('Time');
ylabel('Amplitude');
title('Discrete Unit Impulse Signal')

subplot(326), stem(n,z);
axis([-1 5 -1 2]);
xlabel('Time');
ylabel('Amplitude');
title('Discrete Unit Step Signal')
