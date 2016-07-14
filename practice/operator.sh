# @Author: Jiang Guoxi
# @Date:   2016-07-14 14:13:12
# @Last Modified by:   Jiang Guoxi
# @Last Modified time: 2016-07-14 14:58:03
# 原生bash不支持简单的数学运算，但是可以通过其他命令来实现，例如 awk 和 expr，expr 最常用。
# Notice:
#  * 表达式与运算符之间要有空格
#  * 完整的表达式要用反引号`包含
#  * 使用乘法运算的时候要对*进行转义， 不然会报错。 expr 5 \* 6


echo `expr 4 + 5`;
echo `expr 5 \* 10`;
echo `expr 10 / 2`;
echo `expr 5 % 3`;
echo `expr 6 - 4`;

# a=b=5; # 这里不能这样写。不然得到的结果是a='b=5'; 而b无值
a=5;
b=5;
c=6;
echo $a;
echo $b;
# 这里变量前后都要有空格 （方括号起止都要有）
# if [  ] then .. fi; 表示条件语句
if [ $a == $b ]
  then echo 'a equals to b';
fi;
if [ $a != $c ]
  then echo 'a does not equal to c';
fi;


echo ------------------- 关系运算符 ------------------------;

# 关系运算符只支持数值， 不支持字符串，除非字符串的值是数字
# -eq -ne  -gt -lt -ge -le
if [ $a -eq $b ]
  then echo 'a equals to b';
fi;

if [ $a -lt $c ]
  then echo 'a is less than c';
fi;

if [ $a -ge $c ]
  then echo 'a is great than b or equals to c';
else
  echo 'a is less than c';
fi;

echo ------------------- 布尔运算符 ------------------------;

# ! [非]   -o or [或]   -a all [与]  # 用于表达式
default_commit_message=':smirk:';
if [ $1 ]
  then default_commit_message=$1;
fi;
echo $default_commit_message;

if [ 5 -o 0 ]
  then echo 'true';
fi;

if [ 5 -a 0 ]
  then echo 'true';
else
  echo 'false';
fi;

# 0 在这里也是true
if [ 0 -o 0 ]
  then echo '0 is true';
else
  echo '0 is not true';
fi;

if [ 5 -a 0 -eq 0 ]
  then echo 'true';
else
  echo 'false';
fi;

echo --------------------- 逻辑运算符 --------------------------;
# && || 双方括号
if [ false ] # 这里也是true
  then echo 'false is true';
fi;

if [[ true && false ]]
  then echo 'true'
else
  echo 'false';
fi;

# 下面这样做是不行的， 得到的结果是[[ 应该是因为[[]]或者[]只能用于if ?
# val=[[ $1 || 'hello world' ]];
# echo $val;
#

echo --------------------- 字符串运算符 --------------------------;
# = 检测字符串是否相等
# != 检测两个字符串是否不等
# -z 检测字符串长度是否为0
# -n 检测字符串长度是否不为0
# str 检测字符串是否不为空 [ $1 ]

if [ 'abc' = 'abc' ]
  then echo 'abc === abc';
fi;

if [ -z '' ]
  then echo 'str is empty!!!';
fi;

