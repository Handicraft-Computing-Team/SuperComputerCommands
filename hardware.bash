# CPU
lscpu
cat /proc/cpuinfo
# GPU
#PCI(Peripheral Component Interconnect)是一种由英特尔（Intel）公司1991年推出的用于定义局部总线的标准。
lspci 
# ? 登录节点没有GPU

# InfiniBand网卡
lspci | grep Mellanox

# 拓扑信息
hwloc-info
nvidia-smi topo -m
