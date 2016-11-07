#!/bin/bash
#PBS -l nodes=1:ppn=20
#PBS -l walltime=00:10:00

#where to save the data files
filename='data.dat'
problemsize=100000

gcc -fopenmp transpose.c -o transpose

#sample for loop to iterate over a variable
for (( i=1; i<=16; i*=2)); do
    #data to plot
    OMP_NUM_THREADS=$i ./transpose $problemsize
done
