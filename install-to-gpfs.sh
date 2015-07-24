#!/bin/bash
set -x
buildarea=$(dirname $(readlink -f $BASH_SOURCE))
instarea=$(dirname $buildarea)/install
cd $instarea
for pkg in cloog cmake gcc gmp isl modules Modules mpc mpfr python fftw root 
do
    rsync -a $pkg /gpfs01/lbne/users/sw/em
done

#tar -cf - cloog/ cmake/ gcc/ gmp/ isl/ modules/ Modules/ mpc mpfr/ python/ root/ | tar -C /gpfs01/lbne/users/sw/em -xvf -
