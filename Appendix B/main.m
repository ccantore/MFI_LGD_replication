%% Replication code for Monetary-Fiscal Interaction and the Liquidity of Government Debt
%% (2025) European Economic Review
%% C. Cantore & E. Leonardi
%% 2024

%% This code replicates figures B1 to B4 in the Appendix

close all
clear all
clc


addpath('../savefigure_pdf.m');

cd('figure B1')
run_models_3_agents

Figure_appendix_B1

cd ..



cd('figure B2')
run_models_3_agents

Figure_appendix_B2

cd ..

cd('figure B3')
run_models_3_agents

Figure_appendix_B3

cd ..

cd('figure B4')
run_models_3_agents

Figure_appendix_B4

cd ..