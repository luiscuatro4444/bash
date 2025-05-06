#!/bin/bash

# array-sort: Sort an array

array=(f g q v a)

echo "Original array: ${array[@]}"
array_sorted=($(for i in "${array[@]}"; do echo $i; done | sort ))
echo "Sorted array: ${array_sorted[@]}"
