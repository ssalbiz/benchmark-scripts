#!/bin/bash

#NOTE: also analyzes runtime and tools

export PROJECT_ROOT=$BENCHMARKS_ROOT/antlr/antlr-3.1.3/gunit
export EXTRA=$PROJECT_ROOT/../runtime/Java/target/classes:$PROJECT_ROOT/../lib/stringtemplate.jar:$PROJECT_ROOT/../lib/ant-antlr.jar:$PROJECT_ROOT/../lib/antlr.jar
export MAIN_CLASS=( org.antlr.gunit.Interp org.antlr.gunit.swingui.Tool )
export CLASSES_DIR=$PROJECT_ROOT/target/classes
export PACKAGE=( org.antlr.gunit )


if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="org/antlr/gunit/"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
