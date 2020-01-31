# mesh_demo
A small demo of how to use mesh tensorflow


## Instructions to setup at NERSC

Here are the instructions for installing and running on Cori-GPU. More info about
this machine here: https://docs-dev.nersc.gov/cgpu/

0) Login to a cori-gpu node to prepare the environment:
```
$ module add esslurm
$ salloc -C gpu -N 1 -t 30 -c 10 --gres=gpu:1 -A m1759
```

1) First install dependencies
```
$ module purge && module load  tensorflow/gpu-2.0.0-py37 esslurm gcc/7.3.0
$ pip install --user mesh-tensorflow
```

3) Clone this repo
```
$ git clone https://github.com/EiffL/mesh_demo.git
$ cd mesh_demo
```

4) To run the demo:
```
$ sbatch demo_job.sh
```
