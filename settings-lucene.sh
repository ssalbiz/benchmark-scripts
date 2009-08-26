#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/lucene-2.4.1
export CLASSES_DIR=$PROJECT_ROOT/build/classes/java
export MAIN_CLASS=( org.apache.lucene.queryParser.QueryParser )
export PACKAGE=( org.apache )


if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="org/apache/"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
