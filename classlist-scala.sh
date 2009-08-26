#!/bin/bash
find ${CLASSES_DIR} | sed 's/.*compiler\///'| sed 's/\//\./g' | grep "\.class$" | grep -v "\\$" | sed 's/\.class$//'
#find ${CLASSES_DIR}/../library | sed 's/.*library\///'| sed 's/\//\./g' | grep "\.class$" | grep -v "\\$\\$" | sed 's/\.class$//' 

