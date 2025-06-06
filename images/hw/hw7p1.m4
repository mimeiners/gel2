% Uebung 39) dynamisches Mikrofon nach Brinkmeyer
.PS
cct_init
scale = 25.6
hlf = dimen_/2
qrt = dimen_/4

U0: source(down_ elen_,v); rlabel(,U_0,)
R0: resistor(right_ elen_ from U0.start,,E); llabel( ,R_0, )
T1: resistor(down_ elen_,4,Q);
    line left_ to U0.end
    "1:30" at T1.start+(qrt,+qrt);
T2: resistor(down_ elen_ from T1.start+(hlf,0),4,QR);
    line right_ dimen_ from T2.start; dot
Cw: capacitor(down_ elen_); llabel(,C_w,); dot
    line right_ dimen_ from Cw.start; dot
L0: inductor(down_ elen_,L); llabel(,L_0,); dot
Ls: inductor(right_ elen_ from L0.start,L); llabel(,L_{\sigma},)
Rw: resistor(right_ elen_,,E); llabel( ,R_w, ); dot
Cv: capacitor(down_ elen_); llabel(,C_v,); dot
    line right_ dimen_ from Cv.start; dot
Rv: resistor(down_ elen_,,E); llabel(,R_v,); dot
    line right_ dimen_ from Rv.start
U1: gap(down_ elen_,,A); llabel(,U_1,)
    line left_ to T2.end
.PE
