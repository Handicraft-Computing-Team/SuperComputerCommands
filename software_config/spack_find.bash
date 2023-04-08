# 列出所有已安装的软件包
$ spack find

# 列出指定名称的软件包，可能会搜出多个同名软件包
$ spack find hdf5

# '@'用于指定软件包版本
$ spack find hdf5@1.10.7

# '%'用于指定编译器，编译器后面可接'@'继续限定编译器版本
$ spack find hdf5@1.10.7%gcc@10.2.0

# '^'用于指定依赖项，可以有多个
$ spack find hdf5@1.10.7%gcc ^openmpi

# '+'、'~'或'='用于指定编译该软件包所用的选项（称为variants）
$ spack find hdf5@1.10.7 +mpi ~fortran

# 查看软件包的编译选项和依赖项，并且注明编译器的版本
$ spack find -vd --show-full-compiler hdf5

# 查看软件包的hash值和安装路径
# 虽然这些软件包是同名、同版本的，但它们的编译选项、编译器、依赖项各不相同，因此
# 有不同的spec，产生不同的hash值。hash值也可以在加载软件包的时候使用。
$ spack find -L --paths hdf5