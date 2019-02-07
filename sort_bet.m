% Test sorting
%subjDir = './Experiments/CPS/results/normalized/*/*';
subjDir = './Experiments/CPS/results/*/*';
myResultFiles = dir(fullfile(subjDir,'*_BET.nii')); %gets all nii files in struct
nrun = length(myResultFiles); % number of runs equal to number of subject files to test
%myResultFiles;

% Sort results files
[~,idx] = sort({myResultFiles.name});
sortedFiles = myResultFiles(idx);
%sortedGroundFiles;

% Get Ground Truth files
subjGroundDir = './Experiments/CPS/groundtruth/*/*';
myGroundFiles = dir(fullfile(subjGroundDir,'*.nii')); %gets all nii files in struct
gnrun = length(myGroundFiles); % number of runs equal to number of subject files to test
% Sort Ground truth files
[~,idx] = sort({myGroundFiles.name});
sortedGroundFiles = myGroundFiles(idx);
% A matrix to track the indexes of results files
locations = zeroes(gnrun,1);

for k = 1:gnrun
  groundfileFolder = sortedGroundFiles(k).folder;
  groundbaseFileName = sortedGroundFiles(k).name;
  groundfullFileName = fullfile(groundfileFolder, groundbaseFileName);
  %fprintf('File: %s\r\n', groundfullFileName);
  % Results
  fileFolder = sortedFiles(k).folder;
  baseFileName = sortedFiles(k).name;
  fullFileName = fullfile(fileFolder, baseFileName);
  %fprintf('File: %s\r\n', fullFileName);
  fprintf('groundfullFileName: %s Result fullFileName: %s\r\n', groundfullFileName, fullFileName);
end

