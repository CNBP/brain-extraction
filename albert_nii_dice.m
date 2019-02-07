function e = albert_nii_dice(im1, im2, binarize, im1inten, im2inten);
%in CHANGE Ground Truth fake File Names to Real ones. The real ones have been resliced to 0.5 0.5 0.5
g1='./normalized/BET/Ground_truth/iw03_T2_Export.nii';
g2='./normalized/BET/Ground_truth/iw05_T2_Export.nii';
g3='./normalized/BET/Ground_truth/iw10_T2_Export.nii';
g4='./normalized/BET/Ground_truth/iw11_T2_Export.nii';
g5='./normalized/BET/Ground_truth/iw12_T2_Export.nii';
g6='./normalized/BET/Ground_truth/iw17_T2_Export.nii';
g7='./normalized/BET/Ground_truth/iw06_T2_Export.nii';

%in BET results
% in b1='./normalized/BET/BET_results/w03_T2_BET.nii';
b1='./normalized/BET/BET_results/rerun_w03_T2_BET.nii';
b2='./normalized/BET/BET_results/w05_T2_BET.nii';
b3='./normalized/BET/BET_results/w10_T2_BET.nii';
b4='./normalized/BET/BET_results/w11_T2_BET.nii';
b5='./normalized/BET/BET_results/w12_T2_BET.nii';
b6='./normalized/BET/BET_results/w17_T2_BET.nii';
b7='./normalized/BET/BET_results/w06_T2_BET.nii';

%in OptiBet results
o1='./normalized/BET/optiBet_results/w03_T2_optiBET_brain.nii';
o2='./normalized/BET/optiBet_results/w05_T2_optiBET_brain.nii';
o3='./normalized/BET/optiBet_results/w10_T2_optiBET_brain.nii';
o4='./normalized/BET/optiBet_results/w11_T2_optiBET_brain.nii';
o5='./normalized/BET/optiBet_results/w12_T2_optiBET_brain.nii';
o6='./normalized/BET/optiBet_results/w17_T2_optiBET_brain.nii';
o7='./normalized/BET/optiBet_results/w06_T2_optiBET_brain.nii';

%in Simple Watershed results
s1='./normalized/BET/Simple_Watershed_results/simple_watershed/scw03_T2.nii';
s2='./normalized/BET/Simple_Watershed_results/simple_watershed/scw05_T2.nii';
s3='./normalized/BET/Simple_Watershed_results/simple_watershed/scw10_T2.nii';
s4='./normalized/BET/Simple_Watershed_results/simple_watershed/scw11_T2.nii';
s5='./normalized/BET/Simple_Watershed_results/simple_watershed/scw12_T2.nii';
s6='./normalized/BET/Simple_Watershed_results/simple_watershed/scw11_T2.nii';
s7='./normalized/BET/Simple_Watershed_results/simple_watershed/scw06_T2.nii';

fprintf('====ALBERT data Dice coefficient results====\n');
%in BET DICE
fprintf('====BET Dice coefficient results====\n');
ab1 = nii_dice(g1,b1);
ab2 = nii_dice(g2,b2);
ab3 = nii_dice(g3,b3);
ab4 = nii_dice(g4,b4);
ab5 = nii_dice(g5,b5);
ab6 = nii_dice(g6,b6);
ab7 = nii_dice(g7,b7);

fprintf('====optiBET Dice coefficient results====\n');
ao1 = nii_dice(g1,o1);
ao2 = nii_dice(g2,o2);
ao3 = nii_dice(g3,o3);
ao4 = nii_dice(g4,o4);
ao5 = nii_dice(g5,o5);
ao6 = nii_dice(g6,o6);
ao7 = nii_dice(g7,o7);

fprintf('====Simple Watershed Dice coefficient results====\n');
as1 = nii_dice(g1,s1);
as2 = nii_dice(g2,s2);
as3 = nii_dice(g3,s3);
as4 = nii_dice(g4,s4);
as5 = nii_dice(g5,s5);
as6 = nii_dice(g6,s6);
as7 = nii_dice(g7,s7);

fprintf('\n\n====ALBERT DICE coefficient results====\n');
fprintf('Subject | BET | optiBET | Simple Watershed\n');
fprintf('%s | %f | %f | %f \n',g1,ab1, ao1, as1);
fprintf('%s | %f | %f | %f \n',g2,ab2, ao2, as2);
fprintf('%s | %f | %f | %f \n',g3,ab3, ao3, as3);
fprintf('%s | %f | %f | %f \n',g4,ab4, ao4, as4);
fprintf('%s | %f | %f | %f \n',g5,ab5, ao5, as5);
fprintf('%s | %f | %f | %f \n',g6,ab6, ao6, as6);
fprintf('%s | %f | %f | %f \n',g7,ab7, ao7, as7);



