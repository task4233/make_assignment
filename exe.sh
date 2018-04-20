#!bin/bash
CFLAGS="-g -Wall"

while test "$1" != ""; do
    case $1 in
	-nc) CFLAGS="$CFLAGS -lncurses" ;;
	-pt) CFLAGS="$CFLAGS -pthread" ;;
	-gl) CFLAGS="$CFLAGS -L/usr/X11R6/lib -lglut -lGLU -lXmu -lGL -lX11 -lm" ;;
	-*) CFLAGS="$CFLAGS $1" ;;
	*) break ;;
    esac
    shift
done

filename=${1%.*}
writing_filename=${2%.*}

shift
ARGUMENTS="$@"

gcc $CFLAGS ${filename}.c -o ${filename} && ./${filename} $ARGUMENTS >> ${writing_filename}.txt

rm -f ${filename} && rm -f -r ${filename}.dSYM

