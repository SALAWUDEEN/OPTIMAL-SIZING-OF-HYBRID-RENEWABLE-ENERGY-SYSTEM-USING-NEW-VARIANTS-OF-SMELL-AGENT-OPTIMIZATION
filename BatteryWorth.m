function Cbat=BatteryWorth(Pb,b)
bat=0;
for k=5:5:20
    bat=bat+1/((1+b)^k);
end
Cbat=Pb*bat;
