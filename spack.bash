# 参考 https://zhuanlan.zhihu.com/p/426743137
# 参考 https://spack.readthedocs.io/en/latest/getting_started.html

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

