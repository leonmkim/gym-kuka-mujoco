#!/usr/bin/env bash
#SBATCH --cpus-per-task 12
#SBATCH --gpus=1
#SBATCH --time=40:00:00
#SBATCH --partition=dinesh-compute
#SBATCH --qos=dinesh-high
#SBATCH --job-name=gym-kuka-ablation

## normalized
python3 modified_learn_environment.py --param_file=ablation_studies/peg_insertion/cluster/normalized/ID1ImpedanceV2PegInsertion:PPO2.json >ID1.out 2>&1 &
python3 modified_learn_environment.py --param_file=ablation_studies/peg_insertion/cluster/normalized/ID2ImpedanceV2PegInsertion:PPO2.json >ID2.out 2>&1 &
python3 modified_learn_environment.py --param_file=ablation_studies/peg_insertion/cluster/normalized/ID3ImpedanceV2PegInsertion:PPO2.json >ID3.out 2>&1 &
python3 modified_learn_environment.py --param_file=ablation_studies/peg_insertion/cluster/normalized/ID4ImpedanceV2PegInsertion:PPO2.json >ID4.out 2>&1 &

## non normalized
# python3 modified_learn_environment.py --param_file=ablation_studies/peg_insertion/cluster/non-normalized/ID01ImpedanceV2PegInsertion:PPO2.json >baseline_ablation_ID01.out 2>&1 &
# python3 modified_learn_environment.py --param_file=ablation_studies/peg_insertion/cluster/non-normalized/ID02ImpedanceV2PegInsertion:PPO2.json >baseline_ablation_ID02.out 2>&1 &
# python3 modified_learn_environment.py --param_file=ablation_studies/peg_insertion/cluster/non-normalized/ID03ImpedanceV2PegInsertion:PPO2.json >baseline_ablation_ID03.out 2>&1 &
# python3 modified_learn_environment.py --param_file=ablation_studies/peg_insertion/cluster/non-normalized/ID04ImpedanceV2PegInsertion:PPO2.json >baseline_ablation_ID04.out 2>&1 &

wait