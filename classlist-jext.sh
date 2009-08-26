#!/bin/bash

find ${CLASSES_DIR} | sed 's/.*build\///'| sed 's/\//\./g' | grep "\.class$" | grep -v "\\$" | sed 's/\.class$//' | grep -v "updating" 

