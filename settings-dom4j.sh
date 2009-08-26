#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/dom4j-1.6.1
export MAIN_CLASS=( org.dom4j.Branch ) 
export CLASSES_DIR=$PROJECT_ROOT/build/classes
export EXTRA=$PROJECT_ROOT/lib/jaxen-1.1-beta-6.jar:$PROJECT_ROOT/lib/jaxme-api-0.3.jar:$PROJECT_ROOT/lib/jsr173_1.0_api.jar:$PROJECT_ROOT/lib/msv-20030807.jar:$PROJECT_ROOT/lib/pull-parser-2.1.10.jar:$PROJECT_ROOT/lib/relaxngDatatype-20030807.jar:$PROJECT_ROOT/lib/xpp3-1.1.3.3.jar:$PROJECT_ROOT/lib/xsdlib-20030807.jar
export PACKAGE=( org.dom4j )


if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="org/dom4j/"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
