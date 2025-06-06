% Heizeinrichtung
.PS
cct_init
scale = 25.6
hlf = dimen_/2
qrt = dimen_/4
del = dimen_/3
sex = dimen_/6


V0: source(down_ elen_,AC); rlabel( ,\underline{U}_G, )
LG: inductor(right_ elen_ from V0.start); llabel( ,L_G, )
RG: resistor(right_ elen_,,E); llabel( ,R_G, )
G1: gap(down_ elen_)
    line right dimen_ from G1.start
CK: capacitor(down_ elen_); llabel( ,C_K, )
    line right dimen_ from CK.start
G2: gap(down_ elen_)
    line right dimen_ from G2.start
RV: resistor(down_ elen_,,E); llabel( ,R_V, )
    line left to V0.end
.PE
