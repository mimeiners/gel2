% Uebung Parallelresonanzkreis mit Transformator  nach Brinkmeyer
.PS
cct_init
scale = 25.6
hlf = dimen_/2


G1: gap(down_ elen_); rarrow(\underline{V}_1)
line right dimen_ from G1.start; dot
R1: resistor(down_ elen_,,E); llabel( ,R_{ges}, ); dot
line right dimen_ from R1.start; dot
L1: inductor(down_ elen_); llabel( ,L_1, ); dot
line right dimen_ from L1.start
C1: capacitor(down_ elen_); llabel( ,C_{ges}, )
line right to G1.end;
.PE
