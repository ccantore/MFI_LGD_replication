%% Replication code for Monetary-Fiscal Interaction and the Liquidity of Government Debt
%% 2 Agents Model
%% C. Cantore & E. Leonardi
%% 2024

%% This file replicates Table 2 (Bottom Panel) in the manuscript



%% Housekeeping
%--------------------------------------------------------------------------
%clear;
%close all;
%clc;
TimeStart = tic;

%% Option: Run new simulation (run_simul==1) or load previous one 
run_simul=1;


%number of models
nM=4;
%Discounting
pDiscount = 0.99;
theta_pieV=[0.8, 1.2];
gamma_TV=[1,0.5];
ind=0;

% Display options
IRFPeriods = 1000; 
OptionGreycolor = 0;    % if want grey colorscheme instead of standard colors
vLinestyle = {'--',':','-','-.'};
FontsizeDefault = 8;
FontsizeAxis = 8;
FontSizeLegend = 8;
FontDefault = 'times';
LinewidthDefault = 1.6;
LinewidthAlt = 1;
ColorZeros = 'k';
StyleZeros = '-';
LinewidthZeros = 0.05;
vColors = {[255 127 0]/255,[128,128,128]/255,[0,0,90]/255,[114,47,55]/255};

vColorsGrey = {[0.2,0.2,0.2],[0.6,0.6,0.6],[0.9,0.9,0.9]};

if run_simul==1
    %initialize multipliers
    mI=zeros(1,nM); mC15=mI;

    for i=1:length(theta_pieV)
        for j=1:length(gamma_TV) 
                    ind=ind+1;
                    theta_pie=theta_pieV(i);
                    gamma_T=gamma_TV(j);
                    %%%Run .mod files
                    dynare KSHNK noclearall

                                mI(ind)=oo_.irfs.Y_obs_epsG(1)/oo_.irfs.G_obs_epsG(1); %Impact multiplier
                        for iT = 1:IRFPeriods
                        vDiscount(iT) = pDiscount.^(iT-1);
                        mGAdj(iT) = vDiscount(iT).*oo_.irfs.G_epsG(iT);
                        mYAdj(iT) = vDiscount(iT).*oo_.irfs.Y_epsG(iT);
                        end
                                mC15(ind)=cumsum(mYAdj(1:15))/cumsum(mGAdj(1:15));


        end
    end
save mult nM mI mC15
else
    
        load mult
    
end



