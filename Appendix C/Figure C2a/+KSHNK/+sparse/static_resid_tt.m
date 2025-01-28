function [T_order, T] = static_resid_tt(y, x, params, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 9
    T = [T; NaN(9 - size(T, 1), 1)];
end
T(1) = params(44)*y(13)^params(3);
T(2) = y(22)^(-params(2));
T(3) = (y(13)*y(23))^(1-params(4));
T(4) = y(28)^params(4);
T(5) = (1-params(4))*y(23)^(1-params(4));
T(6) = (y(13)/y(28))^(-params(4));
T(7) = 1/y(14);
T(8) = (y(30)+(1-params(5))*y(39))/y(39);
T(9) = y(37)^2;
end
