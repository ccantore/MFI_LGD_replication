%%=========================================================================
% Compare IRFs across different models
% Follows code by Cristiano Cantore
%%=========================================================================
 
%% 0. Housekeeping
%--------------------------------------------------------------------------
clear;
close all;
clc;
TimeStart = tic;

% Adjust some style options
%set(groot, 'DefaultTextInterpreter', 'LaTex'); set(groot, 'defaultAxesTickLabelInterpreter','latex'); set(groot, 'defaultLegendInterpreter','latex');
set(0, 'DefaultAxesFontSize',14);
set(0, 'DefaultTextFontSize', 14);
set(0, 'DefaultUicontrolFontSize',14);

%% 1. User Options
%---------------------------------------------------------------------------
 
% Output options
OptionPrint = 1;        
FigName = 'KSHNK_AFPM_rob_trans';
TargetPath = '../../Output/Appendix/';
mkdir(TargetPath);


% Names of files to be loaded (.mat) whether they're linear or non-linear, and
% how they're called in figures
RESULT_names={'KSHNK_AFPM_KK08_KH02_results.mat','KSHNK_AFPM_KK07_KH02_results.mat','KSHNK_AFPM_KK09_KH02_results.mat','KSHNK_AFPM_KK08_KH05_results.mat'}; %%EXACT NAMES OF THE RESULTS FILES TO LOAD

lin_vs_nonlin=[0,0,0,0]; % = 0 if corresponding model non-linear, 1 otherwise
Model_names=char('\lambda_{KK}=0.8 \lambda_{K,H}=0.02','\lambda_{KK}=0.7 \lambda_{K,H}=0.02',['\lambda_{KK}=0.9 \lambda_' ...
    '{K,H}=0.02'],'\lambda_{KK}=0.8 \lambda_{K,H}=0.05'); %NAMES OF THE MODEL VARIANTS TO APPEAR IN THE LEGEND OF THE GRAPHS

% Select names of 1) endogenous vairables of interest for IRFs, 2) names to be shown, and 3) shocks
VAR_IRFs_nonlin = {'Y_obs','C_obs','I_obs','H_obs','CSl_obs','CNl_obs','CHl_obs','PIE_obs','Rn_obs','R_obs','RK_obs','LP_obs','P_obs','B_obs','ZSl_obs','ZNl_obs','BS_obs','BN_obs','G_obs','tax_obs'};%% NAMES OF ENDOGENOUS VARIABLES OF INTEREST FOR THE IRFS (NON-LINEAR MODELS) - NEED TO HAVE EXACTLY SAME NAME AS IN THE .MOD FILE
VAR_IRFs_linear = {'Y','C','I','H','HS','HH','CSl','CHl','PIE','R','B','ZH','ZS','BH','BS'};%% NAMES OF ENDOGENOUS VARIABLES OF INTEREST FOR THE IRFS (LINEAR MODELS) - NEED TO HAVE EXACTLY SAME NAME AS IN THE .MOD FILE

names = char('Output','Consumption','Investment','Hours', 'Consumption K','Consumption S','Consumption H','Inflation','Nominal Interest Rate','Real interest rate','Rental rate of K','Liquidity Premium','Profits','Real Government Debt','Z^K','Z^S','B^K','B^S','Real Government spending','Real tax revenues');%,'RR','RnRn','PIEPIE','tauC','tauK','tauW','BG','BGC','BGW',}; %% NAMES OF ENDOGENOUS VARIABLES OF INTEREST FOR THE IRFS (NON-LINEAR MODELS) - NEED TO HAVE EXACTLY SAME NAME AS IN THE .MOD FILE

NAME_SHOCKS={'_epsG'};
shocks_names=['F'];

% Display options
IRFPeriods = 15;       
OptionGreycolor = 0;    % if want grey colorscheme instead of standard colors
Rows_figure=5; 
Column_figure=4; 
vLinestyle = {'-','--','--','.'};
FontsizeDefault = 8;
FontsizeAxis = 8;
FontSizeLegend = 6;
Fonttype = 'times';
LinewidthDefault = 1.6;
LinewidthAlt = 1;
ColorZeros = 'k';
StyleZeros = '-';
LinewidthZeros = 0.05;

TitleSize = 14;
LabelSize = 12;
Font = 'times';


if OptionGreycolor == 0
vColors = {[0,0,90]/255,[255 127 0]/255,[0,0,90]/255,[255 127 0]/255};


else
vColors = {[0.2,0.2,0.2],[0.46,0.46,0.46],[0.6,0.6,0.6],[0.8,0.8,0.8]};
end

