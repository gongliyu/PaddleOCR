#!/usr/bin/env bash
for DS in iiit5k svt ic03 ic13
do
    python3 -m paddle.distributed.launch --gpus '0,1' tools/eval.py -c configs/rec/ch_ppocr_v2.0/rec_chinese_common_eval_v2.0_iiit5k.yml -o Global.checkpoints=./pre-trained/ch_ppocr_server_v2.0_rec_pre/best_accuracy --use-gpu=True
done

# python3 tools/eval.py
