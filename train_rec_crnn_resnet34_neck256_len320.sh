#!/usr/bin/env bash
#SBATCH --job-name=train_rec_crnn_resnet34_neck256_len300
#SBATCH --gres=gpu:1
#SBATCH --time=5-00:00:00
#SBATCH --partition batch


#source ~/opt/anaconda3/bin/activate
#conda activate ppocr-gpu

python3 tools/train.py -c configs/rec/train/crnn_resnet34_neck256_len320.yml
