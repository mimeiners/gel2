% Uebung Schaltungsberechnung in reeller Schreibweise  nach Brinkmeyer
.PS
	cct_init
	scale = 25.6
	hlf = dimen_/2
	qrt = dimen_/4
	del = dimen_/3
	sex = dimen_/6
	sinclude(hw01p3.dim)
	s_init(hw01p3dims)	

	I0: source(down_ elen_ ,AC); b_current(i_0(t),,O);
	    line right dimen_ from I0.start;
	G1: gap(down_ elen_,,A); llabel( ,u(t), );
	    line right dimen_ from G1.start;
	C1: capacitor(down_ elen_); llabel( ,C, ); b_current(i_C(t))
	    line right elen_ from C1.start;
	R1: resistor(down_ elen_,,E); llabel( ,R, ); b_current(i_R(t))
	    line left to I0.end;
.PE
