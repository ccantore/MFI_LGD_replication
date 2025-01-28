function [T_order, T] = static_g1_tt(y, x, params, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = KSHNK.sparse.static_resid_tt(y, x, params, T_order, T);
T_order = 1;
if size(T, 1) < 18
    T = [T; NaN(18 - size(T, 1), 1)];
end
T(10) = getPowerDeriv(y(13)*y(23),1-params(4),1);
T(11) = getPowerDeriv(y(13)/y(28),(-params(4)),1);
T(12) = getPowerDeriv(y(28)/(y(13)*y(23)),params(4)-1,1);
T(13) = ((y(15))-y(15))/((y(15))*(y(15)))/(y(15)/(y(15)));
T(14) = 1/y(23)-1/(y(23));
T(15) = (-(1/(y(18))));
T(16) = 1/y(40)-1/(y(40));
T(17) = ((y(41))-y(41))/((y(41))*(y(41)))/(y(41)/(y(41)));
T(18) = 1/y(93)-1/(y(93));
end
