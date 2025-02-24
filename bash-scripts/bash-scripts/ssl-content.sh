#!/bin/bash

format="x509"
certificate="certificate.crt"

#

openssl $format -text -in $certificate -noout