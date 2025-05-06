#!/bin/bash

# asynchro-parent: Asynchronous execution demo (parent)

echo "Parent: starting..."

echo "Parent: launching child script..."

/home/lmora/bash-scripts/asynchro-child.bash &
pid=$!
echo "Parent: child (PID= $pid) launched."

echo "Parent: continuing..."
sleep 2

echo "Parent: pausing to wait for child to finish..."

wait "$pid"

echo "Parent: child is finished. Continuing..."
echo "Parent: parent is done. Exiting."
