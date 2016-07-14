# @Author: Jiang Guoxi
# @Date:   2016-07-14 14:13:12
# @Last Modified by:   Jiang Guoxi
# @Last Modified time: 2016-07-14 14:30:52
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
