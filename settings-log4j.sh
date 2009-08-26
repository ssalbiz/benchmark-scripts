#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/apache-log4j-1.2.15
export MAIN_CLASS=( org.apache.log4j.config.PropertyPrinter )
export CLASSES_DIR=$PROJECT_ROOT/target/classes
export EXTRA=$PROJECT_ROOT/jms-1.1.jar:$PROJECT_ROOT/jmxri-1.2.1.jar:$PROJECT_ROOT/jmxtools-1.2.1.jar:$PROJECT_ROOT/log4j-1.2.15.jar:$PROJECT_ROOT/mail-1.3.3.jar

export PACKAGE=( org.apache.log4j )

if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="org/apache/log4j/"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
