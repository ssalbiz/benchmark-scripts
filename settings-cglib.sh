#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/cglib
export MAIN_CLASS=( net.sf.cglib.core.ReflectUtils ) 
export CLASSES_DIR=$PROJECT_ROOT/build/proxy/classes
export EXTRA=$PROJECT_ROOT/lib/ant.jar:$PROJECT_ROOT/lib/asm-util-3.1.jar
export PACKAGE=( net.sf.cglib )


if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="net/sf/cglib/"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
