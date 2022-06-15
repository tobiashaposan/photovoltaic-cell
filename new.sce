clf;// clear figures  
v = 0:1e-4:50.0;
K = 1.38e-23;
q = 1.6e-19;
A = 1;
NS = 36;
G = 1000;
TC= 10;
TC1= 30;
TC2= 50;
TC3= 70;
TC4= 90;
ucc = 3e-3;

//for A = 1:0.25:2.5


//for TC= 10:10:60

TK = 273.15 + TC;
Irs=1.23/(exp(q*21.6/(NS*K*A*TK))-1);
Is=Irs*(TK/298.15)^3*exp(q*1.1*((1/298.15)-(1/TK))/(K*A));
ip = exp(((34.4-(10256.41/TK))));
n = 1.23 + ucc*(TK - 298.15);
Iph = (G/1000)*n; //corriente fotogenerda
c = (q)/(NS*K*A*TK);
i = Iph - Is*(exp(c*(v)) - 1); 
p = i.*v;// potencia // power

TK = 273.15 + TC1;
Irs1=1.23/(exp(q*21.6/(NS*K*A*TK))-1);
Is1=Irs1*(TK/298.15)^3*exp(q*1.1*((1/298.15)-(1/TK))/(K*A));
ip = exp(((34.4-(10256.41/TK))));
n = 1.23 + ucc*(TK - 298.15);
Iph = (G/1000)*n; //corriente fotogenerda
c1 = (q)/(NS*K*A*TK);
i1 = Iph - Is1*(exp(c1*(v)) - 1); 
p = i.*v;// potencia // power

TK = 273.15 + TC2;
Irs2=1.23/(exp(q*21.6/(NS*K*A*TK))-1);
Is2=Irs2*(TK/298.15)^3*exp(q*1.1*((1/298.15)-(1/TK))/(K*A));
ip = exp(((34.4-(10256.41/TK))));
n = 1.23 + ucc*(TK - 298.15);
Iph = (G/1000)*n; //corriente fotogenerda
c2 = (q)/(NS*K*A*TK);
i2 = Iph - Is2*(exp(c2*(v)) - 1); 
p = i.*v;// potencia // power

TK = 273.15 + TC3;
Irs3=1.23/(exp(q*21.6/(NS*K*A*TK))-1);
Is3 =Irs3*(TK/298.15)^3*exp(q*1.1*((1/298.15)-(1/TK))/(K*A));
ip = exp(((34.4-(10256.41/TK))));
n = 1.23 + ucc*(TK - 298.15);
Iph = (G/1000)*n; //corriente fotogenerda
c3 = (q)/(NS*K*A*TK);
i3 = Iph - Is*(exp(c3*(v)) - 1); 
p = i.*v;// potencia // power

TK = 273.15 + TC4;
Irs4=1.23/(exp(q*21.6/(NS*K*A*TK))-1);
Is4=Irs4*(TK/298.15)^3*exp(q*1.1*((1/298.15)-(1/TK))/(K*A));
ip = exp(((34.4-(10256.41/TK))));
n = 1.23 + ucc*(TK - 298.15);
Iph = (G/1000)*n; //corriente fotogenerda
c4 = (q)/(NS*K*A*TK);
i4 = Iph - Is*(exp(c4*(v)) - 1); 
p = i.*v;// potencia // power

plot(v,i);
plot(v,i1);
plot(v,i2);
plot(v,i3);
plot(v,i4);
xlabel('Voltage')
ylabel('Current')

title('Voltage against power at different temperature (ᵒC)')
//range
//for A = 1:0.25:2
   // a=gca();
    //a.box="on"
    //a.data_bounds=[0,0;30,60];
//end
