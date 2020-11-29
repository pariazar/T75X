
#!/bin/bash


#try to find path of file
array=()
while IFS=  read -r -d $'\0'; do
    array+=("$REPLY")
done < <(find / -xdev -name edata.xls -print0)



echo ${array[@]}

echo "------------------------------"

#first file path
echo ${array[0]}

cp ${array[0]} /home/person2/Downloads/file1.xls

chmod 777 /home/person2/Downloads/file1.xls

python3 game.py


