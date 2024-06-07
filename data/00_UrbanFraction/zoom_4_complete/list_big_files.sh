#!/bin/bash
git ls-tree -r -l HEAD | sort -k 4 -n -r | head -n 10 | awk '{size=$4; if (size >= 1048576) {printf "%.2f MB\t%s\n", size/1048576, $5} else if (size >= 1024) {printf "%.2f KB\t%s\n", size/1024, $5} else {printf "%d B\t%s\n", size, $5}}'

