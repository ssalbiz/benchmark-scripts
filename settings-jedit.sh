#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/jEdit
export EXTRA=
export CLASSES_DIR=$PROJECT_ROOT/build/classes/core
export MAIN_CLASS=org.gjt.sp.jedit.jEdit

export PACKAGE=( org.gjt )

if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="org/gjt"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
