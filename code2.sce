clf;// clear figures  
v = 0:1e-4:30.0;
K = 1.38e-23; //constante de boltzmann
q = 1.6e-19; //carga del electrón
A = 1.3;  //factor de idealidad del panel
NS = 36;//%número de celdas en serie
G = 1000; //RADIACIÓN DE TRABAJO
TC= 10:10:100; //TEMPERATURA DE TRABAJO
ucc = 3e-3; //Coeficiente de temperatura para la corriente de corto circuito

//for G = 100 : 100 : 1100


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
plot(v,i); //hold on
xlabel('Voltaje')
ylabel('Potencia')

title('Curva del panel solar a diferentes temperaturas en (ºC)')

//end
