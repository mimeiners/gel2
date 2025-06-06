% Parallelresonanzkreis mit Transformator  nach Brinkmeyer
.PS
cct_init
scale = 25.6
hlf = dimen_/2
qrt = dimen_/4
sex = dimen_/6

G1: gap(down_ elen_); rarrow(\underline{V}_1);
    line right dimen_ from G1.start; dot
R1: resistor(down_ elen_,,E); llabel( ,R_1, ); dot
    line right dimen_ from R1.start; dot
L1: inductor(down_ elen_); llabel( ,L_1, ); dot
    line right dimen_ from L1.start; dot
C1: capacitor(down_ elen_); llabel( ,C_1, ); dot
    line right dimen_ from C1.start
T1: resistor(down_ elen_,4,Q)
    line right to G1.end
T2: resistor(down_ elen_ from T1.start+(hlf,0),4,QR)
    "\mbox{ü}" at T1.end+(qrt,-sex)
    line right dimen_ from T2.start; dot
R2: resistor(down_ elen_,,E); llabel( ,R_2, ); dot
    line right dimen_ from R2.start
C2: capacitor(down_ elen_); llabel( ,C_2, )
    line right to T2.end
.PE
