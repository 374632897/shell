# @Author: Jiang Guoxi
# @Date:   2016-07-14 17:39:57
# @Last Modified by:   Jiang Guoxi
# @Last Modified time: 2016-07-14 17:47:43
# 配合if使用
a=$1;
echo "a is ${a}";
# o(╯□╰)o  需要用$访问才能够表示变量啊→＿←
if [ $a == 11 ]
  then echo 'a === 11';
elif [ $a == 13 ]
  then echo 'a === 13';
elif [ $a == 12 ] # 表示else if 一定要接then
  then echo 'a === 12';
elif [ -e $a ]
  then echo a is empty;
else
  echo ${a};
fi;
