#/bin/bash

if [ -n "$1" ]; then
  echo "Running benchmark"
else
  echo "Usage: ./benchmark.sh [benchmark name]"
  exit

fi

export ANALYSIS="alias"
export SWD=`pwd`
. base.sh $1 $ANALYSIS
#. settings-Tetris.sh
echo $CLASS_LIST
echo "LOOKING IN ${CLASSES_DIR}"
echo java -Xmx2048m -cp ${CLASSPATH} soot.Main -f j  --d $OUTPUT_DIR -pp --cp ${CLASSPATH} --allow-phantom-refs --src-prec class $CLASS_LIST
java -Xmx2048m -cp ${CLASSPATH} soot.Main -f j  --d $OUTPUT_DIR -pp --cp ${CLASSPATH} --allow-phantom-refs --src-prec class $CLASS_LIST 


