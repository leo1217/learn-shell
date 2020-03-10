#!/bin/bash



# echo "Hello World !"
# str="haha"
# echo $str


# echo `ps -a | grep mongo`
# echo `lsof -i :80`

# echo ">>>>>>>>>>>>>>>>>>> for in 1 >>>>>>>>>>>>>>"
# for file in `ps -a | grep mongo`;do
# 	echo $file
# done

# echo ">>>>>>>>>>>>>>>>>>> for in 2 >>>>>>>>>>>>>>"
# for file in $(ps -a | grep mongo); do
# 	echo "-- ${file}"
# done


# echo ">>>>>>>>>>>>>>>>>>> readonly >>>>>>>>>>>>>>"
# readonly name="readonly name"
# echo $name


# echo ">>>>>>>>>>>>>>>>>>> unset >>>>>>>>>>>>>>"
# name2="no readonly arg can be unset"
# unset name2
# echo $name2







# echo ">>>>>>>>>>>>>>>>>>> string >>>>>>>>>>>>>>"
# string="字符串1234567890"
# echo "hello"$string

# echo ">>>>>>>>>>>>>>>>>>> 获取字符串长度 >>>>>>>>>>>>>>"
# echo "总长度"${#string}
# echo "从下标1开始,获取2位字符串内容："${string:1:4}' 注意：下标从0开始算'





# echo ">>>>>>>>>>>>>>>> 数组（shell只支持一维数组） >>>>>>>>>>>>>>"
# array=(value0 value1 value2 value3)
# echo ${array[2]}
# echo "使用@做下标，读取所有数组元素：${array[@]} || ${array[*]}"
# echo "获取数组长度：${#array[@]} 或者 ${#array[*]}"



echo ">>>>>>>>>>>>>>>> Shell 注释 >>>>>>>>>>>>>>"

echo "单行注释：以 # 开头的行就是注释，会被解释器忽略。"
#echo "以 # 开头的行就是注释，会被解释器忽略。"

echo "多行注释，以 :<<接任意字符 开头，以该字符结束"
:<<multiple
这里的内容不会被解释器解释
所以写什么都不会报错
同样的，也不可以被shell脚本使用
multiple