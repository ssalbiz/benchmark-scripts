#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/jaxen-1.1.1
export MAIN_CLASS=( org.jaxen.Function ) 
export CLASSES_DIR=$PROJECT_ROOT/target/classes
export EXTRA=$PROJECT_ROOT/target/lib/jdom-1.0.jar:$PROJECT_ROOT/target/lib/xom-1.0.jar:$PROJECT_ROOT/target/lib/dom4j-1.6.1.jar:$PROJECT_ROOT/target/lib/xercesImpl-2.6.2.jar

export PACKAGE=( org.jaxen )

if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="org/jaxen/"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
