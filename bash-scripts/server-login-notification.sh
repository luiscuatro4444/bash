#!/bin/bash

host="`hostname`"

recipient="destination@system.com"

sender="no-reply@system.com"

subject="Email from $host: SSH Alert"

info="`last | head -n 1`"

body="
A SSH login was successful, so here is some information for security:
        User Information:       $info
        Date:                   `date`
        Server:                 `uname -a`
"

if [ "$PAM_TYPE" != "close_session" ]; then
        echo "Subject:$subject $body" | mailx -r "$sender" -s "$subject" "$recipient"
fi

exit 0
