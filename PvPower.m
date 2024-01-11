%This function is used to calculate the PV
%System Power
function PPv=PvPower(Ins)
PVeff=0.157;%PV efficiency
Apv=1.656;%Area covered by PV
[a,b]=size(Ins);
for t=1:a
    PPv(t)=PVeff.*Apv.*Ins(t);
end