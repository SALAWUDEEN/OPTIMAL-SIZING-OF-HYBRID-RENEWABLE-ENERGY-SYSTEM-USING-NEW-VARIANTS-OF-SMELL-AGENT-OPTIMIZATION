function Y=SOCD(Ppv,Pwt,Pl)
global Effinv
[d,m]=size(Pl);
omega=2*10^(-4);%Hourly self discharge rate
Effinv=0.95;% Inverter Efficiency
Effbd=1;% Discharge efficiency of battery bank
Y=0;
% for i=2:d
%     Y(i)=Y(i-1)*(1-omega)-((Pl(i)/Effinv)-(Pwt(i)+Ppv(i)))*Effbd;
% end
    Y=Y*(1-omega)-((Pl/Effinv)-(Pwt+Ppv))*Effbd;
