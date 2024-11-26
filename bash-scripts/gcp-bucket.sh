#!bin/bash

jsonFilePath="/home/key.json"
bucketname="gcp-bucket"
mountpoint="/gcp-bucket"
#Make sure gcsfuse is installed before hand, check user id and group id for proper permissions on regular users access to the bucket

gcsfuse --key-file=$jsonFilePath -o allow_other --uid 33 --gid 33 --file-mode 775 --dir-mode 775 $bucketname $mountpoint