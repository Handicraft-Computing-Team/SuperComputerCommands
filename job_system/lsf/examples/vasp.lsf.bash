#!/bin/sh
# VASP是维也纳大学Hafner小组开发的进行电子结构计算和量子力学-分子动力学模拟软件包。#!/bin/sh
#BSUB -J N_F ##job name
#BSUB -q short ##queue name
#BSUB -n 80 ##number of total cores
#BSUB -R "span[ptile=40]" ##40 cores per node
#BSUB -W 12:00 ##walltime in hh:mm
#BSUB -R "select[hname!='r13n18']" ##exclusive r13n18
#BSUB -e out/err.log ##error log
#BSUB -o out/H.log ##output log
module load intel/2018.4 mpi/intel/2018.4 vasp/5.4.4
mpirun vasp_std &>log