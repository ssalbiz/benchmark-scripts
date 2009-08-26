#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/poi-3.2-FINAL
export EXTRA=$PROJECT_ROOT/lib/BCEL.jar:$PROJECT_ROOT/lib/bloat-1.0.jar:$PROJECT_ROOT/lib/commons-logging-1.1.jar:$PROJECT_ROOT/lib/dynamicjava.jar:$PROJECT_ROOT/lib/junit-3.8.1.jar:$PROJECT_ROOT/lib/junit.jar:$PROJECT_ROOT/lib/log4j-1.2.13.jar
export CLASSES_DIR=$PROJECT_ROOT/build/classes
export MAIN_CLASS=( org.apache.poi.ddf.EscherDump )
export PACKAGE=( org.apache.poi )


if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="org/apache/poi/"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
