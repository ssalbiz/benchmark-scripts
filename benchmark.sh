#/bin/bash

export SWD=`dirname $0`
echo $PWD
if [  -n "$1" ]; then
  if [ -n "$2" ]; then
  echo "Running benchmark: $2 $1"
  else
  exit
  fi
else
  echo "Usage: ${0} [benchmark name] [analysis name]"
  echo "Possible analyses: alias, ds-finder"
  exit
fi

export PROJECT_NAME=$1
export ANALYSIS=$2
if [ -e ${SWD}/base.sh ]; then
  . ${SWD}/base.sh ${PROJECT_NAME} ${ANALYSIS}
else 
  echo "base.sh not found. Aborting."
  exit 127
fi
shift
shift

echo "ANALYZING ${CLASSES_DIR}"

if [ ! -n "$MAIN_CLASS" ]; then
   ## if no main class is set use whichever one soot infers
   echo java -Xmx1800M -cp ${CLASSPATH} ${INVOKE}   2>&1 | tee  $OUTPUT_FILE.$i 
   java -Xmx1800M ${INVOKE} 2>&1 | tee -a ${OUTPUT_FILE}.$i
   #echo "terminal output logged at $OUTPUT_FILE"
   echo "DONE"
else
   ## cycle through given entry points one by one in order to maximize code coverage.
   for (( i = 0; i < ${#MAIN_CLASS[@]}; i++ )); do
   	echo "processing from next entry point"

	echo java -Xmx1800M -cp ${CLASSPATH} ${INVOKE} ${MAIN_OPT} ${MAIN_CLASS[$i]} 2>&1 | tee  $OUTPUT_FILE.$i 
	
	java -Xmx1800M ${INVOKE} ${MAIN_OPT} ${MAIN_CLASS[$i]} 2>&1 | tee -a ${OUTPUT_FILE}.$i
        echo $? >> ${OUTPUT_FILE}.$i	
	echo "DONE"
	sleep 5;

   	#echo "terminal output logged at $OUTPUT_FILE.$i"
   done
fi
