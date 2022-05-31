clf;
// constants
v = 0:1e-4:30.0;
K = 1.38e-23;
q = 1.6e-19;
A = 1.00;
NS = 36;
G = 1000; 
TC= 25; 
ucc = 3e-3;

//range
for A = 1:0.25:2
    a=gca();
    a.box="on"
    a.data_bounds=[0,0;30,60];
end


//calculation
TK = 273.15 + TC;
Irs=1.23/(exp(q*21.6/(NS*K*A*TK))-1);
Is=Irs*(TK/298.15)^3*exp(q*1.1*((1/298.15)-(1/TK))/(K*A));
ip = exp(((34.4-(10256.41/TK))));
n = 1.23 + ucc*(TK - 298.15);
Iph = (G/1000)*n; 
c = (q)/(NS*K*A*TK);
i = Iph - Is*(exp(c*(v)) - 1);
p = i.*v;

//plot
//graph 1 -> IV curve
plot(v,i); 
xlabel('Voltage');
ylabel('Current density');
title('Plot')
//a=gca();
//a.box="on"
//a.data_bounds=[0,0;30,60];
set(gca(),"auto_clear","off")//hold on

