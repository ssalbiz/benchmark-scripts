#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/jython/
#export EXTRA=${PROJECT_ROOT}/dist/javalib/antlr-runtime-3.1.2.jar:${PROJECT_ROOT}/dist/javalib/asm-3.1.jar:$PROJECT_ROOT/dist/javalib/svnant-jars/svnClientAdapter.jar:$PROJECT_ROOT/dist/javalib/svnant-jars/svnant.jar:$PROJECT_ROOT/dist/javalib/svnant-jars/svnjavahl.jar:$PROJECT_ROOT/dist/javalib/servlet-api-2.5.jar:$PROJECT_ROOT/dist/javalib/ant.jar
export MAIN_CLASS=( org.python.util.PythonInterpreter )
export CLASSES_DIR=$PROJECT_ROOT/build/

export PACKAGE=( org.python )


if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="org/python/"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
