#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/jUnit
export CLASSES_DIR=$PROJECT_ROOT/classes/main
export MAIN_CLASS=( junit.textui.TestRunner )
export PACKAGE=( junit )



if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="junit/"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
