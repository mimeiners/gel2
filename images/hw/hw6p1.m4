% Uebung Leistungsberechnung  nach Brinkmeyer
.PS
cct_init
scale = 25.6
hlf = dimen_/2
qrt = dimen_/4
del = dimen_/3

R1: resistor(right_ elen_,,E); llabel( ,R_i, );
L1: inductor(right_ elen_); llabel( ,L_i, );
G1: gap(down_ elen_);
C2: capacitor(right_ elen_ from L1.end); llabel( ,C_2, );
R2: resistor(down_ elen_,,E); llabel( ,R_2, );
V0: source(down_ elen_ from R1.start,AC); rlabel( ,\underline{U}_0, );
line right to R2.end	
.PE
