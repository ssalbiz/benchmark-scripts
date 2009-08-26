#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/aglets
export MAIN_CLASS=( com.ibm.awb.launcher.Main com.ibm.aglets.tahiti.MultiEditListPanel com.ibm.aglets.tahiti.MultiList com.ibm.aglets.tahiti.CacheManager com.ibm.aglets.security.DateString com.ibm.aglets.security.Lifetime com.ibm.atp.auth.SharedSecrets com.ibm.awb.launcher.Agletsd com.ibm.awb.misc.URIPattern com.ibm.awb.misc.URIEncoder com.ibm.awb.misc.LogStream com.ibm.awb.misc.Hexadecimal com.ibm.maf.rmi.MAFFinderViewer )
export CLASSES_DIR=$PROJECT_ROOT/lib/classes
export PACKAGE=( com.ibm )


if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="com/ibm/"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
