#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/commons-cli-1.2-src
export MAIN_CLASS=( org.apache.commons.cli.Options ) 
export CLASSES_DIR=$PROJECT_ROOT/target/classes
export PACKAGE=( org.apache.commons.cli )



if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="org/apache/commons/cli/"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
