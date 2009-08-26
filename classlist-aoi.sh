#!/bin/bash
find ${CLASSES_DIR} | sed 's/.*build\///'| grep "artofillusion" | sed 's/\//\./g' | grep "\.class$" | grep -v "\\$" | sed 's/\.class$//' 

