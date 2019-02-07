% Test sorting
%subjDir = './Experiments/CPS/results/normalized/*/*';
subjDir = './Experiments/CPS/results/*/*';
myFiles = dir(fullfile(subjDir,'*_BET.nii')); %gets all nii files in struct
nrun = length(myFiles); % number of runs equal to number of subject files to test
%myFiles;
%fprintf('nrun: %d\r\n',nrun);

[~,idx] = sort({myFiles.name});
sortedFiles = myFiles(idx);
%sortedFiles;
for k = 1:nrun
  fileFolder = sortedFiles(k).folder;
  baseFileName = sortedFiles(k).name;
  fullFileName = fullfile(fileFolder, baseFileName);
  fprintf('File: %s\r\n', fullFileName);
end

