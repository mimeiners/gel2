% Uebung Parallelresonanzkreis mit Transformator  nach Brinkmeyer
.PS
	cct_init
	scale = 25.6
	hlf = dimen_/2
	qrt = dimen_/4
	del = dimen_/3
	sex = dimen_/6
	sinclude(gel2-uebung-5.dim)
	s_init(ueb52bdims)

	G1: gap(down_ 2*elen_);
	line right dimen_ from G1.start;
	R1: resistor(down_ elen_,,E); llabel( ,R_s, );
	L1: inductor(down_ elen_); llabel( ,L_s, );
	line right to G1.end;
.PE
