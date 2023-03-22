#!/bin/bash

# Script for training/ evaluation in non-interactive sessions on supercloud
# Submit via `LLsub supercloud_run.sh -s 20 -g volta:1` and show status via `LLstat`
# Logs are written to `supercloud_run.sh.log-{job_id}`

# NOTE: Need to set wandb to offline (in config: logging->mode->offline)

source /etc/profile

module load anaconda/2022a
module load cuda/11.6

export NUMEXPR_MAX_THREADS=40

# Replace this with the desired script
python train.py \
    --config-dir=. --config-name=image_pusht_diffusion_policy_cnn.yaml \
    training.seed=42 training.device=cuda:0 \
    hydra.run.dir='data/outputs/${now:%Y.%m.%d}/${now:%H.%M.%S}_${name}_${task_name}'
