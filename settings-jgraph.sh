#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/jgraphx
export EXTRA=$PROJECT_ROOT/lib/jgraphx.jar
export CLASSES_DIR=$PROJECT_ROOT/classes
export MAIN_CLASS=( com.mxgraph.view.mxGraph )

export PACKAGE=( com.mxgraph )

if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="com/mxgraph/"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
