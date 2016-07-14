# @Author: Jiang Guoxi
# @Date:   2016-07-14 18:27:26
# @Last Modified by:   Jiang Guoxi
# @Last Modified time: 2016-07-14 18:36:31
# 函数必须在使用之前先定义才行。
# 函数参数的访问可以通过类似访问命令行参数的方式来访问
# 函数参数的传入可以通过类似命令行参数的方式来传入。
say () {
  echo 'My name is Jiangxi';
}
funcWithReturn () {
  echo '请输入第一个数';
  read num1;
  echo '请输入第二个数';
  read num2;
  return $(($num1 + $num2)); # 双圆括号
}
echo -----------函数执行开始------------------;
say;
echo -----------函数执行结束------------------;
echo -----------带有return的------------------;
funcWithReturn;
echo $?; # $? 表示上一次运行函数得到的返回值

