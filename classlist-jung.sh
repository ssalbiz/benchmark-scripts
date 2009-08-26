#!/bin/bash
find ${CLASSES_DIR} | sed 's/.*jung-2.0\///'| sed 's/\//\./g' | grep "\.class$" | grep -v "\\$" | sed 's/\.class$//' 

