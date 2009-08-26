#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/FOP/fop-0.95
export EXTRA=$PROJECT_ROOT/lib/avalon-framework-4.2.0.jar:$PROJECT_ROOT/lib/batik-all-1.7.jar:$PROJECT_ROOT/lib/commons-io-1.3.1.jar:$PROJECT_ROOT/lib/commons-logging-1.0.4.jar:$PROJECT_ROOT/lib/serializer-2.7.0.jar:$PROJECT_ROOT/lib/servlet-2.2.jar:$PROJECT_ROOT/lib/xalan-2.7.0.jar:$PROJECT_ROOT/lib/xercesImpl-2.7.1.jar:$PROJECT_ROOT/lib/xml-apis-1.3.04.jar:$PROJECT_ROOT/lib/xml-apis-ext-1.3.04.jar:$PROJECT_ROOT/lib/xmlgraphics-commons-1.3.1.jar:$PROJECT_ROOT/lib/ant.jar
export CLASSES_DIR=$PROJECT_ROOT/build/classes
export MAIN_CLASS=( org.apache.fop.cli.Main )
export PACKAGE=( org.apache.fop )


if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="org/apache/fop/"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
