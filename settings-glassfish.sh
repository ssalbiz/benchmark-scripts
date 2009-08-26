#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/Glassfish
export MAIN_CLASS=( com.ibm.awb.launcher.Main )
export CLASSES_DIR=$PROJECT_ROOT/build
export PACKAGE=( com.ibm )



if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="com/ibm/"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
