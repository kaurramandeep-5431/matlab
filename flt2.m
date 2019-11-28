
C1= 1e-9; C2=C1;
R1=120e3; R2 =55e3;
g= linspace(1,100,1000);
alpha =-2*((C2*R2)/(C1*R1));
beta= ((C2*R2)/(C1*R1))*(((C2*R2)/(C1*R1))-1);
y=g.^2+ alpha*g +beta*ones(size(g));
plot(g,y);grid;