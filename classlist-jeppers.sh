#!/bin/bash
find ${CLASSES_DIR} | sed 's/.*classes\///'| sed 's/\//\./g' | grep "\.class$" | grep -v "\\$" | sed 's/\.class$//' 

