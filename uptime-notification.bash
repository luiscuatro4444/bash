#!/bin/bash
destination="www.google.com"
request="`curl -Is $destination | grep "200 OK"`"
subject="Destination $destination is not responding via web request"
body="
Attempts to reach $destination via HTTPS request were not succesful. Remote host may be presenting difficulties
"
sender="no-responder@zoom.red"
recipient="luis.mora@zoom.red"



if [[ "$request" = *"200 OK"* ]]; then

            echo "Domain is up and accepting request"

 else

            echo "Subject:$subject $body" | mailx -r "$sender" -s "$subject" "$recipient"

fi
