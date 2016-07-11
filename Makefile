
.PHONY : install
.PHONY : test

test :
	tic -c -v5 gsos-console.ti

install :
	tic gsos-console.ti
