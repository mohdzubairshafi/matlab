clc;
clear;
close all;
m=1;
Am=5; %Amp of modulating signal
fa=2000; %frequency of modulating signal
Ta=1/fa;
t = 0:Ta/999:6*Ta;
ym = Am*sin(2*pi*fa*t);
subplot(3,1,1);
plot(t,ym);
title('modulating signal');
%carrier signal
Ac = Am/m;
fc = fa*10;
Tc = 1/fc;
ye = Ac*sin(2*pi*fc*t);
subplot(3,1,2);
plot(t,ye);
grid on;
title('carrier signal');
%AM modulation
y = Ac+(1+m*sin(2*pi*fa*t)).*sin(2*pi*fc*t);
subplot(3,1,3);
plot(t,y);
title('amplitude modulation signal');
grid on;
