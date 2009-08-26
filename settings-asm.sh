#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/asm-3.2
export MAIN_CLASS=( org.objectweb.asm.xml.Processor ) 
export CLASSES_DIR=$PROJECT_ROOT/output/classes
export PACKAGE=( org.objectweb )



if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="org/objectweb/"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
