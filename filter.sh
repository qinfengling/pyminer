#!/bin/sh
cat pyminer.log | grep "a3218" | cut -c100- | awk '{
for (x = 1; x <= length($1); x++) {
    digit = index("123456789abcdef", substr($1,x,1));
    number =number * 16 + digit
}

if (number < 500) print $1
}'
