#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/hibernate/
export EXTRA=$PROJECT_ROOT/lib/ant-1.6.5.jar:$PROJECT_ROOT/lib/ant-antlr-1.6.5.jar:$PROJECT_ROOT/lib/ant-junit-1.6.5.jar:$PROJECT_ROOT/lib/ant-launcher-1.6.5.jar:$PROJECT_ROOT/lib/ant-swing-1.6.5.jar:$PROJECT_ROOT/lib/antlr-2.7.6rc1.jar:$PROJECT_ROOT/lib/asm-attrs.jar:$PROJECT_ROOT/lib/asm.jar:$PROJECT_ROOT/lib/c3p0-0.9.0.jar:$PROJECT_ROOT/lib/cglib-2.1.3.jar:$PROJECT_ROOT/lib/cleanimports.jar:$PROJECT_ROOT/lib/commons-collections-2.1.1.jar:$PROJECT_ROOT/lib/commons-logging-1.0.4.jar:$PROJECT_ROOT/lib/concurrent-1.3.2.jar:$PROJECT_ROOT/lib/connector.jar:$PROJECT_ROOT/lib/dom4j-1.6.1.jar:$PROJECT_ROOT/lib/ehcache-1.1.jar:$PROJECT_ROOT/lib/jaas.jar:$PROJECT_ROOT/lib/jacc-1_0-fr.jar:$PROJECT_ROOT/lib/jaxen-1.1-beta-7.jar:$PROJECT_ROOT/lib/jboss-cache.jar:$PROJECT_ROOT/lib/jboss-common.jar:$PROJECT_ROOT/lib/jboss-jmx.jar:$PROJECT_ROOT/lib/jboss-system.jar:$PROJECT_ROOT/lib/jdbc2_0-stdext.jar:$PROJECT_ROOT/lib/jgroups-2.2.8.jar:$PROJECT_ROOT/lib/jta.jar:$PROJECT_ROOT/lib/junit-3.8.1.jar:$PROJECT_ROOT/lib/log4j-1.2.11.jar:$PROJECT_ROOT/lib/oscache-2.1.jar:$PROJECT_ROOT/lib/proxool-0.8.3.jar:$PROJECT_ROOT/lib/swarmcache-1.0rc2.jar:$PROJECT_ROOT/lib/syndiag2.jar:$PROJECT_ROOT/lib/versioncheck.jar:$PROJECT_ROOT/lib/xerces-2.6.2.jar:$PROJECT_ROOT/lib/xml-apis.jar:$PROJECT_ROOT/lib/servlet-4.0.6.jar:$PROJECT_ROOT/lib/asm-util.jar:$PROJECT_ROOT/lib/asm-1.5.jar


export CLASSES_DIR=$PROJECT_ROOT/build/classes
export MAIN_CLASS=( org.hibernate.ScrollMode )
#export MAIN_CLASS=( org.hibernate.test.AllTests org.hibernate.auction.Main org.hibernate.pretty.Formatter org.hibernate.dialect.DB2Dialect org.hibernate.exception.NestableException org.hibernate.tool.hbm2ddl.SchemaValidator org.hibernate.tool.hbm2ddl.SchemaUpdate org.hibernate.tool.hbm2ddl.SchemaExport org.hibernate.id.UUIDHexGenerator  )
export PACKAGE=( org.hibernate )

if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="org/hibernate/"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
