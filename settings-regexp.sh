#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/regexp-1.5/
export MAIN_CLASS=( org.apache.regexp.RECompiler  ) 
export CLASSES_DIR=$PROJECT_ROOT/build/classes
export PACKAGE=( org.apache.regexp )



if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="org/apache/regexp/"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
