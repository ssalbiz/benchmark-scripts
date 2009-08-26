#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/Fit
export CLASSES_DIR=$PROJECT_ROOT/
export MAIN_CLASS=( fit.FileRunner fit.WikiRunner )
export PACKAGE=( fit )

if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="fit/"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
