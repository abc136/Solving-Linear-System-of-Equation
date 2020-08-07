% programme de la méthode de Jordan // est une méthode direct // solution exacte
function x=jordan(a,b)
ab=[a b]; % on forme la matrice augmentée
[m,n]=size(ab); % pour lire la taille de la matrice n
for i=1:m
    ab(i,:)=ab(i,:)/ab(i,i);
    for j=1:m
        if j==i; continue;
        end
        ab(j,:)=ab(j,:)-ab(j,i)*ab(i,:);
    end;
end;
x=ab(:,length(b)+1);
end