#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/pmd/pmd-4.2.5
export EXTRA=$PROJECT_ROOT/lib/asm-3.1.jar:$PROJECT_ROOT/lib/javacc.jar:$PROJECT_ROOT/lib/jaxen-1.1.1.jar:$PROJECT_ROOT/lib/junit-4.4.jar:$PROJECT_ROOT/lib/pmd-4.2.5.jar:$PROJECT_ROOT/lib/pmd-src-4.2.5.jar:$PROJECT_ROOT/lib/pmd-test-4.2.5.jar:$PROJECT_ROOT/lib/ant.jar:$PROJECT_ROOT/lib/ant-launcher.jar
export CLASSES_DIR=$PROJECT_ROOT/build
export MAIN_CLASS=( net.sourceforge.pmd.PMD )

export PACKAGE=( net.sourceforge.pmd )

if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="net/sourceforge/pmd/"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
