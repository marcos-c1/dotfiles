#!/bin/bash

function date_time(){
  printf "%s " "$(date +'%d/%m/%Y %r')"
}

function mem_usage() {
  if [ "$(which bc)" ]; then
  # Human readable free -h. Output: x.xGi x.xGi
    read used total <<< $(free -m | awk '/Mem/{printf $2" "$3}')
    # Calculate the percentage of memory used with bc.
    percent=$(bc -l <<< "100 * $total / $used")
    # Feed the variables into awk and print the values with formating.
    awk -v u=$used -v t=$total -v p=$percent 'BEGIN {printf "%sMi/%sMi | %.1f% | ", t, u, p}'
  fi
}

function main(){
  mem_usage
  date_time
} 

main
