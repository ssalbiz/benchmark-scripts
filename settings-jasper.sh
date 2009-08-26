#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/jasper/jasperreports-3.5.1
export EXTRA=$PROJECT_ROOT/lib/ant-1.5.1.jar:$PROJECT_ROOT/lib/antlr-2.7.5.jar:$PROJECT_ROOT/lib/batik-anim.jar:$PROJECT_ROOT/lib/batik-awt-util.jar:$PROJECT_ROOT/lib/batik-bridge.jar:$PROJECT_ROOT/lib/batik-css.jar:$PROJECT_ROOT/lib/batik-dom.jar:$PROJECT_ROOT/lib/batik-ext.jar:$PROJECT_ROOT/lib/batik-gvt.jar:$PROJECT_ROOT/lib/batik-parser.jar:$PROJECT_ROOT/lib/batik-script.jar:$PROJECT_ROOT/lib/batik-svg-dom.jar:$PROJECT_ROOT/lib/batik-svggen.jar:$PROJECT_ROOT/lib/batik-util.jar:$PROJECT_ROOT/lib/batik-xml.jar:$PROJECT_ROOT/lib/bsh-2.0b4.jar:$PROJECT_ROOT/lib/commons-beanutils-1.7.jar:$PROJECT_ROOT/lib/commons-collections-2.1.jar:$PROJECT_ROOT/lib/commons-digester-1.7.jar:$PROJECT_ROOT/lib/commons-javaflow-20060411.jar:$PROJECT_ROOT/lib/commons-logging-1.0.2.jar:$PROJECT_ROOT/lib/groovy-all-1.5.5.jar:$PROJECT_ROOT/lib/hibernate3.jar:$PROJECT_ROOT/lib/hsqldb-1.7.1.jar:$PROJECT_ROOT/lib/iText-2.1.0.jar:$PROJECT_ROOT/lib/jakarta-bcel-20050813.jar:$PROJECT_ROOT/lib/jaxen-1.1.1.jar:$PROJECT_ROOT/lib/jcommon-1.0.15.jar:$PROJECT_ROOT/lib/jdt-compiler-3.1.1.jar:$PROJECT_ROOT/lib/jfreechart-1.0.12.jar:$PROJECT_ROOT/lib/jpa.jar:$PROJECT_ROOT/lib/jxl-2.6.jar:$PROJECT_ROOT/lib/log4j-1.2.15.jar:$PROJECT_ROOT/lib/mondrian-2.3.2.8944.jar:$PROJECT_ROOT/lib/png-encoder-1.5.jar:$PROJECT_ROOT/lib/poi-3.2-FINAL-20081019.jar:$PROJECT_ROOT/lib/rhino-1.7R1.jar:$PROJECT_ROOT/lib/saaj-api-1.3.jar:$PROJECT_ROOT/lib/servlet.jar:$PROJECT_ROOT/lib/spring-beans.jar:$PROJECT_ROOT/lib/spring-core.jar:$PROJECT_ROOT/lib/xalan.jar:$PROJECT_ROOT/lib/xercesImpl.jar:$PROJECT_ROOT/lib/xml-apis-ext.jar:$PROJECT_ROOT/lib/xml-apis.jar:$PROJECT_ROOT/lib/eigenbase-resgen.jar:$PROJECT_ROOT/lib/eigenbase-xom.jar:$PROJECT_ROOT/lib/bcprov-jdk15-143.jar:$PROJECT_ROOT/lib/commons-dbcp-1.2.1.jar:$PROJECT_ROOT/lib/bcmail-jdk15-143.jar:$PROJECT_ROOT/lib/commons-pool-1.3.jar:$PROJECT_ROOT/lib/commons-vfs-1.0.jar:$PROJECT_ROOT/lib/activemq-4.0.1.jar
export CLASSES_DIR=$PROJECT_ROOT/build/classes

export MAIN_CLASS=( net.sf.jasperreports.view.JasperViewer net.sf.jasperreports.view.JasperDesignViewer net.sf.jasperreports.engine.data.JRXmlDataSource )


export PACKAGE=( net.sf  )

if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="net/sf"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
