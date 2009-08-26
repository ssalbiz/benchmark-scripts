#!/bin/bash
find ${CLASSES_DIR} | sed 's/.*base\///'| sed 's/\//\./g' | grep "\.class$" |  sed 's/\.class$//' | grep -v "\\$" | grep -v "OSX"

