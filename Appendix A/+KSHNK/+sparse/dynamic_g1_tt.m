function [T_order, T] = dynamic_g1_tt(y, x, params, steady_state, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = KSHNK.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
T_order = 1;
if size(T, 1) < 14
    T = [T; NaN(14 - size(T, 1), 1)];
end
T(10) = getPowerDeriv(y(108)*y(118),1-params(4),1);
T(11) = getPowerDeriv(y(108)/y(28),(-params(4)),1);
T(12) = getPowerDeriv(y(28)/(y(108)*y(118)),params(4)-1,1);
T(13) = 1/y(135);
T(14) = (-(T(13)/(steady_state(18))));
end
