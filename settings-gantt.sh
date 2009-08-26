#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/ganttproject-2.0.9
export EXTRA=$PROJECT_ROOT/eclipsito.jar
export CLASSES_DIR=$PROJECT_ROOT
export MAIN_CLASS=( org.bardsoftware.eclipsito.Boot )
export PACKAGE=( org.bardsoftware )



if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="org/bardsoftware/"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
