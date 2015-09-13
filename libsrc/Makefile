COPY=cp
REMOVE=rm
all:
	gcc -shared -fPIC -o guitar.so guitar.c 
	${COPY} guitar.so ../guitar/ext

clean:
	${REMOVE} guitar.so
	${REMOVE} ../guitar/ext/guitar.so
