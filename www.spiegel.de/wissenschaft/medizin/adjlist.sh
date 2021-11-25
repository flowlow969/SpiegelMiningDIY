#!/bin/bash

grep 'name="news_keywords"' * \
| grep -o 'content=".*"' \
| grep -o '".*' \
| grep -o '[^"]*' \
| grep "$1" \
| sed 's/, /,/g' \
| sed 's/$/,/;s/^\(.*,\)'"$1"',\(.*\)$/'"$1"',\1\2/' \
| sed 's/,,/,/;s/,$//'
