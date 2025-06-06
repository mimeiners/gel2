% Uebung Nr. 7 kompensierter Spannungsteiler nach Brinkmeyer
.PS
cct_init
scale = 25.6
hlf = dimen_/2
qrt = dimen_/4
del = dimen_/3
sex = dimen_/6
	 
V1: gap(down_ 2*elen_,,A); llabel( ,\underline{U}, )
    line right dimen_ from V1.start;
R1: resistor(down_ elen_,,E); llabel( ,R_1, ); dot
R2: resistor(down_ elen_,,E); llabel( ,R_2, ); dot; ground(,,E)
    line right dimen_ from R1.start
C1: variable(`capacitor(down_ elen_)',P); llabel( ,C_1, ); dot
    line left to R1.end;
    line right elen_ from C1.end; dot
 C: capacitor(down_ elen_); llabel( ,C, ); dot
    line right dimen_ from C.start; dot
 R: resistor(down_ elen_,,E); llabel( ,R, ); dot
    line right dimen_ from R.start;
G2: gap(down_ elen_,,A); llabel( ,\underline{U}_{osz}, );
    line left to V1.end;
.PE
