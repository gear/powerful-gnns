#!/bin/bash

# Run all datasets with the default parameters
cd ..
source activate graph
for batch_size in 64 128 256 512 
do
    echo Processing MUTAG at batch size $batch_size ...
    python main.py --dataset MUTAG --batch_size $batch_size > ./logs/MUTAG_bs_$batch_size.log
    echo Done.
done
