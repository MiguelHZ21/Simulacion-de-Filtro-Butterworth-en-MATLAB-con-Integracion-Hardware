close all;
clear all;
clc;
R1=120000;
R2=1800;
C1=470*(10^-6);
C2=2.2*(10^-6);
P=R1*C1*R2*C2;
Q=R1*C2+R2*C2;
U=5;
%Espacio de estados
A=[0 1; -1/P -Q/P];
B=[0; 1/P];
C=[1 0];
D=[0];
%Funcion de transferencia
Num=1;
Den=[P Q 1];
G=tf(Num,Den);