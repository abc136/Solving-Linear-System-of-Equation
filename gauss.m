% programme de la m�thode de gauss // est une m�thode direct // solution exacte
function x=gauss(a,b)
b1=[a b];
[n,t]=size(b1);
u=b1;
% triangularisaton de la matrice augment�e
for k=1:n-1;
    for i=k:n-1;
        m=u(i+1,k)/u(k,k);
        for j=1:t;
            u(i+1,j)=u(i+1,j)-m*u(k,j);
        end
    end
end
% fin de la triangularisaton de la matrice augment�e     
% resolution de la mts
i=n;
x(i,1)=u(i,t)/u(i,i);
for i=n-1:-1:1; s=0;
    for k=n:-1:i+1; s=s+u(i,k)*x(k,1);
    end
    x(i,1)=(u(i,t)-s)/u(i,i);
end
% fin resolution de la mts
% affichage des resultats

%b1 % la matrice augment�e
%u % mts
%x % la solution
end