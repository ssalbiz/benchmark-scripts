#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/jung-2.0/
export EXTRA=$PROJECT_ROOT/collections-generic-4.01.jar:$PROJECT_ROOT/colt-1.2.0.jar:$PROJECT_ROOT/concurrent-1.3.4.jar:$PROJECT_ROOT/jai_core.jar:$PROJECT_ROOT/j3dcore.jar:$PROJECT_ROOT/j3dutils.jar:$PROJECT_ROOT/vecmath.jar:$PROJECT_ROOT/stax-api-1.0.1.jar
export CLASSES_DIR=$PROJECT_ROOT

export MAIN_CLASS=( edu.uci.ics.jung.visualization.transform.shape.Intersector edu.uci.ics.jung.algorithms.cluster.VoltageClusterer edu.uci.ics.jung.visualization.util.LabelWrapper )
export PACKAGE=( edu.uci.ics.jung )



if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="edu/uci/ics/jung/"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
