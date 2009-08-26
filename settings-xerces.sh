#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/xerces-2_9_1/
export MAIN_CLASS=( org.apache.xerces.impl.xpath.XPath ) 
export CLASSES_DIR=$PROJECT_ROOT/build/classes
export EXTRA=
export PACKAGE=( org.apache.xerces )


if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="org/apache/xerces/"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
