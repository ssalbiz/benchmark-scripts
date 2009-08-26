#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/megamek
export EXTRA=$PROJECT_ROOT/lib/Ostermiller.jar:$PROJECT_ROOT/lib/PngEncoder.jar:$PROJECT_ROOT/lib/TabPanel.jar:$PROJECT_ROOT/lib/TinyXML.jar:$PROJECT_ROOT/lib/j3dcore.jar:$PROJECT_ROOT/lib/j3dutils.jar:$PROJECT_ROOT/lib/vecmath.jar
export CLASSES_DIR=$PROJECT_ROOT/classes/
export MAIN_CLASS=( megamek.MegaMek )

export PACKAGE=( megamek )

if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="megamek/"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
