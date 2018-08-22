#!/bin/bash -x
echo $current_date
find /mn/* -type f -mtime +60 -delete  >> /path/to/scripts/delete.log
