%-----------------------------------------------------------------------
% Job saved on 10-Dec-2018 12:21:23 by cfg_util (rev $Rev: 6942 $)
% spm SPM - SPM12 (7219)
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------
%fprintf('My Inputs\r\n');
matlabbatch{1}.spm.spatial.normalise.write.subj.def = {'<UNDEFINED>'};
matlabbatch{1}.spm.spatial.normalise.write.subj.resample = {'<UNDEFINED>'};
matlabbatch{1}.spm.spatial.normalise.write.woptions.bb = [-78 -112 -70
                                                          78 76 85];
matlabbatch{1}.spm.spatial.normalise.write.woptions.vox = [0.5 0.5 0.5];
matlabbatch{1}.spm.spatial.normalise.write.woptions.interp = 4;
matlabbatch{1}.spm.spatial.normalise.write.woptions.prefix = 'w';
matlabbatch{2}.spm.util.imcalc.input(1) = cfg_dep('Normalise: Write: Normalised Images (Subj 1)', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('()',{1}, '.','files'));
matlabbatch{2}.spm.util.imcalc.output = '';
matlabbatch{2}.spm.util.imcalc.outdir = {''};
matlabbatch{2}.spm.util.imcalc.expression = 'i1.*(i1>2)';
matlabbatch{2}.spm.util.imcalc.var = struct('name', {}, 'value', {});
matlabbatch{2}.spm.util.imcalc.options.dmtx = 0;
matlabbatch{2}.spm.util.imcalc.options.mask = 0;
matlabbatch{2}.spm.util.imcalc.options.interp = 1;
matlabbatch{2}.spm.util.imcalc.options.dtype = 4;
% move w* and y_* intermediate files to output_dir
%movefile(strcat('w*',strrep(matlabbatch{1}.spm.spatial.normalise.write.subj.resample,',1','')));
%movefile(strcat('y_*',strrep(matlabbatch{1}.spm.spatial.normalise.write.subj.resample,',1','')));
