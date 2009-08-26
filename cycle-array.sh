#!/bin/bash

for i in settings-*; do . ./benchmark.sh `echo $i | sed 's/^settings-//' | sed 's/\.sh$//'` array; done
