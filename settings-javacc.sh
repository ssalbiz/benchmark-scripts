#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/javaCC/javacc
export CLASSES_DIR=$PROJECT_ROOT/classes
export MAIN_CLASS=( javacc jjtree org.javacc.utils.JavaFileGenerator org.javacc.parser.Main )

export PACKAGE=( org.javacc )


if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="org/javacc"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
