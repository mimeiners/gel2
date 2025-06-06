% Uebung Nr. 7 Zeigerdiagramm nach Brinkmeyer
.PS
cct_init
scale = 25.6
hlf = dimen_/2
qrt = dimen_/4
del = dimen_/3
sex = dimen_/6

U0: source(down_ elen_,AC); rlabel( ,u(t), ); dot; ground(,,E)
    line right dimen_ from U0.start;
    {G1: gap(down_ elen_)}
 C: capacitor(right_ elen_); rlabel( ,C, ); b_current( i(t) ); dot
 L: inductor(down_ elen_); rlabel( ,L, ); b_current( i_L(t) ); dot
    line right dimen_ from L.start;
 R: resistor(down_ elen_,,E); rlabel( ,R, ); b_current( i_R(t) );
    line right to U0.end;
.PE
