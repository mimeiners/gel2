% Uebung Nr. 7 Zeigerdiagramm nach Brinkmeyer
.PS
cct_init
scale = 25.6
hlf = dimen_/2
qrt = dimen_/4
del = dimen_/3

V1: source(down_ 2*elen_,AC); rlabel( ,\underline{U}_1, )
    line right dimen_ from V1.start;
R1: resistor(right_ elen_,,E); rlabel( ,R_1, );
C1: capacitor(down_ elen_); llabel( ,C, );
R2: resistor(down_ elen_,,E); llabel( ,R_2, );
    line right dimen_ from R1.end;
G2: gap(down_ 2*elen_,,A); llabel( ,\underline{U}_2, );
    line left to V1.end;
.PE
