close all;
clear all;
clc;
R1=120000;
R2=1800;
C1=470*(10^-6);
C2=2.2*(10^-6);
P=R1*C1*R2*C2;
Q=R1*C2+R2*C2;
U=5;%Entrada del sistema
Tp=0.01;% Avance
t=0:Tp:10;%Tiempo
L=length(t);
%Condiciones iniciales 
Vo(1)=0;
Vo_p(1)=0;
Vo_pp(1)=0;
for j=1:1:L-1
    Vo_pp(j+1)=(-Q/P)*Vo_p(j)-(1/P)*Vo(j)+(1/P)*U;
    Vo_p(j+1)=Vo_p(j) + Tp*Vo_pp(j);
    Vo(j+1)=Vo(j)+  Tp*Vo_p(j);
end
plot(t,Vo,'r',"LineWidth",2);
title('Metodo Ecuacion Diferencial');
ylabel("Voltaje(Volt)");
xlabel("Tiempo(s)");
legend("Volataje Vo");
grid on;