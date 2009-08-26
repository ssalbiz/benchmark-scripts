#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/jext
export EXTRA=$PROJECT_ROOT/lib/dawn-1.1.1.jar:$PROJECT_ROOT/lib/jext-5.0.jar:$PROJECT_ROOT/lib/jython-2.1.jar:$PROJECT_ROOT/lib/looks-1.2.2.jar
echo $EXTRA
export CLASSES_DIR=$PROJECT_ROOT/build

export MAIN_CLASS=( org.jext.Jext org.jext.dawn.Dawn org.jext.misc.PluginDownload org.gjt.sp.jedit.textarea.JEditTextArea )

export PACKAGE=( org.jext  )
if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="org/jext/"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
