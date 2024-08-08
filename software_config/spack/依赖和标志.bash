# +号和Variant的使用
spack install mpileaks@1.1.2 %gcc@4.7.3 cppflags="-O3 -floop-block"
# Add special compile-time options by name
$ spack install mpileaks@1.1.2 %gcc@4.7.3 debug=True

# Add special boolean compile-time options with +
$ spack install mpileaks@1.1.2 %gcc@4.7.3 +debug

# 这两个真的一样吗？
# 回答：一样的，这里+并不是给./configure的参数，而是给spack的参数
# spack制作包的时候，写好了有哪些变种，对应哪些参数。
# 可以用spack info mpileaks看到

# Cross-compile for a different micro-architecture with target=
$ spack install mpileaks@1.1.2 target=icelake
# 问：这个参数是给谁的？

# ^依赖的使用
