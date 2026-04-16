close all;
clear all;
clc;
%Tiempo de simulacion
tsim=[0 10];
Xo=[0 0];
[t,Vo]=ode45(@FUNCION_ODE45,tsim,Xo);
plot(t,Vo(:,1),'r',"LineWidth",2);
title("Metodo Con ODE45");
ylabel("Voltaje(Volt)");
xlabel("Tiempo(s)");
legend("Volataje Vo");
grid on;
