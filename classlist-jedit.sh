#!/bin/bash
find ${CLASSES_DIR} | sed 's/.*core\///'| sed 's/\//\./g' | grep "\.class$" | grep -v "\\$" | sed 's/\.class$//' 

