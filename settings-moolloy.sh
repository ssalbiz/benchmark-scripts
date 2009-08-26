#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/moolloy/Moolloy_GUI/
export MAIN_CLASS=( edu.mit.csail.sdg.moolloy.gui.Main )
export CLASSES_DIR=$PROJECT_ROOT
export PACKAGE=( edu.mit.csail.sdg.moolloy )


if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS=""
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
