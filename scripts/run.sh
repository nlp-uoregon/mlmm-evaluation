#!/bin/bash
lang=$1
model_path=$2
tasks=arc_${lang},hellaswag_${lang},mmlu_${lang}
device=cuda

python main.py \
    --tasks=${tasks} \
    --model_args pretrained=${model_path} \
    --device=${device}
