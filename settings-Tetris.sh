#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/soot/aspectjBenchmarkSuite
export EXTRA=$PROJECT_ROOT/lib/aspectjrt-1.2.0.jar:$PROJECT_ROOT/lib/aspectjtools-1.2.0.jar
export MAIN_CLASS=( Main.AspectTetris )
export CLASSES_DIR=$PROJECT_ROOT/Tetris/classes
export PACKAGE=( Main Gui Driver Aspects Logic )


if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="Main/:Gui/:Driver/:Aspects/:Logic/"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
