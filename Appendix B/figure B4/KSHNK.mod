%%Replication code for Monetary-Fiscal Interaction and the Liquidity of Government Debt
%3 Agents Model
%% C. Cantore & E. Leonardi
%% 2024

%%Notation
%% Variables with S at the end represent Capitalists
%% Variables with H at the end represent Hand to Mouth
%% Variables with H at the end represent Savers


%%Note that, differently from the manuscript, here real and nominal interest rates on bonds are defined in gross terms.


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%DECLARATION OF ENDOGENOUS VARIABLES%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
var 
    UCS           $u^{\prime}(c^K)$            (long_name='Marginal Utility of Consumption, Capitalists')
    UCH           $u^{\prime}(c^H)$            (long_name='Marginal Utility of Consumption, Hand to Mouth')
    UCN           $u^{\prime}(c^S)$            (long_name='Marginal Utility of Consumption, Savers')
    UHH           $u^{\prime}(n^H)$            (long_name='Marginal Utility of Leisure, Hand to Mouth')
    UHN           $u^{\prime}(n^S)$            (long_name='Marginal Utility of Leisure, Savers')
    CS            $c^K$                        (long_name='Consumption, Capitalists')
    CH            $c^H$                        (long_name='Consumption, Hand to Mouth')
    CN            $c^S$                        (long_name='Consumption, Savers')
    HH            $n^H$                        (long_name='Hours, Hand to Mouth')
    HS            $n^K$                        (long_name='Hours, Capitalists')
    HN            $n^S$                        (long_name='Hours, Savers')
    UHS           $u^{\prime}(n^K)$            (long_name='Marginal Utility of Leisure, Capitalists')
    H             $n$                          (long_name='Aggregate Hours') 
    R             $r$                          (long_name='Real Interest Rate')
    Rn            $R$                          (long_name='Nominal Interest Rate')
    PIE           $\Pi$                        (long_name='Inflation')
    W             $w$                          (long_name='Real Wage')
    Y             $y$                          (long_name='Real Output')
    YW            ${y^m}$                      (long_name='Real Wholesale Output')
    MPL           $mpl$                        (long_name='Marginal Product of Labor')
    MC            $mc$                         (long_name='Real Marginal Costs')
    C             $c$                          (long_name='Consumption')
    Z             $z$                          (long_name='Labor Augmenting shock process')
    profits       $d$                          (long_name='Profits - aggregate')
    profitsS      $d^K$                        (long_name='Profits - Capitalists')
    LI            $li$                         (long_name='Labor Income')
    LShare        $ls$                         (long_name='Labor Share')
    K             ${k}$                        (long_name='Capital Stock')
    MPK           ${mpk}$                      (long_name='Marginal Product of Capital')
    RK            ${r^K}$                      (long_name='Rental Rate of Capital')
    I             ${i}$                        (long_name='Investment')
    IS            ${i^K}$                      (long_name='Investment, Capitalists')
    KS            ${k^K}$                      (long_name='Capital Stock, Capitalists')
    KShare        ${ks}$                       (long_name='Capital Share')
    LP            ${lp}$                       (long_name='Liquidity premium')
    S             ${s}$                        (long_name='Investment Ajustment costs function')
    X             ${x}$                        (long_name='Investment today over Investment previous period')
    Sdash         ${s^{\prime}}$               (long_name='Investment Ajustment costs function first derivative')
    Q             ${q}$                        (long_name='Tobin s Q')    
    P             ${P}$                        (long_name='Price level')
    G             $G$                          (long_name='Government Spending')
    tax           $T$                          (long_name='Lump Sum Taxes')
    taxS          $T^U$                        (long_name='Lump Sum Taxes, Capitalists')
    taxH          $T^H$                        (long_name='Lump Sum Taxes, Hand to Mouth')
    taxN          $T^S$                        (long_name='Lump Sum Taxes, Savers')
    BS            $B^{K}$                      (long_name='Government bonds per capita beginning of period, Capitalists')
    BH            $B^{H}$                      (long_name='Government bonds per capita beginning of period, Hand to Mouth')
    BN            $B^{S}$                      (long_name='Government bonds per capita beginning of period, Savers')
    ZH            $Z^{H}$                      (long_name='End of period per capita real values of bonds, Hand to Mouth')
    ZS            $Z^{K}$                      (long_name='End of period per capita real values of bonds, Capitalists')
    ZN            $Z^{S}$                      (long_name='End of period per capita real values of bonds, Savers')
    B             $B$                          (long_name='Government debt')
    SB            $S^b$                        (long_name='Debt to GDP')