%% 2. Recover data
%---------------------------------------------------------------------------
Num_models=length(RESULT_names); %%NUMBER OF MODELS TO COMPARE
NUM_SHOCKS=length(NAME_SHOCKS);  %%NUMBER OF SHOCKS TO COMPARE
NUM_VAR=length(VAR_IRFs_nonlin);%%NUMBER OF VARIABLES TO COMPARE

irfs_matrix=zeros(500,NUM_VAR,NUM_SHOCKS,Num_models);
for mm=1:Num_models
%load Model 
eval(['load ' RESULT_names{mm} ';']);
if lin_vs_nonlin(mm)~=0
    VAR_IRFs=VAR_IRFs_linear;
else
    VAR_IRFs=VAR_IRFs_nonlin;
end
for xx=1:NUM_SHOCKS
for jj=1:NUM_VAR
%Rename the IRFs for each variable of interest 
genrate_irf_names=[VAR_IRFs{jj},NAME_SHOCKS{xx},'=','oo_.irfs.',VAR_IRFs{jj},NAME_SHOCKS{xx},';'];
evalin('base', genrate_irf_names);
irfs_matrix(:,jj,xx,mm)=eval([VAR_IRFs{jj},NAME_SHOCKS{xx}]);
end
end

end

%% 3. Plot
%---------------------------------------------------------------------------
for xx=1:NUM_SHOCKS

%Options for the plot
h(xx)=figure('Position', [600, 0, 1000, 900]);
axes ('position', [0, 0, 1, 1]);

%Loop over the number of endogenous variables to plot
F(xx)=figure(xx);
set(F(xx), 'numbertitle','off');
set(F(xx), 'name', ['Impulse response functions to',NAME_SHOCKS{xx}]);
for jj = 1:length(VAR_IRFs)
for mm=1:Num_models
subplot(Rows_figure,Column_figure,jj), plot(irfs_matrix(1:IRFPeriods,jj,xx,mm),vLinestyle{mm},'Color',vColors{mm},'LineWidth',LinewidthDefault); 
hold on;
 set(gca,'XTick',[0:5:IRFPeriods],'FontSize',FontsizeAxis,'fontname',Fonttype);
    xlim([1 IRFPeriods])
    set(gca,'XTick',0:5:IRFPeriods); %'TickLabelInterpreter','LaTex')
plot(zeros(1,IRFPeriods),StyleZeros,'HandleVisibility','off','Color',ColorZeros,'Linewidth',LinewidthZeros);


title(names(jj,:),'FontSize',FontsizeDefault,'fontname',Fonttype,'FontWeight','normal');

if jj > Rows_figure*Column_figure-Column_figure
xlabel('Time (quarters)','FontSize',FontsizeAxis,'fontname',Fonttype)
end


axis tight         
    end
end



subplot(Rows_figure,Column_figure,1)
hL(xx)=legend(Model_names);
newPosition = [0.3765    0.9542    0.2811    0.0373];
newUnits = 'normalized';
set(hL,'Position', newPosition,'Units', newUnits,'Orientation','horizontal');






%% Print (if enabled)
%----------------------------------------------------------------------------

if size(VAR_IRFs_nonlin,2)==2
xSize = 17.5; 
%ySize = 5;
ySize = 10;
xCut = 1.5;
yCut = 0;
elseif size(VAR_IRFs_nonlin,2)==4
xSize = 17.5; 
ySize = 10;
xCut = 2.4;
yCut = 0.1;
elseif size(VAR_IRFs_nonlin,2)==6 || size(VAR_IRFs_nonlin,2)==5
xSize = 17.5; 
ySize = 12.5; 
xCut = 2.4;
yCut = 0.8;
elseif size(VAR_IRFs_nonlin,2)==9
xSize = 17.5; 
ySize = 12.5; 
xCut = 2.4;
yCut = 0.8;
elseif size(VAR_IRFs_nonlin,2)==12
xSize = 17.5; 
ySize = 11.5; 
xCut = 2.4;
yCut = 0;
elseif size(VAR_IRFs_nonlin,2)==16|| size(VAR_IRFs_nonlin,2)==15
xSize = 17.5; 
ySize = 10; 
xCut = 2.4;
yCut = 0;
elseif size(VAR_IRFs_nonlin,2)==18|| size(VAR_IRFs_nonlin,2)>18
xSize = 17.5; 
ySize = 12; 
xCut = 2.4;
yCut = 0;
end

 
if OptionPrint == 1
    for xxx=1:NUM_SHOCKS
  FigNamepdf=horzcat(horzcat(TargetPath,FigName,NAME_SHOCKS{xxx}),'.pdf');
savefigure_pdf(FigNamepdf)
    end
end
end

%% Done!
%----------------------------------------------------------------------------
TimeEnd = toc(TimeStart);
disp(['Total run time was ',num2str(TimeEnd),' seconds']);