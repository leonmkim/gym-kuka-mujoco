#!/usr/bin/env bash
#SBATCH --cpus-per-task 12
#SBATCH --gpus=1
#SBATCH --time=24:00:00
#SBATCH --partition=dinesh-compute
#SBATCH --qos=dinesh-high
#SBATCH --job-name=gym-kuka-ablation

# python3 modified_learn_environment.py --param_file=ablation_studies/peg_insertion/cluster/baselines/NoGravityMinBaselineImpedanceV2PegInsertion:PPO2.json >baseline_ablation_no_gravity_min_baseline.out 2>&1 &
# python3 modified_learn_environment.py --param_file=ablation_studies/peg_insertion/cluster/baselines/NoGravityMinBaselineObsNormImpedanceV2PegInsertion:PPO2.json >baseline_ablation_no_gravity_min_baseline_obs_norm.out 2>&1 &
# python3 modified_learn_environment.py --param_file=ablation_studies/peg_insertion/cluster/baselines/GravityMinBaselineImpedanceV2PegInsertion:PPO2.json >baseline_ablation_gravity_min_baseline.out 2>&1 &

# python3 modified_learn_environment.py --param_file=ablation_studies/peg_insertion/cluster/baselines/NoGravityBaselineObsNormImpedanceV2PegInsertion:PPO2.json >baseline_ablation_no_gravity_baseline_obs_norm.out 2>&1 &
# python3 modified_learn_environment.py --param_file=ablation_studies/peg_insertion/cluster/baselines/GravityBaselineImpedanceV2PegInsertion:PPO2.json >baseline_ablation_gravity_baseline.out 2>&1 &
# python3 modified_learn_environment.py --param_file=ablation_studies/peg_insertion/cluster/ID00ImpedanceV2PegInsertion:PPO2.json >baseline_ablation_ID00.out 2>&1 

python3 modified_learn_environment.py --param_file=ablation_studies/peg_insertion/cluster/baselines/GravityBaselineNoTipVelImpedanceV2PegInsertion:PPO2.json >gravity_baseline_no_tip_vel.out 2>&1 &
python3 modified_learn_environment.py --param_file=ablation_studies/peg_insertion/cluster/non-normalized/ID05ImpedanceV2PegInsertion:PPO2.json >ID05.out 2>&1 &

wait