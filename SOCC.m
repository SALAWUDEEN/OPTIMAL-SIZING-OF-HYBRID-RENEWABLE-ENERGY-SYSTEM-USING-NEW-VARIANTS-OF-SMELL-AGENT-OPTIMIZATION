function Y=SOCC(Ppv,Pwt,Pl)
[d,m]=size(Pl);
omega=2*10^(-4);%Hourly self discharge rate
Effinv=0.95;% Inverter Efficiency
Effbc=0.85;% Charge efficiency of battery bank
Y=0;
% for i=2:d
%     Y(i)=Y(i-1)*(1-omega)+((Pwt(i)+Ppv(i))-(Pl(i)/Effinv))*Effbc;
% end
    Y=Y*(1-omega)+((Pwt+Ppv)-(Pl/Effinv))*Effbc;
