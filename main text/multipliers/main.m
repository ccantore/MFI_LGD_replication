%% Replication code for Monetary-Fiscal Interaction and the Liquidity of Government Debt
%% (2025) European Economic Review
%% C. Cantore & E. Leonardi
%% 2024

%% This code replicates Table 2 in the main text

close all
clear all
clc


run_MS

mI3=mI;

mC15_3=mC15;

cd('multipliers THANK')

run_MS2


display('3 Agents model')
display('Impact Multiplier')
mI3
display('Cumulative Multiplier 15')
mC15_3

display('2 Agents model')
display('Impact Multiplier')
mI
display('Cumulative Multiplier 15')
mC15