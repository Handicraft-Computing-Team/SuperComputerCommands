# 下载解压
cd ~/download
wget 软件.tar.xz
tar -xf 软件.tar.xz
cd 软件
# 创建文件夹
mkdir build
cd build
# 获取cmake等环境
conda activate devcpp
# 编译
cmake ..
make -j 32
# 安装
export DESTDIR=/work/ssc-07/team/softwares/
make install
# 设置环境变量
editor=vim
editor=code
editor=code-insiders
$editor ~/.bashrc
# 在最后添加环境变量，比如


# 运行失败怎么办？
# 情况1：加载动态库失败，比如 libtinfow.so.6: cannot open shared object file: No such file or directory
# 首先可以用ldd来查看一个可执行文件依赖了哪些动态库
ldd /work/ssc-07/team/softwares/usr/local/bin/fish # 查看fish依赖了哪些动态库，哪些缺失了。
# 然后可以用find/locate命令来查找这些动态库
# 如果

# 如果找不到，可以spack安装
