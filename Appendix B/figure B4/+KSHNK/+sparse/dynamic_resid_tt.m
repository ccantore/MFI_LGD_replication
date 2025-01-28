function [T_order, T] = dynamic_resid_tt(y, x, params, steady_state, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 9
    T = [T; NaN(9 - size(T, 1), 1)];
end
T(1) = params(44)*y(108)^params(3);
T(2) = y(117)^(-params(2));
T(3) = (y(108)*y(118))^(1-params(4));
T(4) = y(28)^params(4);
T(5) = (1-params(4))*y(118)^(1-params(4));
T(6) = (y(108)/y(28))^(-params(4));
T(7) = 1/y(109);
T(8) = (y(220)+(1-params(5))*y(229))/y(134);
T(9) = y(227)^2;
end
