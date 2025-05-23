#!/bin/bash

# sys_info_page_posit_params: program to output a system information page

PROGNAME="$(basename "$0")"
TITLE="System Information Report For $HOSTNAME"
CURRENT_TIME="$(date +"%x %r %Z")"
TIMESTAMP="Generated $CURRENT_TIME", by $USER"

report_uptime () {
	cat <<- _EOF_
		<h2>System Uptime</h2>
		<pre>$(uptime)</pre>
		_EOF_
	return
}

report_disk_space () {
	cat <<- _EOF_
		<h2>Disk Space Utilization</h2>
		<pre>$(df -h)</pre>
		_EOF_
	return
}

report_home_space () {
	if [[ "$(id -u)" -eq 0 ]]; then
		cat <<- _EOF_
		<h2>Home Space Utilization (All Users)</h2>
		<pre>$(du -sh /home/*)</pre>
		_EOF_
	fi
	return
}	

usage () {
	echo "$PROGNAME: usage: $PROGNAME [-f file | -i]"
	return
}

write_html_page () {
	cat <<- _EOF_
	<html>
		<head>
			<title>$TITLE</title>
		</head>
		<body>
			<h1>$TITLE</h1>
			<p>$TIMESTAMP</p>
			$(report_uptime)
			$(report_disk_space)
			$(report_home_space)
		</body>
	</html>
	_EOF_
	return
}

# process command line options

interactive=
filename=

while [[ -n "$1" ]]; do
	case "$1" in
		-f | --file) 	shift
				filename="$1"
				;;
		-i | --interactive)	interactive=1
					;;
		-h | --help)		usage
					exit
					;;
		*)			usage >&2
					exit 1
					;;
	esac
	shift
done
			
