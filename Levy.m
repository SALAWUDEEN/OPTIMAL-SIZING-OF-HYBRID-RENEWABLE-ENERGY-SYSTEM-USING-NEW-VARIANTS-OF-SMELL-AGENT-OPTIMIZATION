function s=Levy(x,sigma,beta,best)
[a,b]=size(x);
for i=1:a
%     for j=1:b
        s=x(i,:);
        u=randn(size(s)).*sigma;
        v=randn(size(s));
        step=u./abs(v).^(1/beta);
        stepsize=0.01*step.*(s-best);
        s=s+stepsize.*randn(size(s));
        
%     end
end