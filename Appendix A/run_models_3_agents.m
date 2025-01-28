clear all
close all
clc


theta_pieV=[0.8, 1.2];
gamma_TV=[1,0.5];
names=['KSHNK_PFPM_results'; 'KSHNK_AFPM_results';'KSHNK_PFAM_results';'KSHNK_AFAM_results'];
ind=0;
for i=1:length(theta_pieV)
    for j=1:length(gamma_TV)
        ind=ind+1;
    theta_pie=theta_pieV(i);
    gamma_T=gamma_TV(j);
        
        dynare KSHNK noclearall
        
        save(strcat(names(ind,:),'.mat'), 'oo_', 'M_', 'options_');
clear oo_ M_ options_
    end

end

