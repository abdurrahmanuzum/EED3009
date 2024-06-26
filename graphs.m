close all;
clear;
clc;


pulse_period = 1e-3;
dur = 50*pulse_period;
points = 100e3;
t = linspace(0, dur, points);

ramp = (1/pulse_period) * mod(t+pulse_period/2, pulse_period); 


duty = 0.1;

pulse = 1 - (ramp > duty); 

A = 1.5;
f_sin = 40e3;
wave = A*sin(2*pi*f_sin*t);

signal = wave .* pulse;

siglp = signal - R*C*


% 
% hold on;
% plot(t, signal);
% ylim([-2 2]);
% set(gcf,'position',[0,0,500,250])