#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/soot/aspectjBenchmarkSuite
export EXTRA=$PROJECT_ROOT/lib/aspectjrt-1.2.0.jar:$PROJECT_ROOT/lib/aspectjtools-1.2.0.jar
export MAIN_CLASS=( GPL.ProgTime )
export CLASSES_DIR=$PROJECT_ROOT/ProdLine/classes
export PACKAGE=( GPL )


if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="GPL/"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
