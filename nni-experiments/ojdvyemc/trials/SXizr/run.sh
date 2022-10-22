#!/bin/bash
export NNI_PLATFORM='local'
export NNI_EXP_ID='ojdvyemc'
export NNI_SYS_DIR='/home/sgupta45/nni-experiments/ojdvyemc/trials/SXizr'
export NNI_TRIAL_JOB_ID='SXizr'
export NNI_OUTPUT_DIR='/home/sgupta45/nni-experiments/ojdvyemc/trials/SXizr'
export NNI_TRIAL_SEQ_ID='0'
export NNI_CODE_DIR='/home/sgupta45/test2/Hyperparameter-Optimization-NNI'
cd $NNI_CODE_DIR
eval 'python3 model_vae.py' 1>/home/sgupta45/nni-experiments/ojdvyemc/trials/SXizr/stdout 2>/home/sgupta45/nni-experiments/ojdvyemc/trials/SXizr/stderr
echo $? `date +%s%3N` >'/home/sgupta45/nni-experiments/ojdvyemc/trials/SXizr/.nni/state'