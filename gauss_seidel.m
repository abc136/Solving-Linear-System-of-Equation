% programme de la méthode de gauss-seidel // est une méthode itérative
% solution approchée
function x=gauss_seidel(a,b,p,delta,max1);
n=length(b);
for k=1:max1;
    for j=1:n
        if j==1
            x(1)=(b(1)-a(1,2:n)*p(2:n))/a(1,1);
        elseif j==n
             x(n)=(b(n)-a(n,1:n-1)*(x(1:n-1))')/a(n,n);
        else
            x(j)=(b(j)-a(j,1:j-1)*x(1:j-1)a(j,j+1:n)*p(j+1:n))/a(j,j);
        end
    end
    err=abs(norm(x'-p));
    relerr=err/(norm(x)+eps);
    p=x';
    if (err<delta)|(relerr<delta)
        break
    end
    x=x;
    k
end
x=x;
k
        
end