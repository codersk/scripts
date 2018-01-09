#!/bin/bash
find . -type f | egrep -v "(.svn|.git)" | xargs grep -in $*