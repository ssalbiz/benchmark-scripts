#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/sablecc/sablecc-3.2
export CLASSES_DIR=$PROJECT_ROOT/classes
export MAIN_CLASS=org.sablecc.sablecc.SableCC
export PACKAGE=( org.sablecc )


if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="org/sablecc/"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
