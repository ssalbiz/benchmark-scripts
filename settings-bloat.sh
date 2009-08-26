#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/BLOAT
export CLASSES_DIR=$PROJECT_ROOT/classes

export PACKAGE=( EDU )


if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="EDU/"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
