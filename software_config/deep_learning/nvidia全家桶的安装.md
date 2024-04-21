## nvidia-smi
注意，nvidia显卡的驱动和CUDA是两个不同的软件，不要误以为nvidia-smi这个命令的存在就以为cuda安装好了
nvidia-smi只是意味着显卡驱动安装好了。
对于有调度系统的HPC环境，你往往无法在登录节点看到nvidia-smi，但是这只是意味着你在登录节点无法实际执行GPU运算，
不代表你不可以用CPU和编译器去编译、安装、配置对应的CUDA库、Pytorch库。
环境没有CPU不意味着Pytorch-GPU版不能安装。

## pytorch
```bash
conda install pytorch torchvision torchaudio pytorch-cuda=11.8 -c pytorch -c nvidia
```
注意，Pytorch本身不带有cuda，只是带有对应cuda的接口调用代码，所以不要看到“pytorch-cuda=11.8” 你就以为上面的命令可以足够保证你运行pytorch，这是错误理解。

## spack 安装 

```bash
spack install cuda@11.8
spack install cuda@12.1
spack load cuda@11.8
```
这个不赘述了
有可能会遇到
https://github.com/conda-forge/cudatoolkit-dev-feedstock/issues/44
https://forums.developer.nvidia.com/t/change-the-path-of-install-log-when-installing-cuda-toolkit/183179

## conda 安装
综合博客信息，
https://blog.csdn.net/LIWEI940638093/article/details/113811563
我们有一个更好的安装方式

```bash
# https://anaconda.org/nvidia/repo
conda activate $env_name
conda install nvidia/label/cuda-11.8.0::cuda-toolkit # 这个安装的cuda库
conda install nvidia/label/cuda-11.8.0::cuda-nvcc # 这个安装的是命令行工具 nvcc
nvcc --version # 可以看到有
conda install conda-forge::cudnn 
export CUDA_HOME=~/conda/envs/$env_name
```

验证方式, 打开python
```python
import torch
print(torch.version.cuda)
print(torch.backends.cudnn.version())
```

