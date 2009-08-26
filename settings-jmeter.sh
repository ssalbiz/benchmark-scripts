#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/jakarta-jmeter-2.3.2
export EXTRA=$PROJECT_ROOT/lib/Tidy.jar:$PROJECT_ROOT/lib/avalon-framework-4.1.4.jar:$PROJECT_ROOT/lib/batik-awt-util-1.6.jar:$PROJECT_ROOT/lib/bsf-2.4.0.jar:$PROJECT_ROOT/lib/bshclient.jar:$PROJECT_ROOT/lib/commons-codec-1.3.jar:$PROJECT_ROOT/lib/commons-collections-3.2.jar:$PROJECT_ROOT/lib/commons-httpclient-3.1.jar:$PROJECT_ROOT/lib/commons-io-1.4.jar:$PROJECT_ROOT/lib/commons-jexl-1.1.jar:$PROJECT_ROOT/lib/commons-lang-2.4.jar:$PROJECT_ROOT/lib/commons-logging-1.1.1.jar:$PROJECT_ROOT/lib/commons-net-1.4.1.jar:$PROJECT_ROOT/lib/excalibur-datasource-1.1.1.jar:$PROJECT_ROOT/lib/excalibur-instrument-1.0.jar:$PROJECT_ROOT/lib/excalibur-logger-1.1.jar:$PROJECT_ROOT/lib/excalibur-pool-1.2.jar:$PROJECT_ROOT/lib/htmllexer-2.0-20060923.jar:$PROJECT_ROOT/lib/htmlparser-2.0-20060923.jar:$PROJECT_ROOT/lib/jCharts-0.7.5.jar:$PROJECT_ROOT/lib/jakarta-oro-2.0.8.jar:$PROJECT_ROOT/lib/jdom-1.0.jar:$PROJECT_ROOT/lib/jorphan.jar:$PROJECT_ROOT/lib/js_rhino1_6R5.jar:$PROJECT_ROOT/lib/junit3.8.2.jar:$PROJECT_ROOT/lib/logkit-1.2.jar:$PROJECT_ROOT/lib/serializer-2_9_1.jar:$PROJECT_ROOT/lib/soap.jar:$PROJECT_ROOT/lib/xalan_2_7_1.jar:$PROJECT_ROOT/lib/xercesImpl-2_9_1.jar:$PROJECT_ROOT/lib/xml-apis-2_9_1.jar:$PROJECT_ROOT/lib/xpp3_min-1.1.4c.jar:$PROJECT_ROOT/lib/xstream-1.3.jar:$PROJECT_ROOT/lib/avalon-logkit-2.1.jar:$PROJECT_ROOT/lib/excalibur-i18n-1.1.jar:$PROJECT_ROOT/lib/batik-util-1.6.jar
export CLASSES_DIR=$PROJECT_ROOT/build/core

export MAIN_CLASS=( org.apache.jmeter.NewDriver org.apache.jmeter.util.BeanShellClient )
export PACKAGE=( org.apache.jmeter )

if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="org/apache/jmeter/"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
