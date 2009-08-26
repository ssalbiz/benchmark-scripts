#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/jetty-6.1.17/
export EXTRA=$PROJECT_ROOT/lib/servlet-api-2.5-20081211.jar:$PROJECT_ROOT/lib/jetty-util-6.1.17.jar
export CLASSES_DIR=$PROJECT_ROOT/modules/jetty/target/classes

export MAIN_CLASS=( org.mortbay.jetty.Main )

export PACKAGE=( org.mortbay )


if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="org/mortbay"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
