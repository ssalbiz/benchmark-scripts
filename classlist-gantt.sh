#!/bin/bash
find ${CLASSES_DIR} | sed 's/.*ganttproject-2.0.9\///'| sed 's/\//\./g' | grep "\.class$" | grep -v "\\$" | sed 's/\.class$//' 

