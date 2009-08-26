#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/columba
export EXTRA=${PROJECT_ROOT}/lib/bsh-2.0b2.jar:$PROJECT_ROOT/lib/checkstyle-all-3.4.jar:$PROJECT_ROOT/lib/commons-cli-1.0.jar:$PROJECT_ROOT/lib/commons-logging.jar:$PROJECT_ROOT/lib/core-renderer.jar:$PROJECT_ROOT/lib/flexdock-0.4.1.jar:$PROJECT_ROOT/lib/forms-1.0.5.jar:$PROJECT_ROOT/lib/frapuccino-1.0pre1.jar:$PROJECT_ROOT/lib/ical4j-0.9.18.jar:$PROJECT_ROOT/lib/jarbundler-1.9.jar:$PROJECT_ROOT/lib/jcoverage.jar:$PROJECT_ROOT/lib/jdom-1.0.jar:$PROJECT_ROOT/lib/je-2.1.30.jar:$PROJECT_ROOT/lib/jhall-2.0_02.jar:$PROJECT_ROOT/lib/jpim.jar:$PROJECT_ROOT/lib/jreleaseinfo-1.2.0.jar:$PROJECT_ROOT/lib/jscf-0.3.jar:$PROJECT_ROOT/lib/junit.jar:$PROJECT_ROOT/lib/jwizz-0.1.3.jar:$PROJECT_ROOT/lib/jython-2.2a1.jar:$PROJECT_ROOT/lib/looks-2.0.2.jar:$PROJECT_ROOT/lib/lucene-1.4.3.jar:$PROJECT_ROOT/lib/mac_mock.jar:$PROJECT_ROOT/lib/macchiato-1.0pre1.jar:$PROJECT_ROOT/lib/migcalendar-5.6.jar:$PROJECT_ROOT/lib/quaqua.jar:$PROJECT_ROOT/lib/ristretto-1.2-all.jar:$PROJECT_ROOT/lib/swingx.jar:$PROJECT_ROOT/lib/tagsoup-1.0rc3.jar:$PROJECT_ROOT/lib/usermanual.jar:$PROJECT_ROOT/native/linux/lib/jdic.jar:$PROJECT_ROOT/lib/commons-lang.jar:$PROJECT_ROOT/lib/skinlf.jar:$PROJECT_ROOT/lib/asm.jar:$PROJECT_ROOT/lib/xstream.jar:$PROJECT_ROOT/lib/xercesImpl.jar:$PROJECT_ROOT/lib/xpp3-1.1.3.4.C.jar:$PROJECT_ROOT/lib/jpa/ejb3-persistence.jar:$PROJECT_ROOT/native/win32/lib/jniwrap-2.4.jar

#$PROJECT_ROOT/lib/groovy-1.0.jar
#:$PROJECT_ROOT/lib/antlr-2.7.2.jar
#$PROJECT_ROOT/lib/jpa/asm-attrs.jar:$PROJECT_ROOT/lib/jpa/cglib-2.1.3.jar:$PROJECT_ROOT/lib/jpa/commons-logging-1.0.4.jar:$PROJECT_ROOT/lib/jpa/dom4j-1.6.1.jar:$PROJECT_ROOT/lib/jpa/ehcache-1.2.jar:$PROJECT_ROOT/lib/jpa/ejb3-persistence.jar
#:$PROJECT_ROOT/lib/jpa/hibernate-annotations.jar:$PROJECT_ROOT/lib/jpa/hibernate-entitymanager.jar:$PROJECT_ROOT/lib/jpa/hibernate3.jar:$PROJECT_ROOT/lib/jpa/hsqldb.jar:
#:$PROJECT_ROOT/lib/jpa/jta.jar
#:$PROJECT_ROOT/lib/jpa/javassist.jar
#:$PROJECT_ROOT/lib/jpa/jboss-archive-browsing.jar
#:$PROJECT_ROOT/lib/jpa/antlr-2.7.6.jar
#:$PROJECT_ROOT/lib/jpa/commons-collections-2.1.1.jar
export CLASSES_DIR=$PROJECT_ROOT/classes

export MAIN_CLASS=( org.columba.core.main.Main org.columba.core.gui.menu.MenuTest org.columba.core.util.NameParser org.columba.mail.spellcheck.cswilly.FileSpellChecker  )
export PACKAGE=( org.columba )

if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="org/columba/"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
