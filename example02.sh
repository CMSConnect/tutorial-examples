#!/bin/bash 
# short.sh: a short discovery job 

dummy_analysis(){
  echo "Input file content: $(cat $1)" > "$2"
  echo "Dummy result: $RANDOM" >> "$2"
}

printf "Start time: "; /bin/date 
printf "Job is running on node: "; /bin/hostname 
printf "Job running as user: "; /usr/bin/id 
printf "Job is running in directory: "; /bin/pwd 

echo
echo "Working hard..."
dummy_analysis "$1" output.txt

echo "Science complete!"
