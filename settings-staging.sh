#!/bin/bash



if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS=""
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
