#!/bin/bash
#SBATCH -J pg  # Job name
#SBATCH -o pg_cond%j.log  # Name of stdout output file (%j expands to jobId)
#SBATCH -e pg_cond%j.err  # Name of stderr output file
#SBATCH --mail-type=ALL
#SBATCH --mail-user=xl289@cornell.edu
#SBATCH -N 1  # Total number of CPU nodes requested
#SBATCH -n 8  # Total number of CPU cores requrested
#SBATCH -t 120:00:00  # Run time (hh:mm:ss)
#SBATCH --mem=50000  # CPU Memory pool for all cores
#SBATCH --partition=cuvl --gres=gpu:2080ti:8 -w goodfellow
#SBATCH --get-user-env

python train.py --outdir=./training-runs/ --cfg=fastgan --data=./data/artcifar-10-python.zip --gpus=8 --batch=64 --mirror=1 --snap=50 --batch-gpu=8 --kimg=10000 --cond=True --seed=1