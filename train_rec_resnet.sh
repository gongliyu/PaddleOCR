#!/usr/bin/env bash
#SBATCH --job-name=resnet34
#SBATCH --gres=gpu:1
#SBATCH --time=5-00:00:00
#SBATCH --partition batch


source ~/opt/anaconda3/bin/activate
conda activate ppocr-gpu


python3 tools/train.py -c configs/rec/ch_ppocr_v2.0/rec_en_sc_common_train_v2.0.yml 
