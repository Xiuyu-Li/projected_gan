#!/bin/bash

python gen_images.py --outdir=out/256/impressionism --trunc=1.0 --seeds=0-199 --network=training-runs/00011-fastgan-impressionism_lmdb-gpus8-batch64/best_model.pkl