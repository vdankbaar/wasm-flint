#!/usr/bin/env bash
set -ev
cd $BUILD

### Download and build Flint

curl https://flintlib.org/flint-$FLINT_VERSION.tar.gz -o flint-$FLINT_VERSION.tar.gz
tar xvf flint-$FLINT_VERSION.tar.gz
cd flint-$FLINT_VERSION

time emconfigure ./configure --with-mpir=$PREFIX --with-mpfr=$PREFIX --prefix=$PREFIX --with-gmp=$PREFIX

time emmake make -j4

time emmake make install

