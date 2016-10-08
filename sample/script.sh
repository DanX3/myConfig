#!/bin/bash

#where to save the data files
filename='data.dat'
problemsize=100000

#sample for loop to iterate over a variable
for (( i=1; i<=$problemsize; i*=10)); do
    #data to plot
    echo $i
done
