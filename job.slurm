#!/bin/bash 

#SBATCH --job-name=proxyless_nas
#SBATCH --partition=gpuq
#SBATCH --gres=gpu:1
#SBATCH --output=/scratch/dnguye69/proxylessnas/argo_logs/%x-%N-%j.out  # Output file
#SBATCH --error=/scratch/dnguye69/proxylessnas/argo_logs/%x-%N-%j.err   # Error file
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=16
#SBATCH --mem=64G

module purge
module load pytorch/1.4.0-p37
module load cuda/10.1
module load NetKet/tqdm/4.45.0

python eval.py -d cifar10
