#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/tomcat
export EXTRA=$PROJECT_ROOT/lib/ant.jar:$PROJECT_ROOT/lib/ant-launcher.jar:$PROJECT_ROOT/jdt.core.jar
export CLASSES_DIR=$PROJECT_ROOT/output/classes
export MAIN_CLASS=( org.apache.catalina.startup.Catalina org.apache.catalina.startup.Tool org.apache.catalina.servlets.CGIServlet )
export PACKAGE=( org.apache.catalina )

if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="org/apache/catalina/"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
