#!/usr/bin/env bash
# for DS in iiit5k svt ic03 ic13
# do
#     python3 -m paddle.distributed.launch --gpus '0,1' tools/eval.py -c configs/rec/ch_ppocr_v2.0/rec_chinese_common_eval_v2.0_iiit5k.yml -o Global.checkpoints=./pre-trained/ch_ppocr_server_v2.0_rec_pre/best_accuracy --use-gpu=True
# done

# heavy

# for DS in iiit5k svt ic03 ic13
# do
#     python3 tools/eval.py -c configs/rec/ch_ppocr_v2.0/rec_chinese_common_eval_v2.0_$DS.yml -o Global.checkpoints=./pre-trained/ch_ppocr_server_v2.0_rec_pre/best_accuracy
# done

# lite
# for DS in iiit5k svt ic03 ic13
# do
#     python3 tools/eval.py -c configs/rec/ch_ppocr_v2.0/rec_chinese_lite_eval_v2.0_$DS.yml -o Global.checkpoints=./pre-trained/ch_ppocr_mobile_v2.0_rec_pre/best_accuracy
# done


# en
for DS in iiit5k svt ic03 ic13
do
    python3 tools/eval.py -c configs/rec/multi_language/rec_en_number_lite_eval_$DS.yml -o Global.checkpoints=./pre-trained/en_number_mobile_v2.0_rec_train/best_accuracy
done


# python3 tools/eval.py
