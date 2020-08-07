function y = mts(a,b)
n=length(b);
y(n)=b(n)/a(n,n);
for i=(n-1):-1:1
    s=0;
    for j=i+1:n
       s=s+a(i,j)*y(j); 
    end
   y(i)=(1/a(i,i))*(b(i)-s); 
end
end

