#!/usr/bin/env bash
#SBATCH --job-name=crnn_mv3large_neck96_len100
#SBATCH --gres=gpu:1
#SBATCH --time=5-00:00:00
#SBATCH --partition batch


source ~/opt/anaconda3/bin/activate
conda activate ppocr-gpu


python3 tools/train.py -c configs/rec/train/crnn_mv3large_neck96_len100.yml
