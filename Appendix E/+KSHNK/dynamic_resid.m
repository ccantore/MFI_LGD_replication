function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
% function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = KSHNK.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(95, 1);
    residual(1) = (y(14)) - (y(19)^(-params(2)));
    residual(2) = (y(14)) - (params(1)*y(27)*(params(29)*y(109)+params(37)*y(111)+params(30)*y(110)));
    residual(3) = (y(25)) - ((-params(43))*y(23)^params(3));
    residual(4) = (y(30)) - (T(1)/T(2));
    residual(5) = (y(23)) - (y(26));
    residual(6) = (y(59)) - (params(29)*params(33)*y(63)+params(35)*params(36)*y(64));
    residual(7) = (y(104)) - (y(19)+y(45)+y(63)/y(53)-(y(23)*y(30)+params(29)*y(43)*y(3)/params(33)+y(1)*y(9)/(params(33)*y(53))+y(37)/params(33)-params(27)-y(56)/y(53)));
    residual(8) = (y(16)) - (y(21)^(-params(2)));
    residual(9) = (y(16)) - (params(1)*y(27)*(y(111)*params(32)+y(109)*params(36)+y(110)*params(39)));
    residual(10) = (y(18)) - ((-params(41))*y(24)^params(3));
    residual(11) = (y(24)) - (y(26));
    residual(12) = (y(21)+y(64)/y(53)) - (y(30)*y(24)+y(3)*params(37)*y(43)/params(33)+y(1)*y(11)/(params(35)*y(53))-params(28)-y(58)/y(53));
    residual(13) = (y(61)) - (y(64)*params(35)*params(32)+y(63)*params(37)*params(33));
    residual(14) = (y(15)) - (y(20)^(-params(2)));
    residual(15) = (y(17)) - ((-params(42))*y(22)^params(3));
    residual(16) = (y(22)) - (y(26));
residual(17) = y(62);
    residual(18) = (y(60)) - (y(63)*params(30)*params(33)+y(64)*params(35)*params(39));
    residual(19) = (y(20)) - (y(30)*y(22)+y(3)*params(30)*y(43)/params(33)+y(1)*y(10)/(params(34)*y(53))-y(57)/y(53)+params(16));
    residual(20) = (y(32)) - (T(3)*T(4));
    residual(21) = (y(31)) - (y(32)-params(17));
    residual(22) = (y(33)) - (T(5)*T(6));
    residual(23) = (y(30)) - (y(33)*y(34));
    residual(24) = (y(31)) - (y(37)+y(30)*y(26)+y(43)*y(3));
    residual(25) = (y(37)) - (params(33)*y(38));
    residual(26) = (y(39)) - (y(30)*y(26));
    residual(27) = (y(40)) - (y(30)*y(26)/y(31));
    residual(28) = (y(42)) - (params(4)*(y(3)/(y(26)*y(36)))^(params(4)-1));
    residual(29) = (y(43)) - (y(34)*y(42));
    residual(30) = (y(47)) - (y(43)*y(3)/y(31));
    residual(31) = (y(46)) - (y(45)*(1-y(49))+(1-params(5))*y(5));
    residual(32) = (y(50)) - (y(45)/y(4));
    residual(33) = (y(49)) - (params(19)*(y(50)-1)^2);
    residual(34) = (y(51)) - ((y(50)-1)*2*params(19));
    residual(35) = (y(14)) - (y(109)*params(1)*(y(114)+(1-params(5))*y(117))/y(52));
    residual(36) = (y(48)) - (T(7)*T(8));
    residual(37) = (y(52)*(1-y(49)-y(50)*y(51))+y(117)*params(1)*y(109)/y(14)*y(116)*T(9)) - (1);
    residual(38) = (y(44)) - (params(33)*y(45));
    residual(39) = (y(41)) - (params(33)*y(46));
    residual(40) = (y(31)) - (y(44)+y(35)+y(54)/y(53));
    residual(41) = (y(27)) - (y(28)/y(112));
    residual(42) = (y(35)) - (params(34)*y(20)+y(19)*params(33)+params(35)*y(21));