%% Variables in deviations from ss
    Y_obs C_obs H_obs W_obs PIE_obs R_obs Rn_obs CS_obs CH_obs P_obs B_obs ZS_obs G_obs tax_obs LI_obs LS_obs ZH_obs KS_obs K_obs I_obs HH_obs HS_obs HN_obs CSl_obs CHl_obs  ZHl_obs ZSl_obs BH_obs BS_obs ZN_obs BN_obs ZNl_obs CNl_obs  HHl_obs HSl_obs HNl_obs CN_obs Sconst RK_obs LP_obs EM Q_obs
    ;
    
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%DECLARATION OF EXOGENOUS VARIABLES%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
varexo 
    epsZ           ${\epsilon^{Z}}$       (long_name='Technology shock')
    epsM           ${\epsilon^{M}}$       (long_name='Monetary Policy shock')
    epsG           ${\epsilon^{G}}$       (long_name='Government Spending shock')
    epsT           ${\epsilon^{T}}$       (long_name='Lump Sum Transfer shock')
;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%DECLARATION OF PARAMETERS%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
parameters 
   betta          ${\beta}$               (long_name='Discount Factor') 
   sigma_c        ${\sigma}$              (long_name='Intertemporal elasticity of substitution')
   varrho         ${\varphi}$             (long_name='Inverse of Frish elasticity of Labor Supply')  
   alp            ${\alpha}$              (long_name='capital share (exluding profits)')
   delta          ${\delta}$              (long_name='Capital depreciation')
   zzeta          ${\eta}$                (long_name='Elasticity of substitutions between intermediate goods varieties')
   rhoZ           ${\rho^{z}}$            (long_name='autoregressive parameter for Technology shock')
   rhoG           ${\rho^{g}}$            (long_name='autoregressive parameter for Government Spending shock')   
   rho_r          ${\phi^{r}}$            (long_name='Interest rate smoothing')
   theta_pie      ${\phi^{\pi}}$          (long_name='Taylor rule coeff of inflation')  
   theta_y        ${\phi^{y}}$            (long_name='Taylor rule coeff of output')  
   rho_tauT       ${\phi^{\tau t}}$       (long_name='Tax Inertia - T')
   phi_tauT_G     ${\phi^{\tau G}}$       (long_name='Fiscal Policy Rule Coefficient on Output - T')
   gamma_G        ${\gamma_G}$            (long_name='Debt response with G')
   gamma_T        ${\gamma_T}$            (long_name='Debt response with T')
   tauH           ${\tau^H}$              (long_name='Transfer to ensure equal C s in steady state')
   F              ${F}$                   (long_name='Fixed Costs in Production')  
   rhoEM          ${\rho^{EM}}$           (long_name='autoregressive parameter for MP shock')   
   phiX           ${\iota}$               (long_name='Investment adjustment costs')
   calvo          ${\theta}$              (long_name='calvo prices')
   xi             ${\xi}$                 (long_name='Rotember price adj costs')
   //The following parameters are steady state realtionships
   Hss            ${\bar H}$              (long_name='Steady State Hours') 
   PIEss          ${\bar \Pi}$            (long_name='Steady State Inflation') 
   gy             ${\frac{\bar{G}}{\bar{Y}}}$ (long_name='Government Spending Output Ratio in Steady State')
   BYss           ${\frac{\bar{B}}{\bar{Y}}}$ (long_name='Steady State Government debt to GDP Ratio')
   LSss           ${\bar{ls}}$            (long_name='Steady State Labor Share')    
   tauS           ${\tau^K}$              (long_name='Transfer to ensure equal C s in steady state')
   tauN           ${\tau^S}$              (long_name='Transfer to ensure equal C s in steady state')
   lambdass       ${\lambda^{CC}}$        (long_name='Prob of staying Capitalist')
   lambdash       ${\lambda^{CW}}$        (long_name='Prob of a Capitalist becoming Worker')
   lambdahs       ${\lambda^{WC}}$        (long_name='Prob of a Worker becoming Capitalist')
   lambdann       ${\lambda^{NN}}$        (long_name='Prob of staying Saver')
   PIS            ${\Pi^{K}}$             (long_name='Share of Capitalists')
   PIH            ${\Pi^{H}}$             (long_name='Share of Hand to Mouth')
   PIN            ${\Pi^{S}}$             (long_name='Share of Savers')
   lambdans       ${\lambda^{NC}}$        (long_name='Prob of a Saver becoming Capitalist')
   lambdasn       ${\lambda^{CN}}$        (long_name='Prob of a Capitalist becoming Saver')
   lambdahn       ${\lambda^{WN}}$        (long_name='Prob of a Worker becoming Saver')
   lambdanh       ${\lambda^{NW}}$        (long_name='Prob of a Saver becoming Worker')
   lambdahh       ${\lambda^{WW}}$        (long_name='Prob of staying Worker')
   nuN            ${\nu^S}$               (long_name='Weight on Hours in Utility, Saver')
   nuH            ${\nu^H}$               (long_name='Weight on Hours in Utility, Hand to Mouth')
   nuS            ${\nu^U}$               (long_name='Weight on Hours in Utility, Capitalists')
   nu             ${\nu}$                 (long_name='Weight on Hours in Utility, Aggregate')
   ;
   
   
