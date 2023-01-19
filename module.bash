# 可以加载的包
module avail
# 已经加载的包
module list
# 加载和取消加载
# module load 
# module unload
# 加载编译器
module load compiler/2022.1.0
which icc
icc --version
# 加载数学库、进程库、MPI库
module load mkl/latest
module load tbb/latest
module load mpi/latest
which mpicc
# module load mpi/intel/2022.1.0

# 加载 cuda
module load cuda/11.8
which nvcc
nvcc --version


