#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/db-derby-10.5.1.1-src
export EXTRA=$PROJECT_ROOT/tools/java/geronimo-spec-servlet-2.4-rc4.jar:$PROJECT_ROOT/tools/java/serializer.jar:$PROJECT_ROOT/tools/java/xalan.jar:$PROJECT_ROOT/tools/java/xercesImpl.jar:$PROJECT_ROOT/tools/java/ant.jar:$PROJECT_ROOT/tools/java/ant-launcher.jar:$PROJECT_ROOT/tools/java/felix.jar
export CLASSES_DIR=$PROJECT_ROOT/classes
export MAIN_CLASS=( org.apache.derby.impl.tools.ij.Main )
export PACKAGE=( org.apache.derby )


if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="org/apache/derby/"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