%%%%%%%%%%%%%%%%%%%%%%
%%PARAMETERS VALUES %%
%%%%%%%%%%%%%%%%%%%%%%
betta      = 0.99; %Discount factor
delta      = 0.0250; %depreciation rate
rhoZ       = 0.75; %autoregressive param Z shock (Labor Augmenting)
sigma_c    = 1;%Relative Risk Adversion
varrho     = 1; %Inverse Frish Elasticity of Labor Supply 
phiX       = 2.5; %Investment adjustment costs
LSss       = 0.67; %Steady state Labor share
zzeta=6;%elasticity of substitution between differentiated goods 
s_prices_duration=3.5; %frequency of price adjustment
calvo=1-1/s_prices_duration; %calvo probability
xi          = calvo*(zzeta-1)/((1-calvo)*(1-betta*calvo)); % implied Rotemberg parameter (exploiting first-order equivalence)

% 
%%Population shares
 PIS = 0.1;
 PIH = 0.2; 
 %lambdass =0.8;
 set_param_value('lambdass',lambdass);
 %lambdash=0.02;
 set_param_value('lambdash',lambdash);
 lambdahs=0.0541;
 lambdann=0.95;

%% Uncommenting below you approximate a 2 agents THANK
%  PIS = 0.7999;
% PIH = 0.2;
% lambdass =0.98;     
% lambdash=0.02;
% lambdahs=0.0541;
% lambdann=0.95;

%%Monetary and Fiscal Policy
theta_pie  = 1.2; %Taylor rule elasticity of interest rate to inflation
%set_param_value('theta_pie',theta_pie);
rho_r      = 0;%  %Taylor rule interest rate smoothing
theta_y    = 0;% %Taylor rule elasticity of interest rate to output
rhoEM=0.3;
rhoG       = 0.9;  %autoregressive param G  shock (Government Spending)
rho_tauT   = 0;    %autoregressive param T     
phi_tauT_G = 0.1; % response of T to G
gamma_G=0; % Response of G to B
gamma_T=.5; % Response of T to B
%set_param_value('gamma_T',gamma_T);





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%STEADY STATE RELATIONSHIPS%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PIEss=1;
Hss=.33;
gy         = 0.2; %Government Spending Output Ratio
BYss      = 0.57;     %annualized Debt-to-GDP ratio


model;

%% Households
[name='Marginal Utility of Consumption, Capitalists']
UCS=(CS)^-sigma_c;
[name='Euler Equation, Capitalists']
UCS=betta*R*(lambdass*UCS(+1)+lambdasn*UCN(+1)+lambdash*UCH(+1));


