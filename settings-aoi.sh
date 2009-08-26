#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/aoi/AoIsrc272/ArtOfIllusion/
export EXTRA=${PROJECT_ROOT}/../lib/Jama-1.0.2.jar:${PROJECT_ROOT}/../lib/:$PROJECT_ROOT/../lib/jmf.jar
export MAIN_CLASS=( artofillusion.ArtOfIllusion artofillusion.ModellingApp )
export CLASSES_DIR=$PROJECT_ROOT/build/

export PACKAGE=( artofillusion )


if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="artofillusion/"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
