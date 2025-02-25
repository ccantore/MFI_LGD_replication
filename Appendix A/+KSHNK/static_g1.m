function g1 = static_g1(T, y, x, params, T_flag)
% function g1 = static_g1(T, y, x, params, T_flag)
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
%   g1
%

if T_flag
    T = KSHNK.static_g1_tt(T, y, x, params);
end
g1 = zeros(95, 95);
g1(1,1)=1;
g1(1,6)=(-(getPowerDeriv(y(6),(-params(2)),1)));
g1(2,1)=1-params(1)*y(14)*params(29);
g1(2,2)=(-(params(1)*y(14)*params(30)));
g1(2,3)=(-(params(1)*y(14)*params(37)));
g1(2,14)=(-(params(1)*(y(1)*params(29)+params(37)*y(3)+params(30)*y(2))));
g1(3,10)=(-((-params(43))*getPowerDeriv(y(10),params(3),1)));
g1(3,12)=1;
g1(4,13)=(-(params(44)*getPowerDeriv(y(13),params(3),1)/T(2)));
g1(4,17)=1;
g1(4,22)=(-((-(T(1)*getPowerDeriv(y(22),(-params(2)),1)))/(T(2)*T(2))));
g1(5,10)=1;
g1(5,13)=(-1);
g1(6,46)=1;
g1(6,50)=(-(params(29)*params(33)));
g1(6,51)=(-(params(35)*params(36)));
g1(7,6)=(-1);
g1(7,10)=y(17);
g1(7,15)=y(46)/(params(33)*y(40));
g1(7,17)=y(10);
g1(7,24)=1/params(33);
g1(7,28)=y(30)/params(33);
g1(7,30)=y(28)/params(33);
g1(7,32)=(-1);
g1(7,40)=(-((-y(50))/(y(40)*y(40))-((-(params(33)*y(46)*y(15)))/(params(33)*y(40)*params(33)*y(40))-(-y(43))/(y(40)*y(40)))));
g1(7,43)=(-T(15));
g1(7,46)=y(15)/(params(33)*y(40));
g1(7,50)=(-T(15));
g1(7,91)=1;
g1(8,3)=1;
g1(8,8)=(-(getPowerDeriv(y(8),(-params(2)),1)));
g1(9,1)=(-(params(1)*y(14)*params(36)));
g1(9,2)=(-(params(1)*y(14)*params(39)));
g1(9,3)=1-params(1)*y(14)*params(32);
g1(9,14)=(-(params(1)*(y(3)*params(32)+y(1)*params(36)+y(2)*params(39))));
g1(10,5)=1;
g1(10,11)=(-((-params(41))*getPowerDeriv(y(11),params(3),1)));
g1(11,11)=1;
g1(11,13)=(-1);
g1(12,8)=1;
g1(12,11)=(-y(17));
g1(12,15)=(-(y(48)/(params(35)*y(40))));
g1(12,17)=(-y(11));
g1(12,40)=(-y(51))/(y(40)*y(40))-((-(params(35)*y(15)*y(48)))/(params(35)*y(40)*params(35)*y(40))-(-y(45))/(y(40)*y(40)));
g1(12,45)=T(15);
g1(12,48)=(-(y(15)/(params(35)*y(40))));
g1(12,51)=T(15);
g1(13,48)=1;
g1(13,50)=(-(params(37)*params(33)));
g1(13,51)=(-(params(35)*params(32)));
g1(14,2)=1;
g1(14,7)=(-(getPowerDeriv(y(7),(-params(2)),1)));
g1(15,4)=1;
g1(15,9)=(-((-params(42))*getPowerDeriv(y(9),params(3),1)));
g1(16,9)=1;
g1(16,13)=(-1);
g1(17,49)=1;
g1(18,47)=1;
g1(18,50)=(-(params(30)*params(33)));
g1(18,51)=(-(params(35)*params(39)));
g1(19,7)=1;
g1(19,9)=(-y(17));
g1(19,15)=(-(y(47)/(y(40)*params(34))));
g1(19,17)=(-y(9));
g1(19,40)=(-(y(15)*(-(y(47)*params(34)))/(y(40)*params(34)*y(40)*params(34))-(-y(44))/(y(40)*y(40))));
g1(19,44)=T(15);
g1(19,47)=(-(y(15)*1/(y(40)*params(34))));
g1(20,13)=(-(T(4)*y(23)*T(10)));
g1(20,19)=1;
g1(20,23)=(-(T(4)*y(13)*T(10)));
g1(20,28)=(-(T(3)*getPowerDeriv(y(28),params(4),1)));
g1(21,18)=1;
g1(21,19)=(-1);
g1(22,13)=(-(T(5)*1/y(28)*T(11)));
g1(22,20)=1;
g1(22,23)=(-(T(6)*(1-params(4))*getPowerDeriv(y(23),1-params(4),1)));
g1(22,28)=(-(T(5)*T(11)*(-y(13))/(y(28)*y(28))));
g1(23,17)=1;
g1(23,20)=(-y(21));
g1(23,21)=(-y(20));
g1(24,13)=(-y(17));
g1(24,17)=(-y(13));
g1(24,18)=1;
g1(24,24)=(-1);
g1(24,28)=(-y(30));
g1(24,30)=(-y(28));
g1(25,24)=1;
g1(25,25)=(-params(33));
g1(26,13)=(-y(17));
g1(26,17)=(-y(13));
g1(26,26)=1;
g1(27,13)=(-(y(17)/y(18)));
g1(27,17)=(-(y(13)/y(18)));
g1(27,18)=(-((-(y(17)*y(13)))/(y(18)*y(18))));
g1(27,27)=1;
g1(28,13)=(-(params(4)*(-(y(28)*y(23)))/(y(13)*y(23)*y(13)*y(23))*T(12)));
g1(28,23)=(-(params(4)*T(12)*(-(y(13)*y(28)))/(y(13)*y(23)*y(13)*y(23))));
g1(28,28)=(-(params(4)*T(12)*1/(y(13)*y(23))));
g1(28,29)=1;
g1(29,21)=(-y(29));
g1(29,29)=(-y(21));
g1(29,30)=1;
g1(30,18)=(-((-(y(30)*y(28)))/(y(18)*y(18))));
g1(30,28)=(-(y(30)/y(18)));
g1(30,30)=(-(y(28)/y(18)));
g1(30,34)=1;
g1(31,32)=(-(1-y(36)));
g1(31,33)=1-(1-params(5));
g1(31,36)=y(32);
g1(32,37)=1;
g1(33,36)=1;
g1(33,37)=(-(params(19)*2*(y(37)-1)));
g1(34,37)=(-(2*params(19)));
g1(34,38)=1;
g1(35,1)=1-params(1)*(y(30)+(1-params(5))*y(39))/y(39);
g1(35,30)=(-(y(1)*params(1)/y(39)));
g1(35,39)=(-(y(1)*(y(39)*params(1)*(1-params(5))-params(1)*(y(30)+(1-params(5))*y(39)))/(y(39)*y(39))));
g1(36,14)=(-(T(8)*(-1)/(y(14)*y(14))));
g1(36,30)=(-(T(7)*1/y(39)));
g1(36,35)=1;
g1(36,39)=(-(T(7)*((1-params(5))*y(39)-(y(30)+(1-params(5))*y(39)))/(y(39)*y(39))));
g1(37,36)=(-y(39));
g1(37,37)=y(39)*(-y(38))+y(38)*params(1)*y(39)*2*y(37);
g1(37,38)=y(39)*(-y(37))+params(1)*y(39)*T(9);
g1(37,39)=1-y(36)-y(37)*y(38)+T(9)*params(1)*y(38);
g1(38,31)=1;
g1(38,32)=(-params(33));
g1(39,28)=1;
g1(39,33)=(-params(33));
g1(40,18)=1;
g1(40,22)=(-1);
g1(40,31)=(-1);
g1(40,40)=(-((-y(41))/(y(40)*y(40))));
g1(40,41)=(-T(15));
g1(41,14)=1;
g1(41,15)=(-(1/y(16)));
g1(41,16)=(-((-y(15))/(y(16)*y(16))));
g1(42,6)=(-params(33));
g1(42,7)=(-params(34));
g1(42,8)=(-params(35));
g1(42,22)=1;
g1(43,16)=params(1)*(y(16)*params(21)+params(21)*(y(16)-1))-(y(16)*params(21)+params(21)*(y(16)-1));
g1(43,21)=params(6);
g1(44,15)=T(13)-params(9)*T(13);
g1(44,16)=(-((1-params(9))*params(10)*((y(16))-y(16))/((y(16))*(y(16)))/(y(16)/(y(16)))));
g1(44,18)=(-((1-params(9))*params(11)*((y(18))-y(18))/((y(18))*(y(18)))/(y(18)/(y(18)))));
g1(44,94)=(-(((y(94))-y(94))/((y(94))*(y(94)))/(y(94)/(y(94)))));
g1(45,23)=T(14)-params(7)*T(14);
g1(46,15)=(-y(52));
g1(46,41)=(-1);
g1(46,42)=1;
g1(46,52)=1-y(15);
g1(47,50)=(-params(33));
g1(47,51)=(-params(35));
g1(47,52)=1;
g1(48,16)=1;
g1(49,18)=(-((-(y(40)*y(52)))/(y(40)*y(18)*y(40)*y(18))));
g1(49,40)=(-((-(y(18)*y(52)))/(y(40)*y(18)*y(40)*y(18))));
g1(49,52)=(-(1/(y(40)*y(18))));
g1(49,53)=1;
g1(50,41)=T(16)-params(8)*T(16);
g1(50,52)=(1-params(8))*params(14)*(1/y(52)-1/(y(52)));
g1(51,41)=(-((1-params(12))*params(13)*((y(41))-y(41))/((y(41))*(y(41)))/(y(41)/(y(41)))));
g1(51,42)=T(18)-params(12)*T(18);
g1(51,52)=(-((1-params(12))*params(15)*((y(52))-y(52))/((y(52))*(y(52)))/(y(52)/(y(52)))));
g1(52,42)=(-1);
g1(52,43)=1;
g1(53,42)=(-1);
g1(53,44)=1;
g1(54,42)=(-1);
g1(54,45)=1;
g1(55,94)=T(19)-params(18)*T(19);
g1(56,18)=(-(1/y(18)));
g1(56,54)=1;
g1(57,22)=(-(1/y(22)));
g1(57,55)=1;
g1(58,13)=(-(1/y(13)));
g1(58,56)=1;
g1(59,17)=(-(1/y(17)));
g1(59,57)=1;
g1(60,16)=(-(1/y(16)));
g1(60,58)=1;
g1(61,14)=(-T(7));
g1(61,59)=1;
g1(62,15)=(-(1/y(15)));
g1(62,60)=1;
g1(63,30)=(-(1/y(39)/T(8)));
g1(63,39)=(-(((1-params(5))*y(39)-(y(30)+(1-params(5))*y(39)))/(y(39)*y(39))/T(8)));
g1(63,92)=1;
g1(64,6)=(-(1/y(6)));
g1(64,61)=1;
g1(65,7)=(-(1/y(7)));
g1(65,62)=1;
g1(66,8)=(-(1/y(8)));
g1(66,90)=1;
g1(67,9)=(-(1/y(9)));
g1(67,74)=1;
g1(68,10)=(-(1/y(10)));
g1(68,75)=1;
g1(69,11)=(-(1/y(11)));
g1(69,76)=1;
g1(70,18)=(-((-y(24))/((y(18))*(y(18)))));
g1(70,24)=(-(1/(y(18))));
g1(70,63)=1;
g1(71,35)=(-(1/y(35)));
g1(71,93)=1;
g1(72,18)=(-((-(y(52)/y(40)))/((y(18))*(y(18)))));
g1(72,40)=(-((-y(52))/(y(40)*y(40))/(y(18))));
g1(72,52)=T(17);
g1(72,64)=1;
g1(73,70)=1;
g1(74,18)=(-((-(y(46)/y(40)))/((y(18))*(y(18)))));
g1(74,40)=(-((-y(46))/(y(40)*y(40))/(y(18))));
g1(74,46)=T(17);
g1(74,82)=1;
g1(75,18)=(-((-(y(47)/y(40)))/((y(18))*(y(18)))));
g1(75,40)=(-((-y(47))/(y(40)*y(40))/(y(18))));
g1(75,47)=T(17);
g1(75,81)=1;
g1(76,18)=(-((-(y(48)/y(40)))/((y(18))*(y(18)))));
g1(76,40)=(-((-y(48))/(y(40)*y(40))/(y(18))));
g1(76,48)=T(17);
g1(76,84)=1;
g1(77,18)=(-((-(y(51)/y(40)))/((y(18))*(y(18)))));
g1(77,40)=(-((-y(51))/(y(40)*y(40))/(y(18))));
g1(77,51)=T(17);
g1(77,83)=1;
g1(78,18)=(-((-(y(50)/y(40)))/((y(18))*(y(18)))));
g1(78,40)=(-((-y(50))/(y(40)*y(40))/(y(18))));
g1(78,50)=T(17);
g1(78,65)=1;
g1(79,18)=(-((-(y(41)/y(40)))/((y(18))*(y(18)))));
g1(79,40)=(-((-y(41))/(y(40)*y(40))/(y(18))));
g1(79,41)=T(17);
g1(79,66)=1;
g1(80,18)=(-((-(y(42)/y(40)))/((y(18))*(y(18)))));
g1(80,40)=(-((-y(42))/(y(40)*y(40))/(y(18))));
g1(80,42)=T(17);
g1(80,67)=1;
g1(81,26)=(-(1/y(26)));
g1(81,68)=1;
g1(82,27)=(-(1/y(27)));
g1(82,69)=1;
g1(83,34)=(-(1/y(34)));
g1(83,71)=1;
g1(84,28)=(-(1/y(28)));
g1(84,72)=1;
g1(85,31)=(-(1/y(31)));
g1(85,73)=1;
g1(86,39)=(-(1/y(39)));
g1(86,95)=1;
g1(87,74)=(-params(34));
g1(87,87)=1;
g1(88,75)=(-params(33));
g1(88,88)=1;
g1(89,76)=(-params(35));
g1(89,89)=1;
g1(90,65)=(-params(33));
g1(90,80)=1;
g1(91,61)=(-params(33));
g1(91,77)=1;
g1(92,62)=(-params(34));
g1(92,78)=1;
g1(93,79)=1;
g1(94,83)=(-params(35));
g1(94,85)=1;
g1(95,86)=1;
g1(95,90)=(-params(35));

end
