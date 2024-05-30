#!/usr/bin/env bash
set -ev
cd $BUILD

### Download and build GMP

curl https://gmplib.org/download/gmp/gmp-$GMP_VERSION.tar.xz -o gmp-$GMP_VERSION.tar.gz
tar xvf gmp-$GMP_VERSION.tar.gz
cd gmp-$GMP_VERSION

time emconfigure ./configure --disable-assembly --host none --enable-cxx --prefix=$PREFIX

time emmake make

time emmake make install