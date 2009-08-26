#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/soot/aspectjBenchmarkSuite
export EXTRA=$PROJECT_ROOT/lib/aspectjrt-1.2.0.jar
#export EXTRA=$PROJECT_ROOT/lib/aspectjrt-1.2.0.jar:$PROJECT_ROOT/lib/aspectjtools-1.2.0.jar
export MAIN_CLASS=bean.Demo
export CLASSES_DIR=$PROJECT_ROOT/Bean/classes
export PACKAGE=( bean )


if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS=`echo $PACKAGE | sed 's/\./\//g'`
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
