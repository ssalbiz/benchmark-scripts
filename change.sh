#!/bin/bash

for i in settings-*
do
  sed 's/^else$/elif\ \[\ \"\$ANALYSIS\"\ ==\ \"alias\"\ \]\;\ then/' $i >$i.mv
done

