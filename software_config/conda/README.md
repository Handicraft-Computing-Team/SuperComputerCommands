# Miniconda
## Installation
```bash
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
sh Miniconda3-latest-Linux-x86_64.sh
```
Terminal needs to be restarted.

## Create Environment
```bash
conda create -n my_env python=3.11 # or any other environment name and python version you need
conda activate my_env
conda install numpy
```
[Reference](https://conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html)

## Install PyTorch with CUDA Support
### Check CUDA Version
First, you need to check your cuda version accordingly.
If the node that you are configuring is the same as the computing node, you can use
```bash
nvidia-smi
```
to check your cuda version from the output:
```
Thu Aug  8 16:51:54 2024       
+-----------------------------------------------------------------------------+
| NVIDIA-SMI 520.61.05    Driver Version: 520.61.05    CUDA Version: 11.8     |
|-------------------------------+----------------------+----------------------+
| GPU  Name        Persistence-M| Bus-Id        Disp.A | Volatile Uncorr. ECC |
| Fan  Temp  Perf  Pwr:Usage/Cap|         Memory-Usage | GPU-Util  Compute M. |
|                               |                      |               MIG M. |
|===============================+======================+======================|
|   0  Tesla V100-PCIE...  On   | 00000000:03:00.0 Off |                    0 |
| N/A   23C    P0    23W / 250W |      0MiB / 16384MiB |      0%      Default |
|                               |                      |                  N/A |
+-------------------------------+----------------------+----------------------+
```
here at the upper right corner we can see that the cuda version is 11.8.

If you are using cuda installed from spack or loading module installed by the admin, `which nvcc` will work as well.

### Installation
Suppose your cuda version is 11.7, then you can goto [https://download.pytorch.org/whl/cu117](https://download.pytorch.org/whl/cu117) to find the available torch version.
Then install with the following command:
```bash
pip3 install torch==1.13.1+cu117 --extra-index-url https://download.pytorch.org/whl/cu117 --no-cache-dir
```
[reference](https://stackoverflow.com/questions/70340812/how-to-install-pytorch-with-cuda-support-with-pip-in-visual-studio)

After installation, you can use
```bash
python -c "import torch; print(torch.cuda.is_available())"
```
to check if your installation is successful.
