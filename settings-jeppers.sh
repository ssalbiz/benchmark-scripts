#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/jeppers
export EXTRA=$PROJECT_ROOT/lib/jlfgr-1_0.jar:$PROJECT_ROOT/jgrid.jar:$PROJECT_ROOT/jexpression.jar
export CLASSES_DIR=$PROJECT_ROOT/classes
export MAIN_CLASS=( grid.designer.SpreadsheetDesigner )

export PACKAGE=( grid )

if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="grid/"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
