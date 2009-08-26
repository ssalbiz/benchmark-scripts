#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/soot/aspectjBenchmarkSuite
export EXTRA=$PROJECT_ROOT/lib/aspectjrt-1.2.0.jar:$PROJECT_ROOT/lib/aspectjtools-1.2.0.jar
export MAIN_CLASS=( certrevsim.Simulator jsim.queue.Test )
export CLASSES_DIR=$PROJECT_ROOT/LawOfDemeter/classes
export PACKAGE=( certrevsim jsim )


if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="certrevsim/:jsim/"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
