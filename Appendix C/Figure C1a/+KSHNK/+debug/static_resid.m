function [lhs, rhs] = static_resid(y, x, params)
T = NaN(9, 1);
lhs = NaN(94, 1);
rhs = NaN(94, 1);
T(1) = params(44)*y(13)^params(3);
T(2) = y(22)^(-params(2));
T(3) = (y(13)*y(23))^(1-params(4));
T(4) = y(28)^params(4);
T(5) = (1-params(4))*y(23)^(1-params(4));
T(6) = (y(13)/y(28))^(-params(4));
T(7) = 1/y(14);
T(8) = (y(30)+(1-params(5))*y(39))/y(39);
T(9) = y(37)^2;
lhs(1) = y(1);
rhs(1) = y(6)^(-params(2));
lhs(2) = y(1);
rhs(2) = params(1)*y(14)*(y(1)*params(29)+params(37)*y(3)+params(30)*y(2));
lhs(3) = y(12);
rhs(3) = (-params(43))*y(10)^params(3);
lhs(4) = y(17);
rhs(4) = T(1)/T(2);
lhs(5) = y(10);
rhs(5) = y(13);
lhs(6) = y(45);
rhs(6) = params(29)*params(33)*y(49)+params(35)*params(36)*y(50);
lhs(7) = y(90);
rhs(7) = y(49)+y(6)+y(32)-(y(10)*y(17)+y(30)*y(28)/params(33)+y(14)*y(45)/params(33)+y(24)/params(33)-params(27)-y(42));
lhs(8) = y(3);
rhs(8) = y(8)^(-params(2));
lhs(9) = y(3);
rhs(9) = params(1)*y(14)*(y(3)*params(32)+y(1)*params(36)+y(2)*params(39));
lhs(10) = y(5);
rhs(10) = (-params(41))*y(11)^params(3);
lhs(11) = y(11);
rhs(11) = y(13);
lhs(12) = y(50)+y(8);
rhs(12) = y(17)*y(11)+y(14)*y(47)/params(35)-params(28)-y(44);
lhs(13) = y(47);
rhs(13) = y(50)*params(35)*params(32)+y(49)*params(37)*params(33);
lhs(14) = y(2);
rhs(14) = y(7)^(-params(2));
lhs(15) = y(4);
rhs(15) = (-params(42))*y(9)^params(3);
lhs(16) = y(9);
rhs(16) = y(13);
lhs(17) = y(48);
rhs(17) = 0;
lhs(18) = y(46);
rhs(18) = y(49)*params(30)*params(33)+y(50)*params(35)*params(39);
lhs(19) = y(7);
rhs(19) = y(17)*y(9)+y(14)*y(46)/params(34)-y(43)+params(16);
lhs(20) = y(19);
rhs(20) = T(3)*T(4);
lhs(21) = y(18);
rhs(21) = y(19)-params(17);
lhs(22) = y(20);
rhs(22) = T(5)*T(6);
lhs(23) = y(17);
rhs(23) = y(20)*y(21);
lhs(24) = y(18);
rhs(24) = y(24)+y(30)*y(28)+y(17)*y(13);
lhs(25) = y(24);
rhs(25) = params(33)*y(25);
lhs(26) = y(26);
rhs(26) = y(17)*y(13);
lhs(27) = y(27);
rhs(27) = y(17)*y(13)/y(18);
lhs(28) = y(29);
rhs(28) = params(4)*(y(28)/(y(13)*y(23)))^(params(4)-1);
lhs(29) = y(30);
rhs(29) = y(21)*y(29);
lhs(30) = y(34);
rhs(30) = y(30)*y(28)/y(18);
lhs(31) = y(33);
rhs(31) = y(32)*(1-y(36))+y(33)*(1-params(5));
lhs(32) = y(37);
rhs(32) = 1;
lhs(33) = y(36);
rhs(33) = params(19)*(y(37)-1)^2;
lhs(34) = y(38);
rhs(34) = (y(37)-1)*2*params(19);
lhs(35) = y(1);
rhs(35) = y(1)*params(1)*(y(30)+(1-params(5))*y(39))/y(39);
lhs(36) = y(35);
rhs(36) = T(7)*T(8);
lhs(37) = y(39)*(1-y(36)-y(37)*y(38))+y(38)*params(1)*y(39)*T(9);
rhs(37) = 1;
lhs(38) = y(31);
rhs(38) = params(33)*y(32);
lhs(39) = y(28);
rhs(39) = params(33)*y(33);
lhs(40) = y(18);
rhs(40) = y(31)+y(22)+y(40);
lhs(41) = y(14);
rhs(41) = y(15)/y(16);
lhs(42) = y(22);
rhs(42) = y(7)*params(34)+y(6)*params(33)+params(35)*y(8);
lhs(43) = 1-params(6)+y(21)*params(6)-y(16)*params(21)*(y(16)-1)+params(1)*y(16)*params(21)*(y(16)-1);
rhs(43) = 0;
lhs(44) = log(y(15)/(y(15)));
rhs(44) = log(y(15)/(y(15)))*params(9)+(1-params(9))*params(10)*log(y(16)/(y(16)))+(1-params(9))*params(11)*log(y(18)/(y(18)))+log(y(93)/(y(93)));
lhs(45) = log(y(23))-log((y(23)));
rhs(45) = (log(y(23))-log((y(23))))*params(7)-x(1);
lhs(46) = y(51);
rhs(46) = y(40)+y(14)*y(51)-y(41);
lhs(47) = y(51);
rhs(47) = params(33)*y(49)+params(35)*y(50);
lhs(48) = y(52);
rhs(48) = y(51)/y(18);
lhs(49) = log(y(40))-log((y(40)));
rhs(49) = (log(y(40))-log((y(40))))*params(8)-(1-params(8))*params(14)*(log(y(51))-log((y(51))))+x(3);
lhs(50) = log(y(41)/(y(41)));
rhs(50) = log(y(41)/(y(41)))*params(12)+(1-params(12))*(params(15)*log(y(51)/(y(51)))+params(13)*log(y(40)/(y(40))))-x(4);
lhs(51) = y(42);
rhs(51) = y(41);
lhs(52) = y(43);
rhs(52) = y(41);
lhs(53) = y(44);
rhs(53) = y(41);
lhs(54) = log(y(93))-log((y(93)));
rhs(54) = (log(y(93))-log((y(93))))*params(18)-x(2);
lhs(55) = y(53);
rhs(55) = log(y(18));
lhs(56) = y(54);
rhs(56) = log(y(22));
lhs(57) = y(55);
rhs(57) = log(y(13));
lhs(58) = y(56);
rhs(58) = log(y(17));
lhs(59) = y(57);
rhs(59) = log(y(16));
lhs(60) = y(58);
rhs(60) = log(y(14));
lhs(61) = y(59);
rhs(61) = log(y(15));
lhs(62) = y(91);
rhs(62) = log(T(8));
lhs(63) = y(60);
rhs(63) = log(y(6));
lhs(64) = y(61);
rhs(64) = log(y(7));
lhs(65) = y(89);
rhs(65) = log(y(8));
lhs(66) = y(73);
rhs(66) = log(y(9));
lhs(67) = y(74);
rhs(67) = log(y(10));
lhs(68) = y(75);
rhs(68) = log(y(11));
lhs(69) = y(62);
rhs(69) = y(24)/(y(18));
lhs(70) = y(92);
rhs(70) = log(y(35));
lhs(71) = y(63);
rhs(71) = y(51)/(y(18));
lhs(72) = y(69);
rhs(72) = 0;
lhs(73) = y(81);
rhs(73) = y(45)/(y(18));
lhs(74) = y(80);
rhs(74) = y(46)/(y(18));
lhs(75) = y(83);
rhs(75) = y(47)/(y(18));
lhs(76) = y(82);
rhs(76) = y(50)/(y(18));
lhs(77) = y(64);
rhs(77) = y(49)/(y(18));
lhs(78) = y(65);
rhs(78) = y(40)/(y(18));
lhs(79) = y(66);
rhs(79) = y(41)/(y(18));
lhs(80) = y(67);
rhs(80) = log(y(26));
lhs(81) = y(68);
rhs(81) = log(y(27));
lhs(82) = y(70);
rhs(82) = log(y(34));
lhs(83) = y(71);
rhs(83) = log(y(28));
lhs(84) = y(72);
rhs(84) = log(y(31));
lhs(85) = y(94);
rhs(85) = log(y(39));
lhs(86) = y(86);
rhs(86) = params(34)*y(73);
lhs(87) = y(87);
rhs(87) = params(33)*y(74);
lhs(88) = y(88);
rhs(88) = params(35)*y(75);
lhs(89) = y(79);
rhs(89) = params(33)*y(64);
lhs(90) = y(76);
rhs(90) = params(33)*y(60);
lhs(91) = y(77);
rhs(91) = params(34)*y(61);
lhs(92) = y(78);
rhs(92) = 0;
lhs(93) = y(84);
rhs(93) = params(35)*y(82);
lhs(94) = y(85);
rhs(94) = params(35)*y(89);
end
