#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/AUML/argouml-0.28
export EXTRA=${PROJECT_ROOT}/antlr-2.7.7.jar:${PROJECT_ROOT}/argouml-mdr.jar:${PROJECT_ROOT}/argouml-model.jar:${PROJECT_ROOT}/commons-logging-1.0.2.jar:${PROJECT_ROOT}/gef-0.13.jar:${PROJECT_ROOT}/java-interfaces.jar:${PROJECT_ROOT}/jmi.jar:${PROJECT_ROOT}/jmiutils.jar:${PROJECT_ROOT}/log4j-1.2.6.jar:${PROJECT_ROOT}/mdrapi.jar:${PROJECT_ROOT}/mof.jar:${PROJECT_ROOT}/nbmdr.jar:${PROJECT_ROOT}/ocl-argo-1.1.jar:${PROJECT_ROOT}/openide-util.jar:${PROJECT_ROOT}/swidgets-0.1.4.jar:${PROJECT_ROOT}/toolbar-1.4.1-20071227.jar

export CLASSES_DIR=$PROJECT_ROOT/
export MAIN_CLASS=( org.argouml.application.Main )

export PACKAGE=( org.argouml )

if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="org/argouml/"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
