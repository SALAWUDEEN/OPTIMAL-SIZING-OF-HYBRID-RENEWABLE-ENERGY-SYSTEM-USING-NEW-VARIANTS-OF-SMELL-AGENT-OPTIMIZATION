function R=LPS(Pl,Ppv,Pwt,SOC)
Effinv=0.95;
[a,b]=size(Pl);
% X=0;
% for t=1:a
%     R(t)=Pl(t)-(Ppv(t)+Pwt(t)+SOC(t))*Effinv;
% end
    R=(Pl-(Ppv+Pwt+SOC)*Effinv)*10^-3;

