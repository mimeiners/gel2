% Netzwerk fuer Knotenpotentialverfahren nach Brinkmeyer
.PS
cct_init
scale = 25.6
	
V0: source(up_ elen_,v); llabel(,V_0,)
R0: resistor(up_ elen_,,E); llabel(,R_0,)
    line right_ dimen_
V1: gap(down_ 2*elen_,,A); llabel(,V_1,)
    line right_ dimen_ from V1.start
L1: inductor(right_ elen_); llabel(,L_1,)
R1: resistor(right_ elen_,,E); llabel(,R_1,); dot
    line right_ dimen_
V2: gap(down_ 2*elen_,,A); llabel(,V_2,)
    line right_ dimen_ from V2.start; dot
R3: resistor(down_ 2*elen_,,E); llabel(,R_3,); dot
    line right_ dimen_ from R3.start
I0: source(down_ 2*elen_,i); llabel(,I_0,)
    line left_ to (R1.end.x,R3.end.y); dot
R2: resistor(left_ elen_,,E); llabel(,R_2,)
L2: inductor(left_ elen_); llabel(,L_2,)
    line to V0.start
C1: capacitor(down_ elen_ from R1.end to (L1.end.x,R3.center.y)); llabel(,C_1,)
    line to L2.end; dot
C2: capacitor(up_ elen_ from R2.start to (L1.end.x,R3.center.y)); llabel(,C_2,)
    line to L1.start; dot
.PE
