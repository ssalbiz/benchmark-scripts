#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/soot/aspectjBenchmarkSuite
export EXTRA=$PROJECT_ROOT/lib/aspectjrt-1.2.0.jar:$PROJECT_ROOT/lib/aspectjtools-1.2.0.jar:$PROJECT_ROOT/StarJ-Pool/lib/fastUtil-2.11.jar:$PROJECT_ROOT/StarJ-Pool/lib/jakarta-regexp-1.2.jar
export MAIN_CLASS=( org.apache.bcel.verifier.exc.AssertionViolatedException )
export CLASSES_DIR=$PROJECT_ROOT/StarJ-Pool/classes
export PACKAGE=( org.apache.bcel adaptj_pool )
echo "Requires JVM version 1.4"



if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="org/apache/bcel/:adaptj_pool/"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
