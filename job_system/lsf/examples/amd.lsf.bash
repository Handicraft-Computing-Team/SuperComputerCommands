#!/bin/bash
## !/bin/sh
## 任务名、 队列名。
#BSUB -J "test-amd"
#BSUB -q ssc-cpu 

## R=Resource requirements  资源需求
# 指定AMD的两个CPU节点 
##BSUB -R "select[hname=='b05u23g' || hname=='b05u29a']"
#BSUB -R "select[hname=='b05u29a' || hname=='b05u23g']"
# rusage=resource usage
##BSUB -R "rusage[mem=10000]" ## 任务最大内存，单位是MB

##BSUB -n 3 ##number of total cores
##BSUB -n 1024 ##number of total cores

#BSUB -W 12:00 ## 任务最长运行时间，单位是hh:mm

#BSUB -e out/%J.err ## 任务的stderr文件。 %J 代表任务名
#BSUB -o out/%J.out ## 任务的stdout文件。 %J 代表任务名
date
# lscpu
# 得到的只有一个cpu
# mpirun -f $LSB_DJOB_HOSTFILE -n 2 -ppn 1 lscpu
mpirun -f $LSB_DJOB_HOSTFILE -n 256 -ppn 1 lscpu | grep 'Model name'
# cat /proc/cpuinfo
date
echo 结束了

## 运行命令
## bsub<this_script