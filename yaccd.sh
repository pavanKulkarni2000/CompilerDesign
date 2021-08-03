#!/bin/bash

set -e

#lex file
lex $1.l


#yacc file
yacc -d $1.y --debug -v

#compile
cc -w lex.yy.c y.tab.c -ll

#run file with optional input file
./a.out $2 $3