#!/usr/bin/env bash

export PYTHONPATH=./
export CUDA_VISIBLE_DEVICES=0  # Choose GPU 0

export TORCH_CUDA_ARCH_LIST="8.9"
export CUDA_LAUNCH_BLOCKING=1
export PYTHONFAULTHANDLER=1

python tools/train.py configs/svg/svg_pointT.yaml \
    --exp_name single_gpu_original_config2 \
    --work_dir work_dirs/svg_pointT/single_gpu/original_config2