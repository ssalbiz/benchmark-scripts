#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/jre/
export CLASSES_DIR=$PROJECT_ROOT/classes/
export MAIN_CLASS=( java.util.prefs.Base64 )

export PACKAGE=( java.util )


if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="-s"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
