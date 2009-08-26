#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/hsqldb
export EXTRA=${PROJECT_ROOT}/lib/servlet.jar
export CLASSES_DIR=$PROJECT_ROOT/classes

export MAIN_CLASS=( org.hsqldb.test.TestAll org.hsqldb.Server org.hsqldb.lib.HsqlArrayHeap )
export PACKAGE=( org.hsqldb )



if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="org/hsqldb/"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
