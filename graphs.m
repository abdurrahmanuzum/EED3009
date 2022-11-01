close all;
clear;
clc;


pulse_period = 1e-3;

t = linspace(0, 2*pulse_period, 10e3);

ramp = (1/pulse_period) * mod(t+pulse_period/2, pulse_period); 


duty = 0.1;

pulse = 1 - (ramp > duty); 

A = 1.5;
f_sin = 40e3;
wave = A*sin(2*pi*f_sin*t);

signal = wave .* pulse;


sigsq = 2 * signal .* signal;
sigenv1 = sqrt(lp1(downsample(sigsq,1)));

plot(t, sigenv1);


% 
% hold on;
% plot(t, signal);
% ylim([-2 2]);
% set(gcf,'position',[0,0,500,250])