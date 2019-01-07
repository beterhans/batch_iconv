#!/bin/bash

echo ""
echo ""
echo ""
echo ""
echo " == Batch iconv script for text files by Beterhans =="
echo ""
echo ""

PWD="$(pwd)"
FOLDER=$1
EXT=$3

SRC_ENCODING=$2
TGT_ENCODING=$4

sleep 2s

#------- Precheck --------
if [ -z $FOLDER ]
        then
		echo ""
        echo "No folder found use default current folder for working Folder"
        FOLDER="$(pwd)"
		
        else
		echo ""
        echo "Use $FOLDER as working folder"
fi

if [ -w $FOLDER ]
        then
        echo "Greate $FOLDER is accessable"

        else
        echo "Can not access $FOLDER folder"
		exit
fi

if [ -z $EXT ]
        then
		echo ""
        echo "No file type defined use default txt type"
		echo "example: bash batch_iconv.sh foldertoworkwith CP932 txt UTF-8"
		echo "or like: bash batch_iconv.sh foldertoworkwith CP932"
		echo ""
        EXT="txt"

        else
		echo ""
        echo "Use file type $EXT"
		echo ""
fi

if [ -z $SRC_ENCODING ]
then
	echo ""
	echo "PLEASE tell me what language encoding the files is..."
	echo "like:     bash batch_iconv.sh foldertoworkwith CP932 txt UTF-8 "
	echo "or like:  bash batch_iconv.sh foldertoworkwith CP932"
	exit
	
else
	echo ""
	echo "Use $SRC_ENCODING as decoding !!"
fi

if [ -z $TGT_ENCODING ]
then
	echo ""
	echo "No Target encoding found use default UTF-8"
	TGT_ENCODING="UTF-8"
	
else
	echo ""
	echo "Use $TGT_ENCODING as encoding !!"
fi


#------- Start working ---------
cd $FOLDER
PWD="$(pwd)"
echo " ====================== "
echo "Working on $PWD"
echo "File type is $EXT"
echo "Source in  file encoding is $SRC_ENCODING"
echo "Target out file encoding will be $TGT_ENCODING"
echo "Please confirm! in 5 seconds !!!"

echo " ====================== "
declare -i i=1

sleep 5s

for file in $PWD/*.$EXT
do
	echo ""
	echo "This is $i time to run"
	echo "Current file = $file"
	echo ""
	
	if [[ $file =~ \.$EXT$ ]]
	then
		echo "found $file"
		echo "is a $EXT file"
		echo "working on $file"
		# -- excute --
		mv $file $file.bak
		echo "executing command"
		echo "--> iconv -f $SRC_ENCODING -t $TGT_ENCODING $file.bak > $file <--"
		iconv -f $SRC_ENCODING -t $TGT_ENCODING $file.bak > $file
		
		echo " DONE!! with $file"
		echo " Next !!"
		echo ""
	else
		echo "found $file"
		echo "is not a $EXT file"
		echo "Skip!"
	fi
	# run counter at the end
	sleep 0.2s
	i=i+1
	
	
	
done

rm *.bak

echo "Script finished"
	
	
