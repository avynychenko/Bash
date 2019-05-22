##### Напишите скрипт на bash, который будет определять в какую возрастную группу попадают пользователи. При запуске скрипт должен вывести сообщение "enter your name:" и ждать от пользователя ввода имени (используйте read, чтобы прочитать его). Когда имя введено, то скрипт должен написать "enter your age:" и ждать ввода возраста (опять нужен read). Когда возраст введен, скрипт пишет на экран "<Имя>, your group is <группа>", где <группа> определяется на основе возраста по следующим правилам:
# младше либо равно 16: "child",
# от 17 до 25 (включительно): "youth",
# старше 25: "adult".
# После этого скрипт опять выводит сообщение "enter your name:" и всё начинается по новой. Если в какой-то момент работы скрипта будет введено пустое имя или возраст 0, то скрипт должен написать на экран "bye" и закончить свою работу.


#! /bin/bash

quit="N"

while [[ $quit == "N" ]]
do

echo "enter your name:"
read name

if [[ -z $name ]]
then
echo "bye"
exit
quit=""
fi


echo "enter your age:"
read age

if [[ $age -eq 0 ]]
then
echo "bye"
exit
quit=""
else
case $age in
[1-9]|1[0-6] ) group="child" ;;
1[7-9]|2[0-5] ) group="youth" ;;
*) group="adult" 
esac
echo "$name, your group is $group"
fi

done


### Original decision, but not mine 

#while true
#do
#    echo enter your name:; read name
#    [ -z $name ] && break
#    
#    echo enter your age:; read age
#    [ $age -eq 0 ] && break
#    
#    if (( $age < 17 )); then
#        group=child
#    elif (( $age > 25 )); then
#        group=adult
#    else
#        group=youth
#    fi
#    
#    echo "$name, your group is $group"
#done
#echo bye
