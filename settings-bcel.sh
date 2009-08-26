#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/bcel-5.2/
export MAIN_CLASS=( org.apache.bcel.util.BCELifier  ) 
export CLASSES_DIR=$PROJECT_ROOT/target/classes

export PACKAGE=( org.apache.bcel )


if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="org/apache/bcel/"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
