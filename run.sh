#!/bin/sh

ls -l |
  sort |
  ./sw-text2tokens |
  grep -i '[a-z]\{3,\}' |
  sort |
  uniq -c
