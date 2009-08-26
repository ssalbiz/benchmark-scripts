#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/sandmark/
export EXTRA=$PROJECT_ROOT/smextern3/BCEL.jar:$PROJECT_ROOT/smextern3/bloat-1.0.jar:$PROJECT_ROOT/smextern3/dynamicjava.jar:$PROJECT_ROOT/smextern3/junit.jar:$PROJECT_ROOT/smextern3/jdi.jar:$PROJECT_ROOT/smextern3/sandmark.jar
export CLASSES_DIR=$PROJECT_ROOT/smark3/
export MAIN_CLASS=( sandmark.program.Application )
export PACKAGE=( sandmark )


if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="sandmark/"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
