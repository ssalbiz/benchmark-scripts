#!/bin/bash

#using eclipse workspace project to run analysis
export PROJECT_ROOT=$BENCHMARKS_ROOT/workspace/azureus2
export CLASSES_DIR=$PROJECT_ROOT/classes
export MAIN_CLASS=( org.gudy.azureus2.ui.swt.Main )
export EXTRA=$PROJECT_ROOT/build/libs/apple-extensions.jar:$PROJECT_ROOT/build/libs/commons-cli.jar:$PROJECT_ROOT/build/libs/junit.jar:$PROJECT_ROOT/build/libs/log4j.jar:$PROJECT_ROOT/build/libs/swt-win32.jar:$PROJECT_ROOT/build/libs/swt-xosx.jar
export PACKAGE=( org.bouncycastle org.gudy com.aelitis )

if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="org/bouncycastle/:org/gudy:com/aelitis"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
