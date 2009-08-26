#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/jfreechart-1.0.13
export EXTRA=$PROJECT_ROOT/lib/jcommon-1.0.16.jar:$PROJECT_ROOT/lib/servlet.jar
export CLASSES_DIR=$PROJECT_ROOT/build
export MAIN_CLASS=( org.jfree.chart.JFreeChart org.jfree.chart.util.RelativeDateFormat org.jfree.chart.axis.MonthDateFormat org.jfree.chart.demo.TimeSeriesChartDemo1 org.jfree.chart.demo.PieChartDemo1 org.jfree.chart.demo.BarChartDemo1 )

export PACKAGE=( org.jfree )

if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="org/jfree/"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
