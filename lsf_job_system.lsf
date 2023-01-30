#!/bin/sh
#BSUB -J "test" ## 任务名
## 队列名。
#BSUB -q ssc-e5 ## 单个超强CPU，203节点4872核心
##BSUB -q ssc-cpu ## 5个CPU，AMD和Intel混合，共计2304+64+256+128+128核心
##BSUB -q ssc-gpu ## 6个A100 GPU

##BSUB -m  ## 指定节点


#BSUB -n 48 ## 一共要求多少个核心
#BSUB -R "span[ptile=24]"  ## 每个节点上要求多少个核心
#BSUB -W 12:00 ## 任务最长运行时间，单位是hh:mm
##BSUB -R "rusage[mem=10000]" ## 任务最大内存，单位是MB

#BSUB -e out/%J.err ## 任务的stderr文件。 %J 代表任务名
#BSUB -o out/%J.out ## 任务的stdout文件。 %J 代表任务名

module load mpi/latest
export I_MPI_DEBUG=5
cd $LS_SUBCWD
date
mpirun -f $LSB_DJOB_HOSTFILE -n 2 -ppn 1 ./osu_bw
# nvidia-smi
date

## 运行命令
## bsub<lsf_job_system.lsf