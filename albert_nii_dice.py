import matlab.engine
eng = matlab.engine.start_matlab()
ret = eng.albert_nii_dice()
print(ret)
