#!/bin/bash - 
#===============================================================================
#
#         USAGE: ./bolton.hw3.sh 
# 
#   DESCRIPTION: 
# 
#        AUTHOR: Karl Marble, karlmarble@mail.weber.edu
#  ORGANIZATION: 
#       CREATED: 09/29/2016 12:17
#      REVISION:  0.3
#===============================================================================

#set -o nounset                              # Treat unset variables as an error


function reqHelp {
	echo "Usage is house_bolton.sh [-s sedsrc] [-a awksrc] [-i inputFile]"
	echo "All three aRguments are required."
	exit 1
}

if [ "$1" == "--help" ] || 
	[ "$1" != "-s" ] || 
	[ "$3" != "-a" ] ||
	[ "$5" != "-i" ];then
	reqHelp
fi

while getopts ":s:a:i:" opt; do
	case $opt in
		s) sedsrc=$OPTARG;;
		a) awksrc=$OPTARG;;
		i) iFile=$OPTARG;;
		\?) reqHelp ;;
	esac
done

sed -f $sedsrc $iFile | awk -f $awksrc > "new$iFile"

exit 0
