#/bin/bash

export BENCHMARKS_ROOT=${HOME}/benchmark_sources
export SCRIPTS=${BENCHMARKS_ROOT}/scripts
export SOOT_HOME=${BENCHMARKS_ROOT}/soot/
export SOOT_CLASSPATH=$SOOT_HOME/soot-2.3.0/lib/sootclasses-2.3.0.jar:$SOOT_HOME/jasmin-2.3.0/classes:${SOOT_HOME}/soot-2.3.0/lib/polyglotclasses.jar

export JAVA_HOME=/home/albiz/.gentoo/java-config-2/current-user-vm
if [ ! -e ${JAVA_HOME}/jre/lib/rt.jar ]; then
	 export JAVA_HOME=/opt/sun-jdk-1.5.0.18/
fi

export JAVA_CLASSPATH=/usr/share/javacup/lib/javacup.jar:${JAVA_HOME}/jre/lib/rt.jar:${JAVA_HOME}/jre/lib/jce.jar:/usr/share/junit/lib/junit.jar:${JAVA_HOME}/jre/lib/jsse.jar:${JAVA_HOME}/lib/tools.jar:/opt/sun-jdk-1.4.2.19/lib/tools.jar



export PROJECT_NAME=$1
export ANALYSIS=$2
shift

if [ -e ${SCRIPTS}/settings-${PROJECT_NAME}.sh ]; then
   . ${SCRIPTS}/settings-${PROJECT_NAME}.sh
else
   echo "benchmark instructions not found!"
   exit 1
fi

if [ "$ANALYSIS" == "alias" ]; then
  if [ -e ${SCRIPTS}/classlist-${PROJECT_NAME}.sh ]; then
    export CLASS_LIST=`${SCRIPTS}/classlist-${PROJECT_NAME}.sh`
    echo "Using custom class list"
  else 
    export CLASS_LIST=`${SCRIPTS}/generate_class_list.sh`
  fi
fi

export OUTPUT_DIR=${BENCHMARKS_ROOT}/Output/
export OUTPUT_FILE=${BENCHMARKS_ROOT}/Output/logs/${PROJECT_NAME}.${ANALYSIS}.log

if [ ! -d $OUTPUT_DIR ]; then
   echo "making directory: $OUTPUT_DIR."
   echo "mkdir -p $OUTPUT_DIR"
   mkdir -p ${OUTPUT_DIR}
fi
if [ ! -d `dirname $OUTPUT_FILE` ]; then
   echo "making directory: `dirname $OUTPUT_FILE`"
   mkdir -p `dirname $OUTPUT_FILE`
fi


if [ "$ANALYSIS" == "alias" ]; then
  export TRANSFORMS=${BENCHMARKS_ROOT}/workspace/soot_tests/bin
  export CLASSPATH=$SOOT_CLASSPATH:$JAVA_CLASSPATH:$TRANSFORMS:$CLASSES_DIR:$EXTRA
  export SOOT_MAIN=MyMain
  export INVOKE="${SOOT_MAIN} ${SOOT_OPTIONS} --d ${OUTPUT_DIR} -pp --cp ${CLASSPATH} -i ${PACKAGE} --allow-phantom-refs ${CLASS_LIST}"
  export MAIN_OPT="-main-class" #used be soot to denote main class. Unnecessary for ds-finder
  #export OUTPUT_OPT="| tee -a ${OUTPUT_FILE}"
elif [ "$ANALYSIS" == "ds-finder" ]; then
  export TRANSFORMS=${BENCHMARKS_ROOT}/ds-finder/classes/
  export SOOT_MAIN=ca.patricklam.DSFinder
  export DS_CLASSES=/usr/share/asm-3/lib/asm.jar:/usr/share/asm-3/lib/asm-commons.jar:/usr/share/asm-3/lib/asm-tree.jar:$BENCHMARKS_ROOT/ds-finder/lib/jargs.jar
  export CLASSPATH=$JAVA_CLASSPATH:$TRANSFORMS:$CLASSES_DIR:${DS_CLASSES}:$EXTRA
  unset INCL_LIST
  for (( i = 0; i < ${#PACKAGE[@]}; i++ )); do
    TMP=`echo ${PACKAGE[$i]} | sed 's/\./\//g'`
    INCL_LIST="${INCL_LIST}$TMP/:"
  done
  INCL_LIST=`echo $INCL_LIST | sed 's/\:$//'`
  export INVOKE="${SOOT_MAIN} --classpath=${CLASSPATH} -s -p --include=${INCL_LIST} --title=${OUTPUT_FILE}"
elif [ "$ANALYSIS" == "array" ]; then
  export TRANSFORMS=${BENCHMARKS_ROOT}/workspace/soot_tests/bin
  export CLASSPATH=$SOOT_CLASSPATH:$JAVA_CLASSPATH:$TRANSFORMS:$CLASSES_DIR:${DS_CLASSES}:$EXTRA
  export SOOT_MAIN=ArrayAnalysis
  unset INCL_LIST
  for (( i = 0; i < ${#PACKAGE[@]}; i++ )); do
    INCL_LIST="${INCL_LIST} -i ${PACKAGE[$i]}"
  done
  export INVOKE="${SOOT_MAIN} --d ${OUTPUT_DIR} -pp -cp ${CLASSPATH} ${INCL_LIST}  --allow-phantom-refs ${CLASSLIST}"
fi

