#!/bin/bash 

# sys_info_page: program to output a system information page 

PROGNAME="$(basename "$0")" 
TITLE="System Information Report For $HOSTNAME" 
CURRENT_TIME="$(date +"%x %r %Z")" 
TIMESTAMP="Generated $CURRENT_TIME, by $USER" 

report_uptime () { 
	cat <<- _EOF_ 
<h2>System Uptime</h2> 
<pre>$(uptime)</pre> 
_EOF_ 
return 

