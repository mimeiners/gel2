% Einfache RC-Schaltung, Bode-Diagramm
.PS
cct_init
scale = 25.6
hlf = dimen_/2
qrt = dimen_/4
del = dimen_/3

U1: source(down_ 2*elen_,AC); rlabel(,\underline{U}_1,)
    line right dimen_ from U1.start;
C1: capacitor(down_ elen_); llabel(,C_1,);
R1: resistor(down_ elen_,,E); rlabel(,R_1,);
    line right dimen_ from C1.end;
G2: gap(down_ elen_,,A); llabel(,\underline{U}_2,);
    line left to U1.end;
.PE
