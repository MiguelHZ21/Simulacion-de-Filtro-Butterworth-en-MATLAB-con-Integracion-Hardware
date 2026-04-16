function dx =FUNCION_ODE45(t,x)
R1=120000;
R2=1800;
C1=470*(10^-6);
C2=2.2*(10^-6);
P=R1*C1*R2*C2;
Q=R1*C2+R2*C2;
U=5;
dx=zeros(2,1);
dx(1)=x(2);
dx(2)=-1/P*x(1)-Q/P*x(2)+U/P;
end