[name='Marginal Utility of Leisure, Capitalists']
UHS=-nuS*HS^varrho;
[name='Labor Supply, Aggregate']
W=nu*H^varrho/((C)^-sigma_c);
[name='Hours, Capitalists']
HS=H;

[name='Bonds, Capitalists']
BS=PIS*lambdass*ZS+PIN*lambdans*ZN+PIH*lambdahs*ZH;


[name='Budget constraint, Capitalists']
Sconst=CS+IS+ZS/P-(W*HS+RK*K(-1)/PIS+Rn(-1)*BS(-1)/(P*PIS)+profits/PIS -tauS-taxS/(P)); %%To double check steady state is correct


[name='Marginal Utility of Consumption, Savers']
UCN=(CN)^-sigma_c;
[name='Euler Equation, Savers']
UCN=betta*R*(lambdann*UCN(+1)+lambdans*UCS(+1)+lambdanh*UCH(+1));


[name='Marginal Utility of Leisure, Savers']
UHN=-nuN*HN^varrho;

[name='Hours, Savers']
HN=H;

[name='Budget constraint, Savers']
CN+ZN/P = W*HN + Rn(-1)*BN(-1)/(P*PIN) - tauN - taxN/(P) ;



[name='Bonds, Savers']
BN=PIN*lambdann*ZN+PIS*lambdasn*ZS+PIH*lambdahn*ZH;



[name=' Marginal Utility of Consumption, Hand to Mouth']
UCH=(CH)^-sigma_c;

[name='Marginal Utility of Leisure, Hand to Mouth']
UHH=-nuH*HH^varrho;
[name='Hours, Hand to Mouth']
HH=H;

[name='Bonds, Hand to Mouth 1']
ZH=0;  
[name='Bonds, Hand to Mouth 2']
BH=PIH*lambdahh*ZH+PIS*lambdash*ZS+PIN*lambdanh*ZN;


[name='Consumption, Hand to Mouth']
CH+ZH/P=W*HH+BH(-1)/(P*PIH)*Rn(-1)-taxH/(P)+tauH;


%% Firms
[name='Cobb-Douglas Prodution function']
YW=(Z*H)^(1-alp)*(K(-1))^alp;
[name='Real Output']
Y=YW-F;
[name='Marginal product of Labor']
MPL=(1-alp)*Z^(1-alp)*(H/(K(-1)))^(-alp);
[name='Real Wage']
W=MC*MPL;
[name='Profits']
Y=W*H+RK*K(-1)+profits;

[name='Profits - Capitalists']
profits=PIS*profitsS;
[name='Labor Income']
LI=W*H;
[name='Labor Share']
LShare=W*H/Y;
[name='Marginal product of Capital']
MPK=alp*(K(-1)/(Z*H))^(alp-1);
[name='Rental rate of Capital']
RK=MC*MPK;
[name='Capital Share']
KShare=RK*K(-1)/Y;

[name='Capital Law of Montion'] 
KS=(1-S)*IS+(1-delta)*KS(-1);
[name='Investment today over Investment previous period'] 
X=IS/IS(-1);
[name='Convex Investment Adjustment Costs Function'] 
S=phiX*(X-1)^2;
[name='Derivative of the Convex Investment Adjustment Costs Function'] 
Sdash=2*phiX*(X-1);
[name='Capital Euler equation'] 
UCS=betta*(RK(+1)+(1-delta)*Q(+1))/Q*UCS(+1);
[name='Liquidity premium'] 
LP = (1/R) *((RK(+1) +(1-delta)*Q(+1))/Q); 
[name='Investment Equation'] 
Q*(1-S-X*Sdash)+betta*UCS(+1)/UCS*Q(+1)*Sdash(+1)*X(+1)^2=1;


[name='Aggregation: Investment']
I=PIS*IS;
[name='Aggregation: Capital']
K=PIS*KS;

[name='Resource Constraint'] 
Y=C+G/P+I;


[name='Fisher Equation'] 
R=Rn/PIE(+1);
[name='Aggregation: Consumption']
C=PIH*CH+PIS*CS+PIN*CN;



[name='Non-Linear Price Phillips Curve'] 
(1-zzeta)+zzeta*MC-PIE*xi*(PIE-1)+betta*((UCS(+1)/UCS)*PIE(+1)*xi*(PIE(+1)-1)*Y(+1)/Y)=0;

