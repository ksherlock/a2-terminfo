
SRC = appleIIgs.ti gno-console.ti gsos-console.ti proterm-special.ti apppleIII.ti

.PHONY : install
.PHONY : test

test :
	tic -v10 -N -c appleIIgs.ti
	tic -v10 -N -c gno-console.ti
	tic -v10 -N -c gsos-console.ti
	tic -v10 -N -c proterm-special.ti
	tic -v10 -N -c appleIII.ti

install :
	tic -v10 -N -s appleIIgs.ti
	tic -v10 -N -s gno-console.ti
	tic -v10 -N -s gsos-console.ti
	tic -v10 -N -s proterm-special.ti
	tic -v10 -N -s appleIII.ti

all.ti : $(SRC)
	cat $^ > $@
