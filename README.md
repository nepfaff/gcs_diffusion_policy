# GCS Diffusion Policy

See [Diffusion Policy README](README_DIFFUSION_POLICY.md) for additional information.

## Installation

Create a virtual environment:
```
python -m venv gcs_diffusion_policy_env
```

Activate the environment:
```
source gcs_diffusion_policy_env/bin/activate
```

Install the requirements:
```
pip install -r requirements.txt
```

Install the `diffusion_policy` package in development mode:
```
pip install -e .
```

## Training

```
python train.py --config-dir=experiment_configs --config-name=image_pusht_diffusion_policy_cnn.yaml training.seed=42 training.device=cuda:0 hydra.run.dir='data/outputs/${now:%Y.%m.%d}/${now:%H.%M.%S}_${name}_${task_name}'
```

## Credit

**TODO**
