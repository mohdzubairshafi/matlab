clc;
clear;
A = 4;
t = 0:0.001:1;
f1 = input('Carrier Sine wave frequency= ');
f2 = input('Message Frequency= ');
x = A.*sin(2*pi*f1*t);
y = A.*sin(2*pi*f1*t+pi);
subplot(4,1,1);
plot(t,x);
xlabel('Time');
ylabel('Amplitude');
title('Carrier wave');
grid on;

subplot(4,1,2);
plot(t,y);
xlabel('Time');
ylabel('Amplitude');
title('Carrier wave with pi phase shift');
grid on;

m = A/2.*square(2*pi*f2*t) + A/2;
subplot(4,1,3);
plot(t,m);
xlabel('Time');
ylabel('Amplitude');
title('Message Signal');
grid on;

n = length(t);
for i=1:n
    if m(i)==0
        f(i)=y(i);
    else
        f(i)=x(i);
    end
end
subplot(4,1,4);
plot(t,f,'r');
axis([0 1 -6 6]);
xlabel('t');
ylabel('y');
title('Phase-Shift keying signal');
grid on;