[name='Taylor Rule'] 
log(Rn/STEADY_STATE(Rn))=rho_r*log(Rn(-1)/STEADY_STATE(Rn))+(1-rho_r)*theta_pie*log(PIE/STEADY_STATE(PIE))
+(1-rho_r)*theta_y*log(Y/STEADY_STATE(Y))+log(EM/STEADY_STATE(EM));

[name='Labor Augmenting Shock'] 
log(Z)-log(STEADY_STATE(Z))=rhoZ*(log(Z(-1))-log(STEADY_STATE(Z)))-epsZ;

[name='Government Budget Constraint']
B=B(-1)*Rn(-1)+G-tax;

   
[name='Aggregation: Gov. Bonds']
B=PIS*ZS+PIN*ZN+PIH*ZH;

[name='Price inflation']
PIE = P / P(-1);

[name='Debt to GDP']
SB=B/(P*Y);


[name='Government Spending Shock'] 
log(G)-log(STEADY_STATE(G))=rhoG*(log(G(-1))-log(STEADY_STATE(G)))-(1-rhoG)*gamma_G*(log(B(-1))-log(STEADY_STATE(B)))+epsG;
[name='Tax Rule']
log(tax/STEADY_STATE(tax))=rho_tauT*log(tax(-1)/STEADY_STATE(tax))+(1-rho_tauT)*(gamma_T*log(B(-1)/STEADY_STATE(B))+phi_tauT_G*log(G/STEADY_STATE(G)))-epsT;



[name='Tax Rule, Unonstrained']
taxS=tax;
[name='Tax Rule, Hand to Mouth']
taxH=tax;
[name='Tax Rule, Savers']
taxN=tax;


[name='MP Shock'] 
log(EM)-log(STEADY_STATE(EM))=rhoEM*(log(EM(-1))-log(STEADY_STATE(EM)))-epsM;


%% Variables in log (for log-linearization)
Y_obs=log(Y);
C_obs=log(C);
H_obs=log(H);
W_obs=log(W);
PIE_obs=log(PIE);
R_obs=log(R);
Rn_obs=log(Rn);
RK_obs=log((RK(+1) +(1-delta)*Q(+1))/Q);
CS_obs=log(CS);
CH_obs=log(CH);
CN_obs=log(CN);
HH_obs=log(HH);
HS_obs=log(HS);
HN_obs=log(HN);
P_obs=profits/STEADY_STATE(Y);
LP_obs=log(LP);



B_obs=B/P/STEADY_STATE(Y); 
ZH_obs=ZH/P/STEADY_STATE(Y); 
BS_obs=BS/P/STEADY_STATE(Y);
BH_obs=BH/P/STEADY_STATE(Y); 
BN_obs=BN/P/STEADY_STATE(Y); 
ZN_obs=ZN/P/STEADY_STATE(Y); 
ZS_obs=ZS/P/STEADY_STATE(Y);
G_obs=G/P/STEADY_STATE(Y);
tax_obs=tax/P/STEADY_STATE(Y);

LI_obs=log(LI);
LS_obs=log(LShare);
KS_obs=log(KShare);
K_obs=log(K); 
I_obs=log(I);
Q_obs=log(Q);

%variables weighted for lambda

HHl_obs=PIH*HH_obs;
HSl_obs=PIS*HS_obs;
HNl_obs=PIN*HN_obs;
ZSl_obs=PIS*ZS_obs;
CSl_obs=PIS*CS_obs;
CHl_obs=PIH*CH_obs;
ZHl_obs=PIH*ZH_obs; 
ZNl_obs=PIN*ZN_obs; 
CNl_obs=PIN*CN_obs;
end;



shocks;
var epsZ; stderr 1;
var epsM; stderr 1;
var epsG; stderr 1/gy; 
var epsT; stderr 1;
end;

steady;
check;




%%%%%%%%%%%%%%%%%%%%%%%%%
%%STOCHASTIC SIMULATION%%
%%%%%%%%%%%%%%%%%%%%%%%%%
stoch_simul(order=1,irf=500,nograph,noprint);



