#!/bin/bash
## Execute with bash since [[]] is a bash expression
destination="https://webservices-bal.zoom.red/baaszoom/public/orinoco/getTasaBCVWs"
request="`curl -ks $destination | grep "EXITOSMENTE"`"
subject="Destination $destination is not responding via web request"
body="
Attempts to reach $destination via HTTPS request were not succesful. Remote host may be presenting difficulties
"
sender="no-responder@zoom.red"
recipient="luis.mora@zoom.red"



if [[ "$request" = *"EXITOSAMENTE"* ]]; then

	            echo "Domain is up and accepting request"

		    else

	            echo "Subject:$subject $body" | mailx -r "$sender" -s "$subject" "$recipient"

fi
