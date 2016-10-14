#!/bin/sh 
DIR="."

function list_files()
{
 if !(test -d $1) 
 then echo $1; return;
fi

cd $1
 
 for i in *
 do
 if test -d $i 
 then 
 list_files $i
cd ..
 else
 echo $i; 
fi

 done
}

if [ $# -eq 0 ]
then list_files . | uniq
exit 0
fi

for i in $*
do
 DIR=$1 
 list_files $DIR | uniq
 shift 1
done
