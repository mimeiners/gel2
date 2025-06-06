% Einfacher RC-Hochpass
.PS
cct_init
scale = 25.6
hlf = dimen_/2
qrt = dimen_/4
del = dimen_/3
sex = dimen_/6

 
V1: gap(down_ elen_,,A); rlabel( ,\underline{V}_1, )
    line right dimen_ from V1.start;
Z1: capacitor(right_ elen_,,E); llabel( ,C, );
Z2: resistor(down_ elen_,,E); llabel( ,R, );
    line right dimen_ from Z2.start
V2: gap(down_ elen_,,A); llabel( ,\underline{V}_2, );
    line left to V1.end;
.PE
