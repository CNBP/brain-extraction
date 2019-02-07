% List of open inputs
jobfile = {'./Experiments/CPS/code/normalizeandimagecalc_job.m'};
input_vol = '';
output_dir = '';
subjDir = './Experiments/CPS/data/*/';
output_dir = './normalized/test2/normalized';
myFiles = dir(fullfile(subjDir,'*.nii')); %gets all nii files in struct
nrun = length(myFiles); % number of runs equal to number of subject files to test
inputs = cell(3,1);
spm('defaults', 'FMRI');
for k = 1:nrun
  % reset jobs struct
  jobs = repmat(jobfile, 1, 1);
  % reste inputs structure
  inputs = cell(3,1);
  fileFolder = myFiles(k).folder;
  baseFileName = myFiles(k).name;
  fullFileName = fullfile(fileFolder, baseFileName);
  input_vol = strcat(fullFileName,',1');
  resampled_output_vol = input_vol;
  % create path to folder of subject normalized volume
  output_dir = fileFolder;
  % replace 'data' with 'test/normalized'
  output_dir = strrep(output_dir,'data','test/normalized');
  % Arguments for job script
  inputs{1,1} = cellstr(input_vol);
  inputs{2,1} = cellstr(input_vol);
  inputs{3,1} = cellstr(output_dir);
  %fprintf('File: %s\r\n', fullFileName);
  %fprintf('Folder: %s\r\n', myFiles(k).folder);
  fprintf('output_dir: %s\r\n', output_dir);

  % NOT RECOMMENDED but doing for now. 
  % See https://www.mathworks.com/matlabcentral/answers/247272-problem-with-change-directory-in-a-for-loop
  % switch to output_dir before invoking job so that all outputs
  % associated with processing this subject are in the same result sub folder
  % END NOT RECOMMENDED
  cd(output_dir);

  % Invoke jobman
  spm_jobman('run', jobs, inputs{:});
end

