#!/bin/bash

input_file="atp_close_rate_fx.IFF"
output_file="atp_close_rate_fx.txt"

line_length=$(head -c 6 "$input_file" | sed 's/^0*//')

line=$(cat "$input_file")

for ((i = 0; i < ${#line}; i += line_length))
do
    echo "${line:i:line_length}"
done > "$output_file"