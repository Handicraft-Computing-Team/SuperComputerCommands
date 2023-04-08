# 创建一个名为python3的空环境
$ spack env create python3

# 查看目前有哪些环境
$ spack env list

# 激活Spack环境
$ spack env activate python3

# 查看当前位于哪个环境中
$ spack env status

# 查看当前环境中有哪些软件包
$ spack find

# 添加一些抽象specs到环境中
$ spack add py-numpy py-h5py

# 执行concretize，解析所有依赖
$ spack concretize --force

# 已安装的specs会直接加到环境中，若对concretize的结果不满意，可以修改specs
# 一个环境只有一个配置文件，其他诸如packages等配置作为子节点写在其中
$ spack config edit

# 查看目前concretize的结果
$ spack find -c

# 安装所有软件包及依赖项
$ spack install