
.PHONY : install
.PHONY : test

test :
	tic -v10 -N -c gsos-console.ti

install :
	tic -v10 -N -s gsos-console.ti
