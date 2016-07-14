# 这里如果要是加了 #! usr/bin/bash 的话会请求权限
# @Author: Jiang Guoxi
# @Date:   2016-07-14 11:29:37
# @Last Modified by:   Jiang Guoxi
# @Last Modified time: 2016-07-14 11:55:16

# '='两边不能有空格， 否则会解析为命令， 报错 'myname: command not found'
myname='Jiang Xi';
echo $myname;

age=22;
readonly age;
age=23 # age: readonly variable
echo age;

# unset用于删除变量， 但是不能删除只读的变量
# unset myname;
# 字符串可以用单引号， 也可以用双引号， 也可以不用引号， 单双引号区别于php类似
# 双引号里可以使用转义字符和变量（php最新版本好像不能在双引号里用转义字符了？）
echo myname; # 'myname'
echo myname is Jiangxi;
# echo $myname; # \r 显示为空白行
# unset age;   # unset: age: cannot unset: readonly variable
# echo age;

str="$myname is $age years old"; # 这里如果要是不加双引号的话得到的是空白字符串
echo $str;

echo '-------------------String length ---------------------';
# ${#str}用于获取字符串长度
echo "The length of str --- ${str} is ${#str}";

# 字符串位置这里有点问题
echo `expr index "${str}" 22 `;


friends=(Daisy lynn);
echo ${friends[1]}; # 访问数组项， 需要将下标写在花括号内， 如果直接通过$friends[0]来访问的话， 得到的是Daisy
echo '------------------Array length -----------------------';
echo ${#friends[*]};
echo ${#friends[@]}; # 获取数组长度的时候需要将下标设为* 或者@
echo ${#friends[0]}; # 获取数组第一项的字符串的长度， 在没有指定下标的时候， 获取的默认为第一项
