# @Author: Jiang Guoxi
# @Date:   2016-07-14 15:26:38
# @Last Modified by:   Jiang Guoxi
# @Last Modified time: 2016-07-14 15:40:33
# 显示变量
# read 从标准输入中读取一行并赋给指定变量, 调用之后会提示你输入
# 开启转义需要传递参数 -e , -e需要在字符串的前面。
# \n 换行 \c 不换行
# # 可使用管道操作符
# 使用双引号原样输出字符串， 不进行转义或者读取变量
# 显示命令执行结果 使用反引号 ``
# echo -e "Please input your name: \n";

# read name;
# echo The name you set is $name;

# echo  -e 'Please input your age: \n';
# read age;
# echo Your age is $age;

echo -e 'name \c';
echo hello;

echo `date`;

echo `pwd`;
# echo `ls`;

# 不能直接将命令执行的结果赋值给变量？
# 可以， 但是ll为什么不行？ 得ls -l才行
# val=`ls`;
val=`ls -l`;
echo $val;
