# @Author: Jiang Guoxi
# @Date:   2016-07-14 12:41:03
# @Last Modified by:   Jiang Guoxi
# @Last Modified time: 2016-07-14 14:12:31
# bash shell 只支持一维数组
#      用括号表示
#      用空格分隔
ary=(a b c d);
ary[5]=e;

echo ${ary[5]};

# 获取数组长度
echo ${#ary[*]};

# 访问整个数组的时候要用${ary[*]}或者${ary[@]}
for i in ${ary[*]}; do
  echo $i;
done;

echo ${ary[*]};
