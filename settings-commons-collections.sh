#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/commons-collections-3.2.1-src
export MAIN_CLASS=( org.apache.commons.collections.bidimap.TreeBidiMap )
export CLASSES_DIR=$PROJECT_ROOT/build/classes
export PACKAGE=( org.apache.commons.collections )



if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="org/apache/commons/collections/"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
