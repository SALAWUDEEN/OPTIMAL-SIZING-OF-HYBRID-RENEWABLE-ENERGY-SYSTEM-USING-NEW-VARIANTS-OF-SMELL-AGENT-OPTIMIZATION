%This function is used to calculate the Wind Turbine
%System Power
function Pw=WindPower(V)
Pr=1;% In kW
Vci=2.5;% In m/s
Vco=13;% In m/s
Vr=11; % In m/s
[a,b]=size(V);
for t=1:a
    if V(t)<=Vci || V(t) >= Vco
        Pw(t)=0;
    end
    if V(t)>Vci && V(t)<Vr
        Pw(t)=Pr.*(V(t)-Vci)/(Vr-Vci);
    end
    if V(t)>Vr && V(t)<Vco
        Pw(t)=Pr(t);
    end
end