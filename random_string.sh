#! /bin/bash

yellow='\033[1;33m'

while getopts c:l:o: flag
do
	case "${flag}" in
		c) n_of_chars=${OPTARG};;
		l) n_of_lines=${OPTARG};;
		o) output_ch_type=${OPTARG};;
	esac
done

if [[ -z $n_of_chars ]] && [[ -z $n_of_lines ]]
then 
	echo -e "Available options:\n\t-c number of character to print;\n\t-l number of lines to print;\n\t-o (optional) l - print all characters lowercase; u - print all characters uppercase. If you won't provide -o option to the script, it will print mixed case characters."
	echo -e "Usage example:\n\t${yellow}bash random_string.sh -c 5 -l 10 -o l"
	exit
fi	


if [[ -z $n_of_chars ]] 
then
	echo -e "Enter number of character to print out with '-c'.\nUsage example:\n\t${yellow}bash random_string.sh -c 5 -l 10 -o l"
	exit
elif [[ -z $n_of_lines ]]
then
	echo -e "Enter number of lines to print out with '-l'.\nUsage example:\n\t${yellow}bash random_string.sh -c 5 -l 10 -o l"
	exit
else
	if [[ $output_ch_type == "l" ]]
	then
		cat /dev/urandom | tr -dc '[:alpha:]' | fold -w $n_of_chars | head --lines=$n_of_lines | tr '[:upper:]' '[:lower:]'
	elif [[ $output_ch_type == "u" ]]
	then
		cat /dev/urandom | tr -dc '[:alpha:]' | fold -w $n_of_chars | head --lines=$n_of_lines | tr '[:lower:]' '[:upper:]'
	else
		cat /dev/urandom | tr -dc '[:alpha:]' | fold -w $n_of_chars | head --lines=$n_of_lines
	fi
fi

