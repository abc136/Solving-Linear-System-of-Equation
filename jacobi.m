% programme de la m�thode de Jacobi // est une m�thode it�rative //
% solution approch�e
function x=jacobi(a,b,p,delta,max1)
n=length(b);
for k=1:max1;
    for j=1:n
        x(j)=(b(j)-a(j,[1:j-1,j+1:n])*p([1:j-1,j+1:n]))/a(j,j);
    end
    err=abs(norm(x'-p));
    relerr=err/(norm(x)+eps);
    p=x';
    if (err<delta)||(relerr<delta)
        break
    end
    x=x;
    k
end
x=x';
k % pour afficher le nombre it�ration
end