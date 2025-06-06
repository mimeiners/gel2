% Uebung 39) dynamisches Mikrofon nach Brinkmeyer
.PS
cct_init
scale = 25.6
hlf = dimen_/2
qrt = dimen_/4

U0: source(down_ elen_,v); rlabel(,U_{0s},)
R0: resistor(right_ elen_ from U0.start,,E); llabel(,R_{0s},)
Uh: gap(down_ elen_,,A); llabel(,U_h,)
    line right_ dimen_ from Uh.start; dot
Z1: resistor(down_ elen_,,E); llabel(Z_1,); dot
Z2: resistor(right_ elen_ from Z1.start,,E); llabel(,Z_2,); dot
Zv: resistor(down_ elen_,,E); llabel(,Z_v,); dot
    line right_ dimen_ from Zv.start
U1: gap(down_ elen_,,A); llabel(,U_1,)
    line left_ to U0.end
.PE
