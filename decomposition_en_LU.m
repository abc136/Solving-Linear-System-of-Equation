function x=decomposition_en_LU(a,b)
[l,u,p]=lu(a);
%y=inv(l)*p*b;
%x=inv(u)*y;
y=mti(l,p*b);
x=mts(u,y);
end