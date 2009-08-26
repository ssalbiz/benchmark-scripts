#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/commons-lang-2.4-src
export MAIN_CLASS=( org.apache.commons.lang.SystemUtils ) 
export CLASSES_DIR=$PROJECT_ROOT/target/classes
export PACKAGE=( org.apache.commons.lang )



if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="org/apache/commons/lang/"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
