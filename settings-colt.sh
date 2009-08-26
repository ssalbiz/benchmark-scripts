#!/bin/bash

export PROJECT_ROOT=$BENCHMARKS_ROOT/colt
export EXTRA=${PROJECT_ROOT}/lib/concurrent.jar
export CLASSES_DIR=$PROJECT_ROOT/build/classes

export MAIN_CLASS=( cern.jet.stat.quantile.Quantile1Test cern.jet.stat.quantile.QuantileFinderTest cern.jet.stat.quantile.QuantileCalc cern.jet.random.Benchmark cern.jet.random.engine.RandomSeedGenerator cern.jet.random.sampling.RandomSamplingAssistant cern.jet.random.sampling.RandomSampler cern.colt.matrix.bench.BenchmarkMatrix cern.colt.matrix.doublealgo.Statistic cern.colt.matrix.impl.BenchmarkMatrix2D cern.colt.matrix.impl.Benchmark cern.colt.matrix.impl.TestMatrix2D cern.colt.matrix.impl.QRTest cern.colt.matrix.impl.NormInfinityTest cern.colt.Version cern.colt.map.Benchmark )
export PACKAGE=( cern )

if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS="cern/"
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
