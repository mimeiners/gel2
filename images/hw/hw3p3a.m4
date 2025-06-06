% Uebung Nr. 3 Zeigerdiagramm nach Brinkmeyer
.PS
cct_init
scale = 25.6
hlf = dimen_/2
qrt = dimen_/4
del = dimen_/3
sex = dimen_/6


V1: source(down_ elen_,AC); rlabel( ,\underline{V}_1, )
    line right dimen_ from V1.start;
Z1: resistor(right_ elen_,,E); rlabel( ,Z_1, );
Z2: resistor(down_ elen_,,E); llabel( ,Z_2, );
    line right dimen_ from Z1.end;
G2: gap(down_ elen_,,A); llabel( ,\underline{V}_2, );
    line left to V1.end;
.PE
