clc;
clear;
t = 0:0.001:10;
b = 2;
fc = 4; %sinusoidal signal
fm = 1; % pulse signal
a = b*(sin(2*pi*fc*t));
subplot(3,1,1);
plot(t,a);
title('Carrier Signal');
xlabel('Time');
ylabel('Amplitude');

y = (b/2)*square(2*pi*fm*t,50)+(b/2);
y1 = a.*y;
subplot(3,1,2);
plot(t,y,'r');
title('Message Signal');
xlabel('Time');
ylabel('Amplitude');
subplot(3,1,3);
plot(t,y1);
title('Amplitude Shift Keying Signal');
xlabel('Time');
ylabel('Amplitude');
