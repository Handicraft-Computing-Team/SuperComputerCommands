# 查看所有运行任务的详细情况
bjobs
# 查看 JOBID 这个任务的详细情况
bjobs –l JOBID
# 跟踪查看某任务屏幕输出
bpeek –f JOBID
# 终止某任务运行
bkill JOBID
# 终止多个任务运行
bkill JOBID1 JOBID2 JOBID3
# 查看所有任务队列的状态
bqueues 
# 临时挂起某个计算作业，为其它计算腾出资源
bstop JOBID 
# 恢复由 bstop 挂起的作业
bresume JOBID 
# 查看节点的信息
lshosts 
# 查看节点的作业使用信息
bhosts 
# 查看节点的即时负载信息
lsload 
# 查看提交的作业的负载和状态
jobToLoad JOBID
# 查看用户所有作业的负载和状态
jobToLoad -a