import sys
import matlab.engine
eng = matlab.engine.start_matlab()
#g='scwsub-CC00162XX06_ses-53600_T2w.nii'
#t0='wsub-CC00162XX06_ses-53600_T2w_watershed.nii'
#ret = eng.nii_dice(g,t0)
#print(ret)

g=sys.argv[1]
t0=sys.argv[2]

ret = eng.nii_dice(g,t0)
print(ret)
