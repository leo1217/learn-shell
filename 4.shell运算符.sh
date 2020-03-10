#!/bin/sh

echo "运行脚本 $0"
:<<运算符说明
Shell 和其他编程语言一样，支持多种运算符，包括：

算数运算符
关系运算符
布尔运算符
字符串运算符
文件测试运算符


原生bash不支持简单的数学运算，例如1+1，
但是可以通过其他命令来实现，例如 awk 和 expr，expr 最常用。
expr 是一款表达式计算工具，使用它能完成表达式的求值操作。

value=`expr 2 + 2 `
echo $value


表达式和运算符之间要有空格，
例如 2+2 是不对的，必须写成 2 + 2，这与我们熟悉的大多数编程语言不一样。
完整的表达式要被 ` ` 包含，注意这个字符不是常用的单引号，在 Esc 键下边。

运算符说明

value=`expr 2 + 2 `
echo ‘expr 2 + 2 = ’ $value



:<<算术运算
+	加法	expr $a + $b 结果为 30。
-	减法	expr $a - $b 结果为 -10。
\*	乘法	expr $a \* $b 结果为  200。
    乘号(*)前边必须加反斜杠(\)才能实现乘法运算；

/	除法	expr $b / $a 结果为 2。
%	取余	expr $b % $a 结果为 0。
=	赋值	a=$b 将把变量 b 的值赋给 a。
==	相等。用于比较两个数字，相同则返回 true。	[ $a == $b ] 返回 false。
!=	不相等。用于比较两个数字，不相同则返回 true。	[ $a != $b ] 返回 true。

在 MAC 中 shell 的 expr 语法是：$((表达式))，
此处表达式中的 "*" 不需要转义符号 "\" 。
算术运算

a=10
b=20

echo 'expr $a + $b：' `expr $a + $b`
echo 'expr $a - $b：' `expr $a - $b`
echo 'expr $a * $b：' `expr $a \* $b`
echo 'expr $b / $a：' `expr $b / $a`
echo 'expr $b % $a：' `expr $b % $a`

c=$a
echo 'c=$a：'$c

#比较 条件表达式要放在方括号之间，并且要有空格
if [ $a == $b ]
then
    echo '[ $a == $b ]' 
fi

if [ $a != $b ]
then
    echo '[ $a != $b ] a 不等与 b' 
fi

#mac 的expr 语法，使用 $(( 表达式 ))，乘法不需要反斜杠 \
echo $(( $a * $b ))


echo '>>>>>>>>>>>>>>>>>>>  关系运算符 >>>>>>>>>>>>>>>>>>>>>>'
:<<说明
关系运算符只支持数字，不支持字符串，除非字符串的值是数字。
下表列出了常用的关系运算符，假定变量 a 为 10，变量 b 为 20：


运算符	说明	举例
-eq	检测两个数是否相等，相等返回 true。	[ $a -eq $b ] 返回 false。
-ne	检测两个数是否不相等，不相等返回 true。	[ $a -ne $b ] 返回 true。
-gt	检测左边的数是否大于右边的，如果是，则返回 true。	[ $a -gt $b ] 返回 false。
-lt	检测左边的数是否小于右边的，如果是，则返回 true。	[ $a -lt $b ] 返回 true。
-ge	检测左边的数是否大于等于右边的，如果是，则返回 true。	[ $a -ge $b ] 返回 false。
-le	检测左边的数是否小于等于右边的，如果是，则返回 true。	[ $a -le $b ] 返回 true。
说明
if [ $a -eq $b ]
then 
    echo "$a -eq $b : a 等于 b"
else 
    echo "$a -eq $b : a 不等于 b"
fi


if [ $a -ne $b ]
then 
    echo "$a -ne $b : a 不等于 b"
else
   echo "$a -ne $b : a 等于 b"
fi


if [ $a -gt $b ]
then 
    echo "$a -gt $b : a 大于 b"
else
    echo "$a -gt $b: a 不大于 b"
fi


if [ $a -lt $b ]
then 
    echo "$a -lt $b : a 小于 b"
else
    echo "$a -lt $b: a 不小于 b"     
fi


if [ $a -ge $b ]
then 
    echo "$a -ge $b : a 大于等于 b"
else
    echo "$a -ge $b: a 小于 b"
fi


if [ $a -le $b ]
then 
    echo "$a -le $b : a 小于等于 b"
else
   echo "$a -le $b: a 大于 b"
fi






if [ $a -lt 100 -a $b -gt 10 ]
then
    echo 'a 小于一百并且 b大于10'
fi

echo '>>>>>>>>>>>>>>>>>>>  逻辑运算符 注意这里使用双中括号>>>>>>>>>>>>>>>>>>>>>>'
if [[ $a = 10 && $b = 20 ]]
then   
    echo '[[ $a = 10 && $b = 20 ]] ： a=10,并且，b=20'
fi


echo '>>>>>>>>>>>>>>>>>>>  字符串运算符 >>>>>>>>>>>>>>>>>>>>>>'
x="abchad"
y="qweoiqwueo"

if [ $a = $b ] 
then
    echo "a = b"
else 
    echo "a 不等 b"
fi

if [ -z $a ] 
then
    echo "-z a 长度为0"
else 
    echo "-z a 长度不为0"
fi


if [ -n $a ] 
then
    echo "-n a 长度不为0"
else 
    echo "-n a 长度为0"
fi


if [ $a ] 
then
    echo "$ a字符串不为空"
else 
    echo "$ a字符串为空"
fi


echo '>>>>>>>>>>>>>>>>>>>  文件测试运算符 >>>>>>>>>>>>>>>>>>>>>>'
file=$0 #当前执行脚本文件
if [ -r $file ]
then 
    echo "$file 可读"
fi

if [ -w $file ]
then 
    echo "$file 可写"
fi


if [ -x $file ]
then 
    echo "$file 可执行"
fi


if [ -f $file ]
then 
    echo "$file 是普通文件"
fi


if [ -e $file ]
then 
    echo "$file 文件存在"
fi

if [ -s $file ]
then 
    echo "$file 文件不是空文件"
else
    echo "$file 文件是空文件"
fi



dir="/Users/libiao/Desktop/shell/"
if [ -e $dir ]
then 
    echo "$dir 目录存在"
fi