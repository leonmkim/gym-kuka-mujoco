import os
import mujoco_py
from gym_kuka_mujoco import kuka_asset_dir

def create_sim(collision = False):
    if collision:
        # model_filename = 'full_kuka_mesh_collision.xml'
        # model_filename = 'full_peg_insertion_experiment_no_hole_no_gravity.xml'
        model_filename = 'full_falling_peg_no_gravity.xml'

    else:
        model_filename = 'full_kuka_no_collision.xml'
    model_path = os.path.join(kuka_asset_dir(), model_filename)
    model = mujoco_py.load_model_from_path(model_path)
    sim = mujoco_py.MjSim(model)
    return sim
