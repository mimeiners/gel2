% Ortskurve mit Parametern
.PS
cct_init
scale = 25.6
hlf = dimen_/2
qrt = dimen_/4
del = dimen_/3
sex = dimen_/6
sinclude(hw4p2.dim)
s_init(hw4p2dims)

P1: gap(down_ elen_); rlabel( ,\underline{Z}_e, )
R1: resistor(right_ elen_ from P1.start,,E); rlabel( ,R_1, ); dot;
R2: resistor(down_ elen_,,E); rlabel( ,R_2, ); dot;
    line right dimen_ from R1.end; dot;
L1: inductor(down_ elen_); rlabel( ,L, ); dot;
    line right dimen_ from L1.start; dot;
C1: capacitor(down_ elen_,,E); rlabel( ,C, ); dot;
R3: resistor(right_ elen_ from C1.start,,E); rlabel( ,R, );
    line down elen_ then left to P1.end;
.PE
