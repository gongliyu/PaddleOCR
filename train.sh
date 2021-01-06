#!/usr/bin/env bash

# python3 -m paddle.distributed.launch --gpus '0,1,2,3'  tools/train.py -c configs/rec/rec_icdar15_train.yml

python3 tools/train.py -c configs/rec/ch_ppocr_v2.0/rec_en_sc_common_train_v2.0.yml 
