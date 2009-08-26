#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/jcm/JCM/trunk
export MAIN_CLASS=( jcm.StartJCM ) 
export CLASSES_DIR=$PROJECT_ROOT/build/classes
export EXTRA=$PROJECT_ROOT/


export PACKAGE=( jcm )

if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="jcm/"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
