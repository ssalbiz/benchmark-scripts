#!/bin/bash

export PROJECT_ROOT=/var/www/localhost/staging
export CLASSES_DIR=$PROJECT_ROOT/


if [ "$ANALYSIS" == "ds-finder" ]; then
  export SOOT_OPTIONS=""
elif [ "$ANALYSIS" == "alias" ]; then
  export SOOT_OPTIONS="-w -p wjtp enabled:true"
fi
