#!/bin/bash

until [[ \
			"$(curl -I -v \
				-L "https://development.zoom.red/tracking-de-envios-personas/?nro-guia=1589783850&tipo-consulta=1")" ]] &> /home/lmora/zoom-red-curl-output.txt
		do
			echo "$COUNTER"
		COUNTER=$[ $COUNTER +1 ]
			if [ "$COUNTER" -eq 1 ]; then
				break
			fi
	done
exit
