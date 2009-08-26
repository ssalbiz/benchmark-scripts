#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/cdk-1.0.x
export CLASSES_DIR=$PROJECT_ROOT/build/
export MAIN_CLASS=( org.openscience.cdk.applications.FingerPrinter )
export EXTRA=$PROJECT_ROOT/jar/antlr.jar:$PROJECT_ROOT/jar/batik-awt-util.jar:$PROJECT_ROOT/jar/batik-dom.jar:$PROJECT_ROOT/jar/batik-svggen.jar:$PROJECT_ROOT/jar/batik-util.jar:$PROJECT_ROOT/jar/batik-xml.jar:$PROJECT_ROOT/jar/baysmith-io.jar:$PROJECT_ROOT/jar/bcel-5.1.jar:$PROJECT_ROOT/jar/biojava-1.4.jar:$PROJECT_ROOT/jar/commons-cli.jar:$PROJECT_ROOT/jar/dadml.jar:$PROJECT_ROOT/jar/jai_codec.jar:$PROJECT_ROOT/jar/jai_core.jar:$PROJECT_ROOT/jar/jama.jar:$PROJECT_ROOT/jar/javacc.jar:$PROJECT_ROOT/jar/jfontchooser.jar:$PROJECT_ROOT/jar/jgrapht.jar:$PROJECT_ROOT/jar/jniinchi-0.4.jar:$PROJECT_ROOT/jar/jumbo52.jar:$PROJECT_ROOT/jar/log4j-1.2.jar:$PROJECT_ROOT/jar/mysql-2.0.4.jar:$PROJECT_ROOT/jar/postgresql7.0-1.2.jar:$PROJECT_ROOT/jar/sjava-0.68.jar:$PROJECT_ROOT/jar/vecmath1.2.jar:$PROJECT_ROOT/jar/weka.jar:$PROJECT_ROOT/jar/xindice.jar:$PROJECT_ROOT/jar/xml-apis.jar:$PROJECT_ROOT/jar/xmldb.jar:$PROJECT_ROOT/jar/xom.jar

export PACKAGE=( org.openscience )

if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="org/openscience/"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
