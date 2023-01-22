clc;
clear;
fc1 = input('Enter the frequency of first sine wave carrier high frequency: ');
fc2 = input('Enter the frequency of second sine wave carrier lower frequency: ');
fp = input('Enter the freq. of periodic binary pulse (message): ');
amp = 2;
a = 0.5;
t = 0:0.001:1; %For setting sampling interval
c1 = amp.*sin(2*pi*fc1*t); %First carrier sine wave
c2 = amp.*sin(2*pi*fc2*t); %second carrier sine wave
subplot(5,1,1);
plot(t,c1);
xlabel('Time');
ylabel('Amplitude');
title('Carrier 1 wave');
subplot(5,1,2);
plot(t,c2,'r');
xlabel('Time');
ylabel('Amplitude');
title('Carrier 2 wave');
m = a.*square(2*pi*fp*t)+a;
subplot(5,1,3);
plot(t,m);
xlabel('Time');
ylabel('Amplitude');
title('Binary Message Pulses');
n = length(t);
for i=1:n
    if m(i)==0 
        f(i)=c2(i);
    else
        f(i)=c1(i);
    end
end
subplot(5,1,4);
plot(t,f,'m');
xlabel('Time');
ylabel('Amplitude');
title('FSK (frequency shift keying modulated wave)');
