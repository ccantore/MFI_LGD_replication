%%=========================================================================
% This code creates stability plots
% Plots regions of saddle path stability, indeterminacy and instability
% Run on Dynare 6.3
% C Cantore 
% Last updated: Feb 2025
%%=========================================================================
 
%% 0. Housekeeping
%--------------------------------------------------------------------------
clear;
close all;
clc;

%% Settings
%--------------------------------------------------------------------------
% Output options
OptionPrint = 1;        
FigName = 'Fig_Stability_kshnk_realFiscal_gamma';
TargetPath = '..\..\Output\Appendix\';   

% Parameter space to be evaluated
Parameter1 = 'theta_pie';
Parameter1String = '$\phi_{\Pi}$';
%Parameter1String=horzcat('\',Parameter1); 
Parameter1Min = 0;
Parameter1Max = 2;
Parameter1Steps = 22;
Parameter2 = 'gamma_T';
Parameter2String = '$\gamma^T$'; 
Parameter2Min = 0.01;
Parameter2Max = 1;
Parameter2Steps = 22;


%% Run
%--------------------------------------------------------------------------
dynare KSHNK nostrict noclearall

%% Compute Stability Regions
%--------------------------------------------------------------------------

vParameter1 = linspace(Parameter1Min,Parameter1Max,Parameter1Steps);
vParameter2 = linspace(Parameter2Min,Parameter2Max,Parameter2Steps);
[mParameter1,mParameter2] = meshgrid(vParameter1,vParameter2);

% Initialize
Iter=0;
options_.qz_criterium = 1+1e-6;
mStability = NaN(size(mParameter1));

% Compute stability regions
for iP1 = 1:length(vParameter1)
    for iP2 = 1:length(vParameter2)
       Iter = Iter+1;
       set_param_value(Parameter1,mParameter1(iP1,iP2)); 
       set_param_value(Parameter2,mParameter2(iP1,iP2)); 
       [dr,info,params] = resol(0,M_,options_,oo_.dr,oo_.steady_state,oo_.exo_steady_state,oo_.exo_det_steady_state); % compute perturbation based decision rules 
       mStability(iP1,iP2) = info(1);      
    end
end

%   info(1)=0     ->    No error.
%   info(1)=3     ->    Blanchard & Kahn conditions are not satisfied: no stable equilibrium.
%   info(1)=4     ->    Blanchard & Kahn conditions are not satisfied: indeterminacy.
%   info(1)=5     ->    Blanchard & Kahn conditions are not satisfied: indeterminacy due to rank failure.



%% 3. Plot
%--------------------------------------------------------------------------
% Design options
OptionGreycolor = 0;    % if want grey colorscheme instead of standard colors
vLinestyle = {'-','-.','--',':'};
FontsizeDefault = 10;
FontsizeAxis = 10;
FontSizeLegend = 8;
FontsizeAxisticks = 8;
Fonttype = 'times';
LinewidthDefault = 1.6;
LinewidthAlt = 1;
ColorZeros = 'k';
StyleZeros = '-';
% if OptionGreycolor == 0
% vColors = {[0,0,90]/255,[255 127 0]/255,[0,0,255]/255,[128,128,128]/255,[114,47,55]/255};
% elseif OptionGreycolor == 1
% vColors = {[0.2,0.2,0.2],[0.46,0.46,0.46],[0.6,0.6,0.6],[0.7 0.7 0.7]};
% end

if OptionGreycolor == 0
    vColors = {[0,0,0]/255, [255 127 0]/255, [0,0,255]/255};
elseif OptionGreycolor == 1
    vColors = {[0.2,0.2,0.2], [0.46,0.46,0.46], [0.6,0.6,0.6]};
end


% Mesh plot
nTicksY=7; %Choose number of ticks for plot
yTickLocations = linspace(1, length(vParameter2), nTicksY);
yTickValues = linspace(Parameter2Min, Parameter2Max, nTicksY);
nTicksX=7;
xTickLocations = linspace(1, length(vParameter1), nTicksX);
xTickValues = linspace(Parameter1Min, Parameter1Max, nTicksX);
Parameter1Stepsize = vParameter1(2)-vParameter1(1);
Parameter2Stepsize = vParameter2(2)-vParameter2(1);

hfig =figure(2);
markersize=0.5;
spy(mStability(:,:)==0,'r.'); % Determinacy
hold on 
spy(mStability(:,:)==4,'k.'); % Indeterminacy
spy(mStability(:,:)==3,'b.'); % Instability
x = get(gca,'children');
set(x(1),'color',vColors{3}); % Instability
set(x(2),'color',vColors{2}); % Indeterminacy
set(x(3),'color',vColors{1}); % Determinacy

%set(get(gca,'children'),'markersize',10)
axis xy;
%colors = reshape(cell2mat(vColors),3,4); colors=colors(:,1:3)';  colors=flip(colors); % FOR 1/0/3 setting
colors = vertcat(vColors{:});

colormap(colors);       
cb = colorbar; 
caxis([-0.5 2.5])
set(cb,'ytick',0:1:2) 
set(cb,'yticklabel',{'U','Ind','Ins'},'fontname','times'); 



if Parameter2Max > 10
    N = 2;
else
    N = 1;
end
yTickLabels = arrayfun(@(x) round(x, N), yTickValues, 'UniformOutput', false);
set(gca, 'YTick', yTickLocations, 'YTickLabel', yTickLabels, 'fontsize', FontsizeAxis);


if Parameter1Max > 10
    N = 2;
else
    N = 1;
end
xTickLabels = arrayfun(@(x) round(x, N), xTickValues, 'UniformOutput', false);
set(gca, 'XTick', xTickLocations, 'XTickLabel', xTickLabels, 'fontsize', FontsizeAxis);

ylabel(horzcat('$',Parameter2String,'$'),'fontsize',FontsizeAxis,'interpreter','latex');    
xlabel(horzcat('$',Parameter1String,'$'),'fontsize',FontsizeAxis,'interpreter','latex'); 


box on
set(gca,'xticklabel',get(gca,'xticklabel'),'FontSize',FontsizeAxis,'fontname',Fonttype); 
set(gca,'yticklabel',get(gca,'yticklabel'),'FontSize',FontsizeAxis,'fontname',Fonttype); 
set(gca,'zticklabel',get(gca,'zticklabel'),'FontSize',FontsizeAxis,'fontname',Fonttype); 



%% 3. Print
%--------------------------------------------------------------------------
if OptionPrint == 1
xSize = 17.5/2; 
ySize = 10; 
xCut = 0;
yCut = -0.5;
 set(gcf,'Units','centimeters','Position',[0 0 xSize ySize],'PaperUnits','centimeters' ...
      ,'PaperPosition',[0 0 xSize ySize],'PaperSize',[xSize-xCut ySize-yCut],'PaperPositionMode','auto')
  FigNamepdf =horzcat(horzcat(TargetPath,FigName),'.pdf');
print(FigNamepdf,'-dpdf','-painters')
end