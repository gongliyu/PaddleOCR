#!/usr/bin/env bash
#SBATCH --job-name=mv3-small
#SBATCH --gres=gpu:1
#SBATCH --time=5-00:00:00
#SBATCH --partition batch


source ~/opt/anaconda3/bin/activate
conda activate ppocr-gpu


python3 tools/train.py -c configs/rec/ch_ppocr_v2.0/rec_mv3_small.yml 
