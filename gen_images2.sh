#!/bin/bash

class_lst=(impressionism realism romanticism expressionism baroque post_impressionism art_nouveau surrealism ukiyo_e renaissance)
for i in {0..9}; do
    echo ${class_lst[$i]}
    python gen_images.py --outdir=out/32/${class_lst[$i]} --trunc=1.0 --seeds=0-4999 --network=training-runs/00010-fastgan-artcifar-10-python-gpus8-batch64/best_model.pkl --class=$i
done