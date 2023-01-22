clc;
clear;
t = 0:0.001:1;
fc = input('Enter the frequency of carrier signal=> ');
fm = input('Enter the frequency of message signal=> ');
a = input('Enter the amplitude of carrier signal=> ');
b = input('Enter the Amplitude of meesgae signal (< carrier)=> ');
vc = a.*sawtooth(2*pi*fc*t);
vm = b.*sin(2*pi*fm*t);
n = length(vc);
for i=1:n
    if vm(i)>=vc(i)
        pwm(i) = 1;
    else
        pwm(i) = 0;
    end
end
subplot(3,1,1);
plot(t, vm, 'black');
xlabel('Time');
ylabel('Amplitude');
title('Message Signal');
legend('Message Signal');
grid on;

subplot(3,1,2);
plot(t, vc);
xlabel('sample');
ylabel('Amplitude');
title('Carrier Signal');
legend('Carrier Signal');
grid on;

subplot(3,1,3);
plot(t,pwm,'r');
title('PWM');
axis([0 1 0 1.1]); %to keep the pwm visible during plotting.
