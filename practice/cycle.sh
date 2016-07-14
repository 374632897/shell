int=1;
# 注意， 这里是双括号
# while ((int<=5))
# do
#   echo $int;
#   let 'int++'; # let 相当于执行一个或多个表达式， 其中的变量无需加$
#   # int=`expr ${int} + 1`;
# done;

####### while
# echo '按下CTRL + D退出： ';
# while read film
# do
#   echo "${film} is awesome";
# done;

######## until
# until (($int>10))
# do
#   echo $int;
#   let 'int++'; # 再次说说： let里面没有$
# done;

echo '输入1-4的数字： ';
echo '你输入的数字为： ';
# read num;
# case $num in
#   1) echo '1';; # 注意双分号 * 表示其他条件
#   2) echo '2';;
#   3) echo '3';;
#   4) echo '4';;
#   *) echo '你没有输入1-4的数字';
# esac;

while :
do
  read num;
  case $num in
    1|2|3|4|5) echo "你输入的数字是${num}";; # 用|表示分组
    *) echo '输入数字非法， 游戏结束'; break;;
  esac; # 原来 esac === 'case'.split().reverse().join();
done;
