#!/usr/bin/env bash
#SBATCH --cpus-per-task 12
#SBATCH --gpus=1
#SBATCH --time=24:00:00
#SBATCH --partition=dinesh-compute
#SBATCH --qos=dinesh-high
#SBATCH --job-name=gym-kuka-ablation

python3 modified_learn_environment.py --param_file=ablation_studies/peg_insertion/baselines/NoGravityMinBaselineImpedanceV2PegInsertion:PPO2.json >baseline_ablation_no_gravity_min_baseline.out 2>&1 &
python3 modified_learn_environment.py --param_file=ablation_studies/peg_insertion/baselines/NoGravityBaselineImpedanceV2PegInsertion:PPO2.json >baseline_ablation_no_gravity_baseline.out 2>&1 &
python3 modified_learn_environment.py --param_file=ablation_studies/peg_insertion/baselines/NoGravityMinBaselineObsNormImpedanceV2PegInsertion:PPO2.json >baseline_ablation_no_gravity_min_baseline_obs_norm.out 2>&1 &
python3 modified_learn_environment.py --param_file=ablation_studies/peg_insertion/baselines/GravityMinBaselineImpedanceV2PegInsertion:PPO2.json >baseline_ablation_min_baseline.out 2>&1 &
wait