% Uebung 40) Lautsprecher nach Brinkmeyer
.PS
cct_init
scale = 25.6
hlf = dimen_/2

ZE: gap(down_ elen_); rlabel(,Z_E \rightarrow,)
R1: resistor(right_ elen_ from ZE.start,,E); llabel(,R_1,); b_current(I)
L1: inductor(right_ elen_); llabel(,L_1,)
ZM: gap(down_ elen_); rlabel(,Z_M \rightarrow,)
    line right_ dimen_ from ZM.start; dot
C2: capacitor(down_ elen_); llabel(,C_2,)
    line right_ dimen_ from C2.start; dot
L2: inductor(down_ elen_); llabel(,L_2,)
    line right_ dimen_ from L2.start
R2: resistor(down_ elen_,,E); llabel(,R_2,); b_current(I_R)
    line left_ to ZE.end
.PE
