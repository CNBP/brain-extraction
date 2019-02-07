% List of open inputs
jobfile = {'./Experiments/CPS/code/ground_dhcp_normalizeandimagecalc_job.m'};
input_vol = '';
output_dir = '';
%subjDir = './Experiments/CPS/groundtruth/unnormalized/dHCP/';
subjDir = './Experiments/CPS/groundtruth/unnormalized/ALBERT/';
myFiles = dir(fullfile(subjDir,'*.nii')); %gets all nii files in struct
nrun = length(myFiles); % number of runs equal to number of subject files to test
inputs = cell(3,1);
fprintf('ALB: %d',nrun);
spm('defaults', 'FMRI');
for k = 1:nrun
%for k = 1:1
  % reset jobs struct
  jobs = repmat(jobfile, 1, 1);
  % reste inputs structure
  inputs = cell(3,1);
  fileFolder = myFiles(k).folder;
  baseFileName = myFiles(k).name;
  fullFileName = fullfile(fileFolder, baseFileName);
  input_vol = strcat(fullFileName,',1');
  resampled_output_vol = input_vol;
  % create path to folder of subject deformation files used to normalise ground truth for each subject
  deformation_fileFolder = fileFolder;
  % replace 'groundtruth' with 'test'
  deformation_fileFolder = strrep(deformation_fileFolder,'groundtruth','test');
  % replace 'unnormalized' with 'normalized'
  deformation_fileFolder = strrep(deformation_fileFolder,'unnormalized','normalized');
  % create base name of subject deformation file
  deformation_baseFileName = strcat('y_',baseFileName);
  % create full path to the subject deformation file
  deformation_fullFileName = fullfile(deformation_fileFolder, deformation_baseFileName);
  % remove _Export if in filename to get correct name of deformation file
  deformation_fullFileName = strrep(deformation_fullFileName,'_Export','');
  % remove _restore_brain if in filename to get correct name of deformation file
  deformation_fullFileName = strrep(deformation_fullFileName,'_restore_brain','');
  % set output directory 
  output_dir = deformation_fileFolder;
  % set ground truth normalized output folder
  groundtruth_output_dir = strrep(fileFolder,'unnormalized','normalized');
  % Arguments for job script
  inputs{1,1} = cellstr(deformation_fullFileName);
  inputs{2,1} = cellstr(input_vol);
  inputs{3,1} = cellstr(output_dir);
  %fprintf('File: %s\r\n', fullFileName);
  %fprintf('Folder: %s\r\n', myFiles(k).folder);
  fprintf('DeformationFile: %s\r\n', deformation_fullFileName);
  fprintf('Ground truth output folder: %s\r\n', groundtruth_output_dir);
  % NOT RECOMMENDED but doing for now. 
  % See https://www.mathworks.com/matlabcentral/answers/247272-problem-with-change-directory-in-a-for-loop
  % switch to output_dir before invoking job so that all outputs
  % associated with processing this subject are in the same result sub folder
  % END NOT RECOMMENDED
  cd(groundtruth_output_dir);
  % invoke job
  spm_jobman('run', jobs, inputs{:});
end

