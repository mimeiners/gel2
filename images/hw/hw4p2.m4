% Ortskurve Zweipol-Admittanz
.PS
cct_init
scale = 25.6
hlf = dimen_/2
qrt = dimen_/4
del = dimen_/3
sex = dimen_/6
sinclude(hw4p1.dim)
s_init(hw4p1dims)

Rs: dot; resistor(right_ elen_,,E); rlabel( ,R_s, ); dot;
{    line up dimen_;
C1: capacitor(right_ elen_,,E); rlabel( ,C, );
    line down dimen_ then right elen_; dot;}
    line down dimen_;
Rp: resistor(right_ elen_,,E); rlabel( ,R_p, );
    line up dimen_; dot;
.PE
