% Wien-Brücke
.PS
cct_init
scale = 25.6
hlf = dimen_/2
qrt = dimen_/4

R1: resistor(down_ 0.5*elen_,,E); llabel( ,R_1, )
C1: capacitor(down_ 0.5*elen_); llabel( ,C_1, ); dot
    line right dimen_   
VD: gap(right_ elen_,,A); rlabel(,\underline{U}_D,)
    line right dimen_; dot
R3: resistor(up_ elen_,,E); llabel( ,R_3, )
    line left to R1.start; dot	    
R4: resistor(down_ elen_ from R3.start,,E); llabel( ,R_4, )
    line left to (C1.x,R4.end.y); dot
    line up hlf; dot
{   line right hlf
C2: capacitor(up_ 0.5*elen_); rlabel( ,C_2, );
    line left hlf; dot
}
    line left hlf
R2: resistor(up_ 0.5*elen_,,E); llabel( ,R_2, );
    line right hlf then up to C1.end
    line left elen_ from R1.start
G1: gap(down_ 2*elen_,,A); rlabel( ,\underline{U}_E, );
    line right to (R1.x,R4.end.y);  
.PE
