function [ys,params,check] = TANK_NK(ys,exo,M_,options_)
%function [ys,check] = TANK_NK(ys,exo)



NumberOfParameters = M_.param_nbr;
for ii = 1:NumberOfParameters
  paramname = M_.param_names{ii};
  eval([ paramname ' = M_.params(' int2str(ii) ');']);
end
% initialize indicator
check = 0;



%% Enter model equations here

PIN=1-PIS-PIH;
lambdans= ((1-lambdass)*PIS- lambdahs*PIH)/PIN;
lambdasn= 1 - lambdass - lambdash;
lambdahn= ((1-lambdann)*PIN - lambdasn*PIS)/PIH;
lambdanh= 1 - lambdans - lambdann;
lambdahh= 1 - lambdahs - lambdahn;
Trans=1;
P=1;
Pr=1;
ZI=1;
Z=1;
EM=1;
PIE=PIEss;
R=1/betta;
Rn=PIE/betta;
MC=(zzeta-1)/zzeta;

alp=1-LSss;%/MC; %capital share
RK=(R-1+delta); 



H=Hss;
HH=H;
HS=H;
HN=H;


K=(RK/(MC*alp))^(1/(alp-1))*H;
YW=(H)^(1-alp)*K^alp;

W=MC*(1-alp)*(H/K)^(-alp);
F=H*((K/H)^alp-(W+RK*K/H));

Y=YW-F;
B=BYss*4*Y;




iy=delta*K/Y;
cy=1-iy-gy;

C=cy*Y;
G=gy*Y;
tax=R*B+G-B; 


MPL=(1-alp)*(H/K)^(-alp);
MPK=alp*(K/(H))^(alp-1);
I=delta*K;
KShare = (RK*K)/Y ; 
IS=I/PIS;
KS=K/PIS;

profits=Y-W*H-RK*K;

CH=C;
CS=C;
CN=C;

taxH=tax;
taxS=tax;
taxN=tax;

ZH=0;

ZN=0;
ZS=1/PIS*(B-(PIN*ZN+PIH*ZH));
BH=PIH*lambdahh*ZH+PIS*lambdash*ZS+PIN*lambdanh*ZN;
BN=PIN*lambdann*ZN+PIS*lambdasn*ZS+PIH*lambdahn*ZH;
BS=PIS*lambdass*ZS+PIN*lambdans*ZN+PIH*lambdahs*ZH;
tauH=CH + taxH - HH*W - (R*(lambdash*(B - PIN*ZN) + PIN*ZN*lambdanh))/PIH;
tauN=HN*W - ZN - taxN - CN + (R*(lambdasn*(B - PIN*ZN) + PIN*ZN*lambdann))/PIN;


LP=1;
LP_obs=log(LP);

tauS=tauH-tauN;

UCH=(CH)^-sigma_c;

UCS=(CS)^-sigma_c;


nuH=(UCH)*(W)/HH^varrho;

UHH=-nuH*HH^varrho; 
nuS=(UCS)*(W)/HS^varrho;
UHS=-nuS*HS^varrho; 
HS_obs=log(HS);

UCN=Pr*(CN)^-sigma_c;
nuN=(UCN)*(W)/HN^varrho;

UHN=-nuN*HN^varrho;





nu=W*(C)^-sigma_c/H^varrho;

S=0;
Sdash=0;
Q=1;
X=1;




PIEW=1;




profitsS=profits/PIS;
LI=W*H;
LShare=W*H/Y;

SB=BYss*4;


Sconst=CS+IS+ZS-(W*HS+RK*KS+R*BS/PIS+profits/PIS -(tauH-tauN)-taxS); %%To double check steady state is correct

Y_obs=log(Y);
C_obs=log(C);
H_obs=log(H);
W_obs=log(W);
PIE_obs=log(PIE);
R_obs=log(R);
Rn_obs=log(Rn);
RK_obs=log(RK+1-delta);
CS_obs=log(CS);
CH_obs=log(CH);
CN_obs=log(CN);
HH_obs=log(HH);
HN_obs=log(HN);

KS_obs=log(KShare);
K_obs=log(K); 
I_obs=log(I);
Q_obs=log(Q);
P_obs=profits/Y;
B_obs=B/Y; 

ZH_obs=0; 
BS_obs=BS/Y;
BH_obs=BH/Y; 
BN_obs=BN/Y; 
ZN_obs=ZN/Y; 
ZS_obs=ZS/Y;

    G_obs=G/Y;
    tax_obs=tax/Y;

LI_obs=log(LI);
LS_obs=log(LShare);
%variables weighted for population shares

HHl_obs=PIH*HH_obs;
HSl_obs=PIS*HS_obs;
HNl_obs=PIN*HN_obs;
ZSl_obs=PIS*ZS_obs;
CSl_obs=PIS*CS_obs;
CHl_obs=PIH*CH_obs;
ZHl_obs=PIH*ZH_obs; 
ZNl_obs=PIN*ZN_obs; 
CNl_obs=PIN*CN_obs;
%% end own model equations

params=NaN(NumberOfParameters,1);
for iter = 1:length(M_.params) %update parameters set in the file
  eval([ 'params(' num2str(iter) ') = ' M_.param_names{iter} ';' ])
end

NumberOfEndogenousVariables = M_.orig_endo_nbr; %auxiliary variables are set automatically
for ii = 1:NumberOfEndogenousVariables
  varname = M_.endo_names{ii};
  eval(['ys(' int2str(ii) ') = ' varname ';']);
end

end