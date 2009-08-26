#!/bin/bash
find ${CLASSES_DIR} | sed 's/.*build\///' |sed 's/.*class\///'| sed 's/\//\./g' | grep "\.class$" | grep -v "\\$" | sed 's/\.class$//' 

