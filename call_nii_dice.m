% Calls the nii_dice function
function res = call_nii_dice(ground_truth_column,extraction_column)
nrun = length(ground_truth_column);
erun = length(extraction_column);
for k = 1:nrun
  % ensure that we don't access extraction_column beyond its length
  if k<=erun
    g = ground_truth_column{k};
    e = extraction_column{k};
    %fprintf('Now processing: GT: %s, EX: %s \r\n', g, e);
    if isempty(g) | isempty(e)
      1+1;
    else
      res = nii_dice(g,e);
    end
  end
end
% Not interested in return value since it is printed in nii_dice
end

