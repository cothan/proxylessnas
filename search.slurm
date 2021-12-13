#!/bin/bash 

#SBATCH --job-name=proxyless_nas
#SBATCH --partition=gpuq
#SBATCH --gres=gpu:2
#SBATCH --output=/scratch/dnguye69/proxylessnas/argo_logs/search-%x-%N-%j.out  # Output file
#SBATCH --error=/scratch/dnguye69/proxylessnas/argo_logs/search-%x-%N-%j.err   # Error file
#SBATCH --nodes=4
#SBATCH --ntasks-per-node=6
#SBATCH --mem=128G

module purge
# module load pytorch/1.4.0-p37
module load cuda/10.1
# module load NetKet/tqdm/4.45.0
source /scratch/dnguye69/proxylessnas/yaml/bin/activate

python search/imagenet_arch_search.py --path /scratch/dnguye69/

