# CPU
lscpu
cat /proc/cpuinfo
# GPU
#PCI(Peripheral Component Interconnect)是一种由英特尔（Intel）公司1991年推出的用于定义局部总线的标准。
lspci 
# ? 登录节点没有GPU
# 是的，看来要提交一个job，把nvidia-smi的信息打印到文件，我们才能看到。

# InfiniBand网卡
lspci | grep Mellanox

# 拓扑信息
hwloc-info
nvidia-smi topo -m
