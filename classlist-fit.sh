#!/bin/bash
find ${CLASSES_DIR} | sed 's/.*Fit\///'| sed 's/\//\./g' | grep "\.class$" | grep -v "\\$" | sed 's/\.class$//' 