residual(43) = 1-params(6)+y(34)*params(6)-y(29)*params(21)*(y(29)-1)+params(1)*params(21)*y(112)*y(109)/y(14)*(y(112)-1)*y(113)/y(31);
    residual(44) = (log(y(28)/(steady_state(15)))) - (params(9)*log(y(1)/(steady_state(15)))+(1-params(9))*params(10)*log(y(29)/(steady_state(16)))+(1-params(9))*params(11)*log(y(31)/(steady_state(18)))+log(y(107)/(steady_state(94))));
    residual(45) = (log(y(36))-log((steady_state(23)))) - (params(7)*(log(y(2))-log((steady_state(23))))-x(it_, 1));
    residual(46) = (y(65)) - (y(54)+y(1)*y(12)-y(55));
    residual(47) = (y(65)) - (params(33)*y(63)+params(35)*y(64));
    residual(48) = (y(29)) - (y(53)/y(6));
    residual(49) = (y(66)) - (y(65)/(y(53)*y(31)));
    residual(50) = (log(y(54))-log((steady_state(41)))) - (params(8)*(log(y(7))-log((steady_state(41))))-(1-params(8))*params(14)*(log(y(12))-log((steady_state(52))))+x(it_, 3));
    residual(51) = (log(y(55)/(steady_state(42)))) - (params(12)*log(y(8)/(steady_state(42)))+(1-params(12))*(params(15)*log(y(12)/(steady_state(52)))+params(13)*log(y(54)/(steady_state(41))))-x(it_, 4));
    residual(52) = (y(56)) - (y(55));
    residual(53) = (y(57)) - (y(55));
    residual(54) = (y(58)) - (y(55));
    residual(55) = (log(y(107))-log((steady_state(94)))) - (params(18)*(log(y(13))-log((steady_state(94))))-x(it_, 2));
    residual(56) = (y(67)) - (log(y(31)));
    residual(57) = (y(68)) - (log(y(35)));
    residual(58) = (y(69)) - (log(y(26)));
    residual(59) = (y(70)) - (log(y(30)));
    residual(60) = (y(71)) - (log(y(29)));
    residual(61) = (y(72)) - (log(y(27)));
    residual(62) = (y(73)) - (log(y(28)));
    residual(63) = (y(105)) - (log(T(8)));
    residual(64) = (y(74)) - (log(y(19)));
    residual(65) = (y(75)) - (log(y(20)));
    residual(66) = (y(103)) - (log(y(21)));
    residual(67) = (y(87)) - (log(y(22)));
    residual(68) = (y(88)) - (log(y(23)));
    residual(69) = (y(89)) - (log(y(24)));
    residual(70) = (y(76)) - (y(37)/(steady_state(18)));
    residual(71) = (y(106)) - (log(y(48)));
    residual(72) = (y(77)) - (y(65)/y(53)/(steady_state(18)));
residual(73) = y(83);
    residual(74) = (y(95)) - (y(59)/y(53)/(steady_state(18)));
    residual(75) = (y(94)) - (y(60)/y(53)/(steady_state(18)));
    residual(76) = (y(97)) - (y(61)/y(53)/(steady_state(18)));
    residual(77) = (y(96)) - (y(64)/y(53)/(steady_state(18)));
    residual(78) = (y(78)) - (y(63)/y(53)/(steady_state(18)));
    residual(79) = (y(79)) - (y(54)/y(53)/(steady_state(18)));
    residual(80) = (y(80)) - (y(55)/y(53)/(steady_state(18)));
    residual(81) = (y(81)) - (log(y(39)));
    residual(82) = (y(82)) - (log(y(40)));
    residual(83) = (y(84)) - (log(y(47)));
    residual(84) = (y(85)) - (log(y(41)));
    residual(85) = (y(86)) - (log(y(44)));
    residual(86) = (y(108)) - (log(y(52)));
    residual(87) = (y(100)) - (params(34)*y(87));
    residual(88) = (y(101)) - (params(33)*y(88));
    residual(89) = (y(102)) - (params(35)*y(89));
    residual(90) = (y(93)) - (params(33)*y(78));
    residual(91) = (y(90)) - (params(33)*y(74));
    residual(92) = (y(91)) - (params(34)*y(75));
residual(93) = y(92);
    residual(94) = (y(98)) - (params(35)*y(96));
    residual(95) = (y(99)) - (params(35)*y(103));

end
