# 参考 https://zhuanlan.zhihu.com/p/426743137
# 参考 https://spack.readthedocs.io/en/latest/getting_started.html

# Spack的安装
TargetPath=~/program_files/managers/
mkdir $TargetPath -p
cd $TargetPath 
git clone -c feature.manyFiles=true https://github.com/spack/spack.git
cd spack/bin
# ./spack install zlib
echo >>~/.bashrc

# 查看现在可用的编译器
spack compilers

# 搜索已经安装的包
spack find 
# 搜索可用的包
spack list
# 查看一个包的信息
spack info cmake
# 查看一个包的历史版本
spack versions cmake
# 了解当前服务器的架构。？实际上打出了操作系统内核版本，没有架构
spack arch
# 所有可能的架构
spack arch --known-targets
# 安装一个包
spack install cmake

# 报错了怎么办？
# 情况1： 一些包的依赖包没有安装，比如cmake依赖openssl，那么就先安装openssl
# !! 上述说法并不正确， spack能够进行自动依赖安装，装不上的情况可能是网络问题或者是版本依赖冲突。
# 如果是网络问题可以尝试直接重新输入先前的指令，如果仍然出现问题的话可以尝试指定一下缺少库的版本。


