% programme de la m�thode de Jordan // est une m�thode direct // solution exacte
function x=jordan(a,b)
ab=[a b]; % on forme la matrice augment�e
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