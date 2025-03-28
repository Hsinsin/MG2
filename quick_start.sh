#!/bin/bash
export CUDA_VISIBLE_DEVICES=0 
export PYTHONPATH=/home/hsinzc/thesis/Awesome-Music-Generation:$PYTHONPATH
export PYTHONPATH=/home/hsinzc/thesis/Awesome-Music-Generation/data:$PYTHONPATH

CONFIG_YAML="MMGen_train/config/quick_start/quick_start.yaml"
LIST_INFERENCE="tests/captionlist/ChatGPT-4.0_prompt.lst"
RELOAD_FROM_CKPT="data/checkpoints/mg2-diffusion-checkpoint.ckpt"

python3 MMGen_train/infer.py \
    --config_yaml $CONFIG_YAML \
    --list_inference $LIST_INFERENCE \
    --reload_from_ckpt $RELOAD_FROM_CKPT