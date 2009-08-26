#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/galleon/galleon
#
export EXTRA=$PROJECT_ROOT/lib/asm-1.5.3.jar:$PROJECT_ROOT/lib/asm-attrs-1.5.3.jar:$PROJECT_ROOT/lib/asm-util-1.5.3.jar:$PROJECT_ROOT/lib/cglib-2.1_3.jar:$PROJECT_ROOT/lib/commons-beanutils-1.7.0.jar:$PROJECT_ROOT/lib/commons-betwixt-0.8.jar:$PROJECT_ROOT/lib/commons-codec-1.3.jar:$PROJECT_ROOT/lib/commons-collections-3.2.jar:$PROJECT_ROOT/lib/commons-dbcp-1.2.2.jar:$PROJECT_ROOT/lib/commons-digester-1.8.jar:$PROJECT_ROOT/lib/commons-discovery-0.4.jar:$PROJECT_ROOT/lib/commons-httpclient-3.0.1.jar:$PROJECT_ROOT/lib/commons-lang-2.3.jar:$PROJECT_ROOT/lib/commons-logging-1.1.jar:$PROJECT_ROOT/lib/commons-net-1.4.1.jar:$PROJECT_ROOT/lib/commons-pool-1.3.jar:$PROJECT_ROOT/lib/concurrent.jar:$PROJECT_ROOT/lib/derby-10.2.2.0.jar:$PROJECT_ROOT/lib/derbynet-10.2.2.0.jar:$PROJECT_ROOT/lib/derbytools-10.2.2.0.jar:$PROJECT_ROOT/lib/dom4j-1.4-dev-8.jar:$PROJECT_ROOT/lib/dom4j-1.6.1.jar:$PROJECT_ROOT/lib/ehcache-1.2.3.jar:$PROJECT_ROOT/lib/forms-1.1.0.jar:$PROJECT_ROOT/lib/freemarker.jar:$PROJECT_ROOT/lib/hdphotos-stub.jar:$PROJECT_ROOT/lib/hibernate-3.2.4sp1.jar:$PROJECT_ROOT/lib/hibernate-tools-3.2.0beta9.jar:$PROJECT_ROOT/lib/hme-1.4.jar:$PROJECT_ROOT/lib/hme-hd-0.4.1.jar:$PROJECT_ROOT/lib/hme-host-sample-1.4.jar:$PROJECT_ROOT/lib/htmlparser-1.6.jar:$PROJECT_ROOT/lib/informa-0.7.0.jar:$PROJECT_ROOT/lib/j2ee-1.4.jar:$PROJECT_ROOT/lib/jampal-1.14.jar:$PROJECT_ROOT/lib/javassist.jar:$PROJECT_ROOT/lib/jawin-1.0.19.jar:$PROJECT_ROOT/lib/jaxen.jar:$PROJECT_ROOT/lib/jaxme2.jar:$PROJECT_ROOT/lib/jaxmeapi.jar:$PROJECT_ROOT/lib/jaxmexs.jar:$PROJECT_ROOT/lib/jboss-aop-asintegration-core.jar:$PROJECT_ROOT/lib/jboss-aop-asintegration-jmx.jar:$PROJECT_ROOT/lib/jboss-aop-asintegration-mc.jar:$PROJECT_ROOT/lib/jboss-aop-jboss5.jar:$PROJECT_ROOT/lib/jboss-aop-mc-int.jar:$PROJECT_ROOT/lib/jboss-aop.jar:$PROJECT_ROOT/lib/jboss-bootstrap.jar:$PROJECT_ROOT/lib/jboss-cache-1.2.2.jar:$PROJECT_ROOT/lib/jboss-classloader.jar:$PROJECT_ROOT/lib/jboss-classloading-spi.jar:$PROJECT_ROOT/lib/jboss-classloading-vfs.jar:$PROJECT_ROOT/lib/jboss-classloading.jar:$PROJECT_ROOT/lib/jboss-common-core.jar:$PROJECT_ROOT/lib/jboss-dependency.jar:$PROJECT_ROOT/lib/jboss-deployers-client-spi.jar:$PROJECT_ROOT/lib/jboss-deployers-client.jar:$PROJECT_ROOT/lib/jboss-deployers-core-spi.jar:$PROJECT_ROOT/lib/jboss-deployers-core.jar:$PROJECT_ROOT/lib/jboss-deployers-impl.jar:$PROJECT_ROOT/lib/jboss-deployers-spi.jar:$PROJECT_ROOT/lib/jboss-deployers-structure-spi.jar:$PROJECT_ROOT/lib/jboss-deployers-vfs-spi.jar:$PROJECT_ROOT/lib/jboss-deployers-vfs.jar:$PROJECT_ROOT/lib/jboss-j2se.jar:$PROJECT_ROOT/lib/jboss-jmx.jar:$PROJECT_ROOT/lib/jboss-kernel.jar:$PROJECT_ROOT/lib/jboss-logging-jdk.jar:$PROJECT_ROOT/lib/jboss-logging-log4j.jar:$PROJECT_ROOT/lib/jboss-logging-spi.jar:$PROJECT_ROOT/lib/jboss-main.jar:$PROJECT_ROOT/lib/jboss-managed.jar:$PROJECT_ROOT/lib/jboss-mbeans.jar:$PROJECT_ROOT/lib/jboss-mdr.jar:$PROJECT_ROOT/lib/jboss-metatype.jar:$PROJECT_ROOT/lib/jboss-profileservice-spi.jar:$PROJECT_ROOT/lib/jboss-reflect.jar:$PROJECT_ROOT/lib/jboss-system-jmx.jar:$PROJECT_ROOT/lib/jboss-system.jar:$PROJECT_ROOT/lib/jboss-vfs.jar:$PROJECT_ROOT/lib/jboss-xml-binding.jar:$PROJECT_ROOT/lib/jd3lib-a4.jar:$PROJECT_ROOT/lib/jdai-0.4.jar:$PROJECT_ROOT/lib/jdbc2_0-stdext.jar:$PROJECT_ROOT/lib/jdom-1.0.jar:$PROJECT_ROOT/lib/jl1.0.jar:$PROJECT_ROOT/lib/jmdns-1.0.jar:$PROJECT_ROOT/lib/js-1.6R5.jar:$PROJECT_ROOT/lib/jshortcut-0.4.jar:$PROJECT_ROOT/lib/jta-1.1.jar:$PROJECT_ROOT/lib/log4j-1.2.14.jar:$PROJECT_ROOT/lib/looks-1.3.2.jar:$PROJECT_ROOT/lib/mail-1.4.jar:$PROJECT_ROOT/lib/mediamanager-videoman-0.8.jar:$PROJECT_ROOT/lib/mp3spi1.9.4.jar:$PROJECT_ROOT/lib/odmg.jar:$PROJECT_ROOT/lib/resolver.jar:$PROJECT_ROOT/lib/saxon-8.7.jar:$PROJECT_ROOT/lib/serializer.jar:$PROJECT_ROOT/lib/smack.jar:$PROJECT_ROOT/lib/smackx.jar:$PROJECT_ROOT/lib/tagsoup-1.1.3.jar:$PROJECT_ROOT/lib/tritonus_share.jar:$PROJECT_ROOT/lib/upcoming.jar:$PROJECT_ROOT/lib/wrapper-3.2.3.jar:$PROJECT_ROOT/lib/xalan.jar:$PROJECT_ROOT/lib/xbean-1.0.4.jar:$PROJECT_ROOT/lib/xercesImpl-2.9.0.jar:$PROJECT_ROOT/lib/xml-apis-2.9.0.jar:$PROJECT_ROOT/lib/xpp3.jar:$PROJECT_ROOT/lib/yahoo_search-2.0.1.jar:$PROJECT_ROOT/lib/proxool-0.8.3.jar:$PROJECT_ROOT/lib/jgroups-all-2.4.1.jar:$PROJECT_ROOT/lib/c3p0-0.9.1.jar::$PROJECT_ROOT/lib/jmxri-1.2.jar:$PROJECT_ROOT/lib/jboss-cache-jdk50.jar:$PROJECT_ROOT/lib/antlr-2.7.6.jar:$PROJECT_ROOT/lib/bananas-1.3-custom.jar:$PROJECT_ROOT/lib/browserlauncher.jar:$PROJECT_ROOT/lib/activation-1.1.jar:$PROJECT_ROOT/lib/axis-1.3.jar:$PROJECT_ROOT/lib/axis-jaxrpc-1.3.jar:$PROJECT_ROOT/lib/axis-saaj-1.3.jar:$PROJECT_ROOT/lib/axis-wsdl4j-1.5.1.jar:$PROJECT_ROOT/lib/jaxb-api-2.0-japex.jar:$PROJECT_ROOT/lib/apple-extensions.jar
#$PROJECT_ROOT/lib/MHS-1.6.1-1697.jar
#$PROJECT_ROOT/lib/activation-1.1.jar
#$PROJECT_ROOT/lib/axis-1.3.jar:$PROJECT_ROOT/lib/axis-jaxrpc-1.3.jar:$PROJECT_ROOT/lib/axis-saaj-1.3.jar
#$PROJECT_ROOT/lib/axis-wsdl4j-1.5.1.jar

export CLASSES_DIR=$PROJECT_ROOT/build
export MAIN_CLASS=( org.lnicholls.galleon.gui.Galleon org.lnicholls.galleon.server.ServiceWrapper org.lnicholls.galleon.server.Server org.lnicholls.galleon.util.Lyrics org.lnicholls.galleon.app.AppHost org.lnicholls.galleon.togo.ToGo org.lnicholls.galleon.apps.photos.AlbumParser org.lnicholls.galleon.apps.weather.WeatherData )
export PACKAGE=( org.lnicholls.galleon )


if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="org/lnicholls/galleon/"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi