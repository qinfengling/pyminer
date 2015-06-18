#!/bin/sh
cat pyminer.log | grep "a3218" | cut -c11- | awk '{

digit = index("123456789abcdef", substr($1,128,1));

if (digit < 12) print $1
}'
