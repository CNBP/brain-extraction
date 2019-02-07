g1='./normalized/BET/Ground_truth/iwsub-CC00162XX06_ses-53600_T2w_restore_brain.nii';
g2='./normalized/BET/Ground_truth/iwsub-CC00168XX12_ses-55700_T2w_restore_brain.nii';
g3='./normalized/BET/Ground_truth/iwsub-CC00201XX03_ses-67600_T2w_restore_brain.nii';
g4='./normalized/BET/Ground_truth/iwsub-CC00205XX07_ses-70000_T2w_restore_brain.nii';
g5='./normalized/BET/Ground_truth/iwsub-CC00250XX03_ses-83700_T2w_restore_brain.nii';
g6='./normalized/BET/Ground_truth/iwsub-CC00303XX06_ses-96900_T2w_restore_brain.nii';
g7='./normalized/BET/Ground_truth/iwsub-CC00367XX13_ses-116000_T2w_restore_brain.nii';
g8='./normalized/BET/Ground_truth/iwsub-CC00379XX17_ses-120400_T2w_restore_brain.nii';

%in BET results
b1='./normalized/BET/BET_results/iwsub-CC00162XX06_ses-53600_T2w_BET.nii';
b2='./normalized/BET/BET_results/iwsub-CC00168XX12_ses-55700_T2w_BET.nii';
b3='./normalized/BET/BET_results/iwsub-CC00201XX03_ses-67600_T2w_BET.nii';
b4='./normalized/BET/BET_results/iwsub-CC00205XX07_ses-70000_T2w_BET.nii';
b5='./normalized/BET/BET_results/iwsub-CC00250XX03_ses-83700_T2w_BET.nii';
b6='./normalized/BET/BET_results/iwsub-CC00303XX06_ses-96900_T2w_BET.nii';
b7='./normalized/BET/BET_results/iwsub-CC00367XX13_ses-116000_T2w_BET.nii';
b8='./normalized/BET/BET_results/iwsub-CC00379XX17_ses-120400_T2w_BET.nii';

%in OptiBet results
o1='./normalized/BET/optiBet_results/iwsub-CC00162XX06_ses-53600_T2w_optiBET_brain.nii';
o2='./normalized/BET/optiBET_results/iwsub-CC00168XX12_ses-55700_T2w_optiBET_brain.nii';
o3='./normalized/BET/optiBET_results/iwsub-CC00201XX03_ses-67600_T2w_optiBET_brain.nii';
o4='./normalized/BET/optiBET_results/iwsub-CC00205XX07_ses-70000_T2w_optiBET_brain.nii';
o5='./normalized/BET/optiBET_results/iwsub-CC00250XX03_ses-83700_T2w_optiBET_brain.nii';
o6='./normalized/BET/optiBET_results/iwsub-CC00303XX06_ses-96900_T2w_optiBET_brain.nii';
o7='./normalized/BET/optiBET_results/iwsub-CC00367XX13_ses-116000_T2w_optiBET_brain.nii';
o8='./normalized/BET/optiBET_results/iwsub-CC00379XX17_ses-120400_T2w_optiBET_brain.nii';

%in Simple Watershed results
s1='./normalized/BET/Simple_Watershed_results/simple_watershed/scwsub-CC00162XX06_ses-53600_T2w.nii';
s2='./normalized/BET/Simple_Watershed_results/simple_watershed/scwsub-CC00168XX12_ses-55700_T2w.nii';
s3='./normalized/BET/Simple_Watershed_results/simple_watershed/scwsub-CC00201XX03_ses-67600_T2w.nii';
s4='./normalized/BET/Simple_Watershed_results/simple_watershed/scwsub-CC00205XX07_ses-70000_T2w.nii';
s5='./normalized/BET/Simple_Watershed_results/simple_watershed/scwsub-CC00250XX03_ses-83700_T2w.nii';
s6='./normalized/BET/Simple_Watershed_results/simple_watershed/scwsub-CC00303XX06_ses-96900_T2w.nii';
s7='./normalized/BET/Simple_Watershed_results/simple_watershed/scwsub-CC00367XX13_ses-116000_T2w.nii';
s8='./normalized/BET/Simple_Watershed_results/simple_watershed/scwsub-CC00379XX17_ses-120400_T2w.nii';

%in BET DICE
fprintf('====BET Dice coefficient results====\n');
ab1 = nii_dice(g1,b1);
ab2 = nii_dice(g2,b2);
ab3 = nii_dice(g3,b3);
ab4 = nii_dice(g4,b4);
ab5 = nii_dice(g5,b5);
ab6 = nii_dice(g6,b6);
ab7 = nii_dice(g7,b7);
ab8 = nii_dice(g8,b8);

fprintf('====optiBET Dice coefficient results====\n');
ao1 = nii_dice(g1,o1);
ao2 = nii_dice(g2,o2);
ao3 = nii_dice(g3,o3);
ao4 = nii_dice(g4,o4);
ao5 = nii_dice(g5,o5);
ao6 = nii_dice(g6,o6);
ao7 = nii_dice(g7,o7);
ao8 = nii_dice(g8,o8);

fprintf('====Simple Watershed Dice coefficient results====\n');
as1 = nii_dice(g1,s1);
as2 = nii_dice(g2,s2);
as3 = nii_dice(g3,s3);
as4 = nii_dice(g4,s4);
as5 = nii_dice(g5,s5);
as6 = nii_dice(g6,s6);
as7 = nii_dice(g7,s7);
as8 = nii_dice(g8,s8);

fprintf('\n\n====dHCP DICE coefficient results====\n');
fprintf('Subject | BET | optiBET | Simple Watershed\n');
fprintf('%s | %f | %f | %f \n',g1,ab, ao, as);
fprintf('%s | %f | %f | %f \n',g1,ab, ao, as);
fprintf('%s | %f | %f | %f \n',g1,ab, ao, as);
fprintf('%s | %f | %f | %f \n',g1,ab, ao, as);
fprintf('%s | %f | %f | %f \n',g1,ab, ao, as);
fprintf('%s | %f | %f | %f \n',g1,ab, ao, as);
fprintf('%s | %f | %f | %f \n',g1,ab, ao, as);
