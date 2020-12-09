#!/usr/bin/env bash
#SBATCH --cpus-per-task 12
#SBATCH --gpus=1
#SBATCH --time=40:00:00
#SBATCH --partition=dinesh-compute
#SBATCH --qos=dinesh-high
#SBATCH --job-name=gym-kuka-ablation

python3 modified_learn_environment.py --param_file=ablation_studies/peg_insertion/cluster/non-normalized/ID01ImpedanceV2PegInsertion:PPO2.json >baseline_ablation_ID01.out 2>&1 &
python3 modified_learn_environment.py --param_file=ablation_studies/peg_insertion/cluster/non-normalized/ID02ImpedanceV2PegInsertion:PPO2.json >baseline_ablation_ID02.out 2>&1 &
python3 modified_learn_environment.py --param_file=ablation_studies/peg_insertion/cluster/non-normalized/ID03ImpedanceV2PegInsertion:PPO2.json >baseline_ablation_ID03.out 2>&1 &
python3 modified_learn_environment.py --param_file=ablation_studies/peg_insertion/cluster/non-normalized/ID04ImpedanceV2PegInsertion:PPO2.json >baseline_ablation_ID04.out 2>&1 &
wait