function [T_order, T] = dynamic_resid_tt(y, x, params, steady_state, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 9
    T = [T; NaN(9 - size(T, 1), 1)];
end
T(1) = params(44)*y(107)^params(3);
T(2) = y(116)^(-params(2));
T(3) = (y(107)*y(117))^(1-params(4));
T(4) = y(28)^params(4);
T(5) = (1-params(4))*y(117)^(1-params(4));
T(6) = (y(107)/y(28))^(-params(4));
T(7) = 1/y(108);
T(8) = (y(218)+(1-params(5))*y(227))/y(133);
T(9) = y(225)^2;
end
