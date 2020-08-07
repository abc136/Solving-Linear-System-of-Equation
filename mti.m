function y = mti(a,b)
n=length(b);
y(1)=b(1)/a(1,1);
for i=2:n
    s=0;
    for j=1:i-1
       s=s+a(i,j)*y(j); 
    end
   y(i)=(1/a(i,i))*(b(i)-s); 
end
end