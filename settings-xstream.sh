#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/xstream-1.3.1/xstream
export MAIN_CLASS=( com.thoughtworks.xstream.core.JVM ) 
export CLASSES_DIR=$PROJECT_ROOT/target/classes
export EXTRA=$PROJECT_ROOT/lib/cglib-nodep-2.2.jar:$PROJECT_ROOT/lib/commons-lang-2.4.jar:$PROJECT_ROOT/lib/dom4j-1.6.1.jar:$PROJECT_ROOT/lib/jdom-1.1.jar:$PROJECT_ROOT/lib/jettison-1.0.1.jar:$PROJECT_ROOT/lib/jmock-1.0.1.jar:$PROJECT_ROOT/lib/joda-time-1.6.jar:$PROJECT_ROOT/lib/junit-3.8.1.jar:$PROJECT_ROOT/lib/oro-2.0.8.jar:$PROJECT_ROOT/lib/stax-1.2.0.jar:$PROJECT_ROOT/lib/stax-api-1.0.1.jar:$PROJECT_ROOT/lib/wstx-asl-3.2.7.jar:$PROJECT_ROOT/lib/xml-writer-0.2.jar:$PROJECT_ROOT/lib/xom-1.1.jar:$PROJECT_ROOT/lib/xpp3_min-1.1.4c.jar:$PROJECT_ROOT/lib/jdk1.3/xercesImpl-2.8.1.jar
export PACKAGE=( com.thoughtworks )


if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="com/thoughtworks/"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
