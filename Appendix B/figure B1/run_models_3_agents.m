clear all
close all
clc


lambdassV=[0.9, 0.8, 0.7];
lambdashV=[0.02, 0.05];
names=['KSHNK_PFPM_KK09_KH02_results'; 'KSHNK_PFPM_KK09_KH05_results'; 'KSHNK_PFPM_KK08_KH02_results'; 'KSHNK_PFPM_KK08_KH05_results'; 'KSHNK_PFPM_KK07_KH02_results'; 'KSHNK_PFPM_KK07_KH05_results'];
ind=0;
for i=1:length(lambdassV)
    for j=1:length(lambdashV)
        ind=ind+1;
    lambdass=lambdassV(i);
    lambdash=lambdashV(j);
        
        dynare KSHNK noclearall
        
        save(strcat(names(ind,:),'.mat'), 'oo_', 'M_', 'options_');
clear oo_ M_ options_
    end

end

