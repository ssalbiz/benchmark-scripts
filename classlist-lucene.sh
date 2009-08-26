#!/bin/bash
find ${CLASSES_DIR} | sed 's/.*java\///'| sed 's/\//\./g' | grep "\.class$" | grep -v "\\$" | sed 's/\.class$//' 

