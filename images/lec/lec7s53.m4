% Wien-Brücke
.PS
cct_init
scale = 25.6
hlf = dimen_/2

R3: resistor(down_ elen_,,E); llabel( ,R_3, );
    line left dimen_;
UD: gap(left_ elen_,,A); rlabel( ,\underline{U}_D, );
    line left dimen_;
C1: capacitor(up_ 0.5*elen_); llabel( ,C_1, );
R1: resistor(up_ 0.5*elen_,,E); llabel( ,R_1, );
    line right to R3.start;
R4: resistor(down_ elen_ from R3.end,,E); llabel( ,R_4, );
    line left to (C1.x,R4.end.y);
    line up hlf;
{   line right hlf;
C2: capacitor(up_ 0.5*elen_); rlabel( ,C_2, );
    line left hlf;
}
    line left hlf;
R2: resistor(up_ 0.5*elen_,,E); llabel( ,R_2, );
    line right hlf then up to C1.start;
    line left elen_ from R1.end;
G1: gap(down_ 2*elen_,,A); rlabel( ,\underline{U}_E, );
    line right to (C1.x,G1.end.y);  
.PE
