#!/bin/bash

set -e

#lex file
lex $1.l

yacc -d $1.y

#compile
cc -w lex.yy.c y.tab.c -ll

#run file with optional input file
./a.out $2 $3