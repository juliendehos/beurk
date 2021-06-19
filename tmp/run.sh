#!/bin/sh

if [ $# -ne 1 ] ; then
    echo "usage: $0 <ml file>"
    exit
fi

ML="$1"
BYTE="${ML%.ml}.byte"

ocamlbuild ${BYTE} && ocamlrun ${BYTE} && rm ${BYTE}

