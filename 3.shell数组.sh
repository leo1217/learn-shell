#!/bin/bash
echo 'shell数组'
:<<说明-----
数组元素的下标由0开始。
Shell 数组用括号来表示，
元素用"空格"符号分割开，语法格式如下：
array=(value1 value2 value3)
也可以分行写
array=(
value1 
value2 
value3
)

也可以使用下标来定义数组(下标可以不连续):

array_name[0]=value0
array_name[1]=value1
array_name[3]=value2

说明-----



array=(
value1 
value2 
value3
)
echo "所有数组元素（*或@可以获取所有数组元素）："${array[@]}

echo "遍历数组元素："
for v in ${array[@]}; do
    echo $v
done;




echo "获取数组长度："${#array[@]}