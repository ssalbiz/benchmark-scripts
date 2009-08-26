#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/commons-logging-1.1.1-src
export MAIN_CLASS=( org.apache.commons.logging.Log ) 
export CLASSES_DIR=$PROJECT_ROOT/target/classes
export EXTRA=$PROJECT_ROOT/avalon-logkit-2.2.1.jar:$PROJECT_ROOT/log4j-1.2.15.jar:$PROJECT_ROOT/avalon-framework-impl-4.3.1.jar:$PROJECT_ROOT/avalon-framework-api-4.3.1.jar
export PACKAGE=( org.apache.commons.logging )


if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="org/apache/commons/logging/"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
