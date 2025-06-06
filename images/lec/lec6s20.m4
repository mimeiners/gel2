% lec6s20.m4: Netzwerk fuer Kontenpotentialverfahren nach Kasper
.PS
	cct_init
	scale = 25.6
	hlf = dimen_/2
	qrt = dimen_/4
	del = dimen_/3
	sex = dimen_/6
	sinclude(lec6s20.dim)
	s_init(lec6s20dims)

	V0:	dot; "0" rjust above;
		line right hlf;
	C5:	capacitor(right_ elen_); llabel( ,C_5, ); b_current()
		line right hlf;
	V1:	dot; "1" rjust above; line down hlf;
	G2:	resistor(down_ elen_,,E); llabel( ,G_2, ); b_current
		line down hlf;
	V3:	dot; "3" ljust below; line left hlf;
	G1:	resistor(left_ elen_,,E); rlabel( ,G_1, ); b_current(,,,E)
		line left hlf then up to V0; 
	I0:	line up hlf; source(up_ elen_,AC); llabel( ,i_0(t), );
		line up hlf; 
	V4:	dot; "4" rjust above; line right hlf;
	G4:	resistor(right_ elen_,,E); llabel( ,G_4, ); b_current()
		line right hlf; 
	V2:	dot; "2" rjust above;
	{
		line right dimen_ then down hlf;
	G3:	resistor(down_ elen_,,E); llabel( ,G_3, ); b_current()
		line down hlf then left to V1;
	}
		line down hlf;
	C6:	capacitor(down_ elen_); rlabel( ,C_6, ); b_current()
		line down to V1;
.PE
