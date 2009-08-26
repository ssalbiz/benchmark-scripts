#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/proxool-0.9.1
export MAIN_CLASS=( org.logicalcobwebs.proxool.Version  ) 
export CLASSES_DIR=$PROJECT_ROOT/build/classes
export EXTRA=$PROJECT_ROOT/lib/avalon-excalibur-4.1.jar:$PROJECT_ROOT/lib/avalon-framework-4.1.2.jar:$PROJECT_ROOT/lib/cglib2.jar:$PROJECT_ROOT/lib/checkstyle-all-2.4.jar:$PROJECT_ROOT/lib/commons-collections.jar:$PROJECT_ROOT/lib/commons-lang.jar:$PROJECT_ROOT/lib/commons-logging.jar:$PROJECT_ROOT/lib/crimson.jar:$PROJECT_ROOT/lib/dom4j.jar:$PROJECT_ROOT/lib/ehcache.jar:$PROJECT_ROOT/lib/hibernate2.jar:$PROJECT_ROOT/lib/hibernate3.jar:$PROJECT_ROOT/lib/hsqldb.jar:$PROJECT_ROOT/lib/jdbc2_0-stdext.jar:$PROJECT_ROOT/lib/jmxri.jar:$PROJECT_ROOT/lib/jsdk23.jar:$PROJECT_ROOT/lib/jta.jar:$PROJECT_ROOT/lib/junit.jar:$PROJECT_ROOT/lib/log4j.jar:$PROJECT_ROOT/lib/logkit.jar:$PROJECT_ROOT/lib/spring-mock.jar:$PROJECT_ROOT/lib/spring.jar:$PROJECT_ROOT/lib/tyrex-1.0.1_naming.jar:$PROJECT_ROOT/lib/xalan.jar:$PROJECT_ROOT/lib/xml-apis.jar
export PACKAGE=( org.logicalcobwebs )


if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="org/logicalcobwebs/"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
