% Uebung Nr. 7 Zeigerdiagramm nach Brinkmeyer
.PS
cct_init
scale = 25.6
hlf = dimen_/2
qrt = dimen_/4
del = dimen_/3
sex = dimen_/6

 
V1: gap(down_ 2*elen_,,A); llabel( ,\underline{U}, )
    line right dimen_ from V1.start;
Z1: resistor(down_ elen_,,E); llabel( ,\underline{Z}_1, );
Z2: resistor(down_ elen_,,E); llabel( ,\underline{Z}_2, );
    line right dimen_ from Z2.start
G2: gap(down_ elen_,,A); llabel( ,\underline{U}_{osz}, );
    line left to V1.end;
.PE
