% Blindleistungskompensation
.PS
cct_init
scale = 25.6
hlf = dimen_/2
qrt = dimen_/4
del = dimen_/3
sex = dimen_/6


V0: source(down_ elen_,AC); rlabel( ,\underline{U}, );
    line right dimen_ from V0.start;
T1: tline(right_ elen_);
    line right dimen_;
ZL: resistor(down_ elen_,,E); llabel( ,\underline{Z}_L, );
    line right dimen_ from ZL.start;
CL: capacitor(down_ elen_); llabel( ,C_L, );
    line left to ZL.end;
    line right dimen_ from V0.end;
T2: tline(right_ elen_);
    line right to ZL.end;
.PE
