% Maschenstromverfahren nach Brinkmeyer Aufg. 27
.PS
cct_init
scale = 25.6

V0: source(down_ elen_,AC); rlabel(,V_0,)
    line right_ dimen_ from V0.start
GI: gap(down_ elen_,,A); llabel(,V_{in},)     
L1: inductor(right_ elen_ from GI.start,L); llabel( ,L_1, ); dot
C1: capacitor(down_ elen_); llabel( ,C_1, ); dot
L2: inductor(right_ elen_ from L1.end,L); llabel( ,L_2, ); dot
C2: capacitor(down_ elen_); llabel( ,C_2, ); dot
    line right_ dimen_ from L2.end
GO: gap(down_ elen_,,A); llabel(,V_{out},)
    line right_ dimen_ from GO.start
R1: resistor(down_ elen_,,E); llabel(,R_1,); b_current(I)
    line left_ to V0.end
.PE
