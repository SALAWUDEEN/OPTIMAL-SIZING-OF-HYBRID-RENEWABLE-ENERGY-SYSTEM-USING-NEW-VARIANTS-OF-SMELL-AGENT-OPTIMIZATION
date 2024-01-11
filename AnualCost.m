function [TAC,x]=AnualCost(x)
%Note:
%x: has 3 column,
                %x(:,1)=Nwt
                %x(:,2)=Npv,
                %x(:,3)=Nbat
%% Defind Cost Parameters

j=0.05;% Intrest Rate
n=25; % System Life Span
CRF=(j*(1+j)^n)/(((1+j)^n)-1);
% Cwt=1250;% Unit Cost of Wind Turbine
Cwt=1000610;% Unit Cost of Wind Turbine
% Cpv=240;% Unit Cost of PV Pannels
Cpv=136363.6;% Unit Cost of PV Pannels Naira
% Pbat=170;% Battery Price
Pbat=127242;% Battery Price
% Pconv=2000;% Converter/Inverter Price
Pconv=210868.56;% Converter/Inverter Price

% Cmain_wt=40;% Maintanace cost of wind turbine
Cmain_wt=18400;% Maintanace cost of wind turbine
% Cmain_pv=21;% Maintanace cost of PV Pannels
Cmain_pv=9660;% Maintanace cost of PV Pannels
% Cmain_bat=20;% Maintanace cost of bat Pannels
Cmain_bat=9200;% Maintanace cost of bat Pannels

Cbat=BatteryWorth(Pbat,j);
Nconv=3;%Number of Converters
Ccon=InverterWorth(Pconv,j);
Ccpt=CRF*(x(:,1)*Cwt+x(:,2)*Cpv+x(:,3)*Cbat+Nconv*Ccon);
Cmtn=Cmain_wt*x(:,1)+Cmain_pv*x(:,2)+Cmain_bat*x(:,3);
TAC=Ccpt+Cmtn;










