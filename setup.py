import os
from setuptools import setup, find_packages

with open('requirements.txt') as f:
    required = f.read().splitlines()

def get_files_recursive(root, ext='.xml'):
    matches = []
    for path, files, dirs in os.walk(root):
        matches.extend([os.path.join(path, f) for f in files if ext in f])
    return matches
    
    
print(matches)

setup(name='gym_kuka_mujoco',
      version='0.0.1',
      install_requires=required,
      packages=find_packages(),
      package_data={'': get_files_recursive('./gym_kuka_env/envs/assets', ext='.xml')},
      include_package_data=True
)
