% Uebung Leistungsberechnung  nach Brinkmeyer
.PS
	cct_init
	scale = 25.6
	hlf = dimen_/2
	qrt = dimen_/4
	del = dimen_/3
	sex = dimen_/6
	sinclude(gel2-uebung-1.dim)
	s_init(ueb1dims)	

	V0: source(down_ 2*elen_ ,AC); rlabel( ,U_0, );
	    line right elen_ from V0.start;
	R1: resistor(down_ elen_,,E); llabel( ,R, );
	L1: inductor(down_ elen_); llabel( ,L, );
	    line left to V0.end;
.PE
