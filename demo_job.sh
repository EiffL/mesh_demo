#!/bin/bash
#SBATCH --nodes=1
#SBATCH --tasks-per-node=1
#SBATCH --constraint=gpu
#SBATCH --time=5
#SBATCH --gres=gpu:8
#SBATCH --exclusive -A m1759
module purge && module load  tensorflow/gpu-2.0.0-py37 esslurm gcc/7.3.0
srun python mnist.py > log
