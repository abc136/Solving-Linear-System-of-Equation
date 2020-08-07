close all;clear all;clc
% donnée  à saiser
a=[5 1 3;2 -8 1;5 7 13];
b=[1;1;1];
p=[0;0;0];
delta=0.001;
max1=20;
%test bunch
x=jacobi(a,b,p,delta,max1);
x=gaussseidel(a,b,p,delta,max1);

%x(k+1)=T*x(k)+V

d=diag(diag(a)); % pour extraire les diagonaux
l=-(tril(a)-d); % pour extraire mts
u=-(triu(a)-d); % pour extraire mti
lplusu=-a+d;  % autre method pour calculer l+u
tj=inv(d)*lplusu; % la matrice de jacobi
norm(tj,inf); %la norm infini
norm(tj,1);   %la norm 1
norm(tj,2);   %la norm 2
tg=inv(d-l)*u; % la matrice T
norm(tg,inf)  %la norm infini
norm(tg,1)    %la norm 1
norm(tg,2)    %la norm 2
xx=eig(tg)    % les valeur propres de T
max(abs(xx))  % le rayon spectrale pour tester la convergence