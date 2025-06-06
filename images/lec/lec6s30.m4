% maschenv.m4: Netzwerk fuer Maschenstromverfahren nach Brinkmeyer
.PS
cct_init
scale = 25.6
hlf = dimen_/2
qrt = dimen_/4
del = dimen_/3
sex = dimen_/6

V0:  dot; "0" rjust below
Z3:  resistor(up_ elen_,,E); llabel( ,Z_3, );
V1:  dot; "1" rjust below
Z4:  resistor(right_ elen_,,E); rlabel( ,Z_4, );
U4:  source(right_ elen_,AC); rlabel( ,U_4, );
V5:  dot; "5" ljust below
Z10: resistor(down_ elen_,,E); llabel( ,Z_{10}, );
V6:  dot; "6" ljust below
Z7:  resistor(right_ elen_ to V0,,E); rlabel( ,Z_7, ); 
Z2:  resistor(up_ elen_ from V1,,E); llabel( ,Z_2, );
V2:  dot; "2" rjust above
Z5:  resistor(right_ elen_,,E); llabel( ,Z_5, ); 
V3:  dot; "3" rjust above
Z6:  resistor(right_ elen_,,E); llabel( ,Z_6, );
V4:  dot; "4" ljust above
Z9:  resistor(down_ elen_ to V5,,E); llabel( ,Z_9, );
     line left dimen_ from V0;
Z1:  resistor(up_ elen_ to (Here.x,Z2.end.y),,E); llabel( ,Z_1, );
     line right to V2;
     line right dimen_ from V6;
Z8:  resistor(up_ elen_,,E); rlabel( ,Z_8, );
U8:  source(up_ elen_,AC); rlabel( ,U_8, );
     line left to V4;
.PE
