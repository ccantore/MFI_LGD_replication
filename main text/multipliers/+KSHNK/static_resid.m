function residual = static_resid(T, y, x, params, T_flag)
% function residual = static_resid(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = KSHNK.static_resid_tt(T, y, x, params);
end
residual = zeros(95, 1);
    residual(1) = (y(1)) - (y(6)^(-params(2)));
    residual(2) = (y(1)) - (params(1)*y(14)*(y(1)*params(29)+params(37)*y(3)+params(30)*y(2)));
    residual(3) = (y(12)) - ((-params(43))*y(10)^params(3));
    residual(4) = (y(17)) - (T(1)/T(2));
    residual(5) = (y(10)) - (y(13));
    residual(6) = (y(46)) - (params(29)*params(33)*y(50)+params(35)*params(36)*y(51));
    residual(7) = (y(91)) - (y(6)+y(32)+y(50)/y(40)-(y(10)*y(17)+y(30)*y(28)/params(33)+y(46)*y(15)/(params(33)*y(40))+y(24)/params(33)-params(27)-y(43)/y(40)));
    residual(8) = (y(3)) - (y(8)^(-params(2)));
    residual(9) = (y(3)) - (params(1)*y(14)*(y(3)*params(32)+y(1)*params(36)+y(2)*params(39)));
    residual(10) = (y(5)) - ((-params(41))*y(11)^params(3));
    residual(11) = (y(11)) - (y(13));
    residual(12) = (y(8)+y(51)/y(40)) - (y(17)*y(11)+y(15)*y(48)/(params(35)*y(40))-params(28)-y(45)/y(40));
    residual(13) = (y(48)) - (y(51)*params(35)*params(32)+y(50)*params(37)*params(33));
    residual(14) = (y(2)) - (y(7)^(-params(2)));
    residual(15) = (y(4)) - ((-params(42))*y(9)^params(3));
    residual(16) = (y(9)) - (y(13));
residual(17) = y(49);
    residual(18) = (y(47)) - (y(50)*params(30)*params(33)+y(51)*params(35)*params(39));
    residual(19) = (y(7)) - (y(17)*y(9)+y(15)*y(47)/(y(40)*params(34))-y(44)/y(40)+params(16));
    residual(20) = (y(19)) - (T(3)*T(4));
    residual(21) = (y(18)) - (y(19)-params(17));
    residual(22) = (y(20)) - (T(5)*T(6));
    residual(23) = (y(17)) - (y(20)*y(21));
    residual(24) = (y(18)) - (y(24)+y(30)*y(28)+y(17)*y(13));
    residual(25) = (y(24)) - (params(33)*y(25));
    residual(26) = (y(26)) - (y(17)*y(13));
    residual(27) = (y(27)) - (y(17)*y(13)/y(18));
    residual(28) = (y(29)) - (params(4)*(y(28)/(y(13)*y(23)))^(params(4)-1));
    residual(29) = (y(30)) - (y(21)*y(29));
    residual(30) = (y(34)) - (y(30)*y(28)/y(18));
    residual(31) = (y(33)) - (y(32)*(1-y(36))+y(33)*(1-params(5)));
    residual(32) = (y(37)) - (1);
    residual(33) = (y(36)) - (params(19)*(y(37)-1)^2);
    residual(34) = (y(38)) - ((y(37)-1)*2*params(19));
    residual(35) = (y(1)) - (y(1)*params(1)*(y(30)+(1-params(5))*y(39))/y(39));
    residual(36) = (y(35)) - (T(7)*T(8));
    residual(37) = (y(39)*(1-y(36)-y(37)*y(38))+y(38)*params(1)*y(39)*T(9)) - (1);
    residual(38) = (y(31)) - (params(33)*y(32));
    residual(39) = (y(28)) - (params(33)*y(33));
    residual(40) = (y(18)) - (y(31)+y(22)+y(41)/y(40));
    residual(41) = (y(14)) - (y(15)/y(16));
    residual(42) = (y(22)) - (y(7)*params(34)+y(6)*params(33)+params(35)*y(8));
residual(43) = 1-params(6)+y(21)*params(6)-y(16)*params(21)*(y(16)-1)+params(1)*y(16)*params(21)*(y(16)-1);
    residual(44) = (log(y(15)/(y(15)))) - (log(y(15)/(y(15)))*params(9)+(1-params(9))*params(10)*log(y(16)/(y(16)))+(1-params(9))*params(11)*log(y(18)/(y(18)))+log(y(94)/(y(94))));
    residual(45) = (log(y(23))-log((y(23)))) - ((log(y(23))-log((y(23))))*params(7)-x(1));
    residual(46) = (y(52)) - (y(41)+y(15)*y(52)-y(42));
    residual(47) = (y(52)) - (params(33)*y(50)+params(35)*y(51));
    residual(48) = (y(16)) - (1);
    residual(49) = (y(53)) - (y(52)/(y(40)*y(18)));
    residual(50) = (log(y(41))-log((y(41)))) - ((log(y(41))-log((y(41))))*params(8)-(1-params(8))*params(14)*(log(y(52))-log((y(52))))+x(3));
    residual(51) = (log(y(42)/(y(42)))) - (log(y(42)/(y(42)))*params(12)+(1-params(12))*(params(15)*log(y(52)/(y(52)))+params(13)*log(y(41)/(y(41)))));
    residual(52) = (y(43)) - (y(42));
    residual(53) = (y(44)) - (y(42));
    residual(54) = (y(45)) - (y(42));
    residual(55) = (log(y(94))-log((y(94)))) - ((log(y(94))-log((y(94))))*params(18)-x(2));
    residual(56) = (y(54)) - (log(y(18)));
    residual(57) = (y(55)) - (log(y(22)));
    residual(58) = (y(56)) - (log(y(13)));
    residual(59) = (y(57)) - (log(y(17)));
    residual(60) = (y(58)) - (log(y(16)));
    residual(61) = (y(59)) - (log(y(14)));
    residual(62) = (y(60)) - (log(y(15)));
    residual(63) = (y(92)) - (log(T(8)));
    residual(64) = (y(61)) - (log(y(6)));
    residual(65) = (y(62)) - (log(y(7)));
    residual(66) = (y(90)) - (log(y(8)));
    residual(67) = (y(74)) - (log(y(9)));
    residual(68) = (y(75)) - (log(y(10)));
    residual(69) = (y(76)) - (log(y(11)));
    residual(70) = (y(63)) - (y(24)/(y(18)));
    residual(71) = (y(93)) - (log(y(35)));
    residual(72) = (y(64)) - (y(52)/y(40)/(y(18)));
residual(73) = y(70);
    residual(74) = (y(82)) - (y(46)/y(40)/(y(18)));
    residual(75) = (y(81)) - (y(47)/y(40)/(y(18)));
    residual(76) = (y(84)) - (y(48)/y(40)/(y(18)));
    residual(77) = (y(83)) - (y(51)/y(40)/(y(18)));
    residual(78) = (y(65)) - (y(50)/y(40)/(y(18)));
    residual(79) = (y(66)) - (y(41)/y(40)/(y(18)));
    residual(80) = (y(67)) - (y(42)/y(40)/(y(18)));
    residual(81) = (y(68)) - (log(y(26)));
    residual(82) = (y(69)) - (log(y(27)));
    residual(83) = (y(71)) - (log(y(34)));
    residual(84) = (y(72)) - (log(y(28)));
    residual(85) = (y(73)) - (log(y(31)));
    residual(86) = (y(95)) - (log(y(39)));
    residual(87) = (y(87)) - (params(34)*y(74));
    residual(88) = (y(88)) - (params(33)*y(75));
    residual(89) = (y(89)) - (params(35)*y(76));
    residual(90) = (y(80)) - (params(33)*y(65));
    residual(91) = (y(77)) - (params(33)*y(61));
    residual(92) = (y(78)) - (params(34)*y(62));
residual(93) = y(79);
    residual(94) = (y(85)) - (params(35)*y(83));
    residual(95) = (y(86)) - (params(35)*y(90));

end
