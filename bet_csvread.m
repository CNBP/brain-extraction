%fileID = fopen('./Ground_Truth_and_Results_Source_Normalized - Sheet1.csv');
fileID = fopen('./Ground_Truth_and_Results_Source_Normalized_and_Unnormalized - Sheet1.csv');
Data = textscan(fileID,'%s %s %s %s','Delimiter',',','EmptyValue',-Inf);
fclose(fileID);

% Get dimensions of matrix
[rows,cols] = size(Data);
fprintf('Rows: %d, Columns: %d\r\n', rows, cols);

% Calculate DICE for each Column. Column 2 contains the Ground Truth entries.
% Colmns 2 onwards are the extraction results. 
% Each column has the results for a specific tool
ground_truth_column = Data{1};

fprintf('======DICE coefficients=====\r\n');
fprintf('GroundTruth,Extraction,DICE\r\n');
% BET extraction results are in Column 3
for c = 3:3
  extraction_column = Data{c};
  call_nii_dice(ground_truth_column,extraction_column);
end

