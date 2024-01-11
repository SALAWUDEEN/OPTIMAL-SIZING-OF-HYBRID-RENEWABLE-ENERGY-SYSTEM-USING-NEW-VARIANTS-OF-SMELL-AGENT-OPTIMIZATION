function Cinv=InverterWorth(Pin,a)
Conv=0;    
for k=0:10:20
    
%     k=10;
    Conv=Conv+(1/((1+a)^k));
    Cinv=Pin*Conv;
end
    