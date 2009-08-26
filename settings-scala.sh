#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/scala
export EXTRA=$PROJECT_ROOT/lib/ScalaCheck.jar:$PROJECT_ROOT/lib/ScalaCheckHelper.jar:$PROJECT_ROOT/lib/ant-contrib.jar:$PROJECT_ROOT/lib/ant-dotnet-1.0.jar:$PROJECT_ROOT/lib/cldcapi10.jar:$PROJECT_ROOT/lib/fjbg.jar:$PROJECT_ROOT/lib/jline.jar:$PROJECT_ROOT/lib/maven-ant-tasks-2.0.9.jar:$PROJECT_ROOT/lib/midpapi10.jar:$PROJECT_ROOT/lib/msil.jar:$PROJECT_ROOT/lib/scala-compiler.jar:$PROJECT_ROOT/lib/scala-library-src.jar:$PROJECT_ROOT/lib/scala-library.jar:$PROJECT_ROOT/lib/vizant.jar:$PROJECT_ROOT/lib/ant.jar:$PROJECT_ROOT/lib/ant-launcher.jar:$PROJECT_ROOT/build/quick/classes/library:$PROJECT_ROOT/build/pack/lib/scala-compiler.jar:$PROJECT_ROOT/build/pack/lib/scala-library.jar:$PROJECT_ROOT/build/pack/lib/scala-swing.jar:$PROJECT_ROOT/lib/bcel-5.2.jar
export CLASSES_DIR=$PROJECT_ROOT/build/quick/classes/compiler/
export MAIN_CLASS=( scala.tools.nsc.MainInterpreter )
export PACKAGE=( scala )


if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="scala/"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
