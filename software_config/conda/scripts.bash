# 1. 下载安装脚本
# 下载链接可以从这两个地方找到
# 官网： https://www.anaconda.com/products/distribution#Downloads
# 清华镜像站：https://mirrors.tuna.tsinghua.edu.cn/help/anaconda/
# Sustech mirror http://mirrors.sustech.edu.cn/anaconda/ 
# ^ Recommended if you are using QiMing or TaiYi
wget http://mirrors.sustech.edu.cn/anaconda/archive/Anaconda3-5.3.1-Linux-x86_64.sh

# 2. 运行安装脚本
./Anaconda3-5.3.1-Linux-x86_64.sh
# 3. 集成到shell
conda init

# 4. 浏览器查看可以安装的包
https://anaconda.org/anaconda/repo

# 5. Set up mirror
# http://mirrors.sustech.edu.cn/help/anaconda.html

# 6. create environment
conda create -n my_env ## or any other names
conda activate my_env
conda install python=3.11 
