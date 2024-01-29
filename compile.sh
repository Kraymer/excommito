#!/bin/bash

recipe-grid-site -s 8 _data/recipes recipes
# This command uses the -exec option of find to execute the sed command on each file individually.
# The \([^[:alnum:]]\) captures the non-alphanumeric character before "for" and ensures it is included in the replacement.
find recipes/ -type f -name "*.html" -exec sed -i 's/\([^[:alnum:]]\)for /\1pour /g' {} +
