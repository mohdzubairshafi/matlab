clc;
clear all;
close all; 
t=0 : 1/1e3 : 1; 
d=0 : 1/5 :1; 
x=sin(2*pi/4*2*t);		%message signal
figure ;
subplot (3, 1, 1) 
plot (x);
title('message');
xlabel('time'); 		ylabel('amplitude');
y=pulstran(t,d, 'rectpuls' ,0.1);
subplot (3, 1, 2) 
plot (y);
title('pulse input');
xlabel('time'); 		ylabel('amplitude');
z=x.*y;		% PAM output
subplot (3 ,1 ,3)
plot(z);
title('PAM modulation');
xlabel('time'); 
ylabel('amplitude');
