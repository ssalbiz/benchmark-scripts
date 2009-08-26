#!/bin/bash
find ${CLASSES_DIR} | sed 's/.*smark3\///'| sed 's/\//\./g' | grep "\.class$" | grep -v "\\$" | sed 's/\.class$//' 

