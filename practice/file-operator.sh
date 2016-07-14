# @Author: Jiang Guoxi
# @Date:   2016-07-14 15:04:03
# @Last Modified by:   Jiang Guoxi
# @Last Modified time: 2016-07-14 15:26:07
# 一些解释
# -b file [block]    是否是块设备文件
# -c file [char]     是否是字符设备文件
# -d file [dir]      是否是块设备文件
# -f file [file]     是否是普通文件（既不是目录， 也不是设备文件）
# -g file [SGID]     是否设置了SGID位
#   ---- SGID 可以用于目录或者可执行文件上
# -k file [block]    是否设置粘着位（Stichy Bit）
#   ---- Sticky属性只能应用在目录
#        当目录拥有Sticky属性所有在该目录中的文件或子目录无论是什么权限只有文件或子目录所有者和root用户能删除
# -u file [SUID]     是否设置了SUID位
#   ---- SUID属性只能运用在可执行文件上，当用户执行该执行文件时，会临时拥有该执行文件所有者的权限
#        使用ll命令的时候，如果要是可执行文件所有者权限的第三位是s， 则表明该文件具有SUID属性
#
# -p file [pipe]     是否是具名管道
# -r file [read]     是否具有读权限
# -w file [write]    是否具有写权限
# -x file [execute]  文件是否可执行
# -s file []         是否为空（大小 > 0）, 不为空则返回true
# -e file [exist]    文件（或目录）是否存在
#
file='../tests';
if [ -d $file ]
  then echo $file is a directory;
else
  echo $file is not a directory;
fi;

if [ -x './args.sh' ]
  then echo 'can execute';
else
  echo 'cannot execute';
fi;
echo '当前目录下的文件： ';
echo *;
echo '返回上一级目录： ';
cd ../;
echo *;

