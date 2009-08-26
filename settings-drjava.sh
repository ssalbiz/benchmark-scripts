#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/drjava/drjava
#extra jars needed:
#
#
#
export EXTRA=$PROJECT_ROOT/lib/plt.jar:$PROJECT_ROOT/lib/dynamicjava-base.jar:$PROJECT_ROOT/lib/javalanglevels-base.jar:$PROJECT_ROOT/lib/platform.jar:$PROJECT_ROOT/lib/asm-3.1.jar:$PROJECT_ROOT/classes/lib:$PROJECT_ROOT/lib/buildlib/ant-contrib.jar:$PROJECT_ROOT/lib/buildlib/cenquatasks.jar:$PROJECT_ROOT/lib/buildlib/findbugs-ant.jar:$PROJECT_ROOT/lib/buildlib/junit.jar:$PROJECT_ROOT/lib/buildlib/plt-ant.jar:$PROJECT_ROOT/lib/looks-2.1.4.jar:$PROJECT_ROOT/lib/forms-1.0.7.jar:$PROJECT_ROOT/lib/docs.jar:$PROJECT_ROOT/lib/ant.jar:$PROJECT_ROOT/lib/ant-junit.jar:$PROJECT_ROOT/lib/ant-launcher.jar:$PROJECT_ROOT/lib/jdom.jar:$PROJECT_ROOT/lib/apple-extensions.jar
export CLASSES_DIR=$PROJECT_ROOT/classes/base

export MAIN_CLASS=( edu.rice.cs.drjava.DrJava edu.rice.cs.drjava.RemoteControlServer edu.rice.cs.drjava.RemoteControlClient ) 
export PACKAGE=( edu.rice.cs )

if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="edu/rice/cs/"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
