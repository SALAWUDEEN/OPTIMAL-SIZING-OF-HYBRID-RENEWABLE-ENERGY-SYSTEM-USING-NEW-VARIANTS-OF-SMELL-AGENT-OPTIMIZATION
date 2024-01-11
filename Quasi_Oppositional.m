function z=Quasi_Oppositional(X,LB,UB)

[a,b]=size(X);
for n=1:a
        x(n,:)=LB+UB-X(n,:);
        c(n,:)=(LB+UB)/2;
        if X(n,:)<c(n,:)
            xqo(n,:)=c(n,:)+(x(n,:)-c(n,:))*rand;
        else
            xqo(n,:)=x(n,:)+(c(n,:)-x(n,:))*rand;
        end
end
z=xqo;