#!/bin/bash
find . -type f -exec du -h {} + | sort -rh | head -n 10
