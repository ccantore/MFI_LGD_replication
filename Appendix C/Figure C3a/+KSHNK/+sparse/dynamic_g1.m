function [g1, T_order, T] = dynamic_g1(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T_order, T)
if nargin < 9
    T_order = -1;
    T = NaN(13, 1);
end
[T_order, T] = KSHNK.sparse.dynamic_g1_tt(y, x, params, steady_state, T_order, T);
g1_v = NaN(274, 1);
g1_v(1)=y(45)/params(33);
g1_v(2)=(-(y(47)/params(35)));
g1_v(3)=(-(y(46)/params(34)));
g1_v(4)=(-y(51));
g1_v(5)=(-(params(9)*1/(steady_state(15))/(y(15)/(steady_state(15)))));
g1_v(6)=(-(params(7)*1/y(23)));
g1_v(7)=y(124)/params(33);
g1_v(8)=(-(T(3)*getPowerDeriv(y(28),params(4),1)));
g1_v(9)=(-(T(5)*T(11)*(-y(107))/(y(28)*y(28))));
g1_v(10)=(-y(124));
g1_v(11)=(-(params(4)*T(12)*1/(y(107)*y(117))));
g1_v(12)=(-(y(124)/y(112)));
g1_v(13)=(-((-y(126))/(y(32)*y(32))));
g1_v(14)=(-(1-params(5)));
g1_v(15)=(-(params(8)*1/y(40)));
g1_v(16)=(-(params(12)*1/(steady_state(41))/(y(41)/(steady_state(41)))));
g1_v(17)=y(14)/params(33);
g1_v(18)=(-(y(14)*1/params(34)));
g1_v(19)=(-(y(14)/params(35)));
g1_v(20)=(-y(14));
g1_v(21)=(1-params(8))*params(14)*1/y(51);
g1_v(22)=(-((1-params(12))*params(15)*1/(steady_state(51))/(y(51)/(steady_state(51)))));
g1_v(23)=(-(params(18)*1/y(93)));
g1_v(24)=1;
g1_v(25)=1;
g1_v(26)=1;
g1_v(27)=T(9)*y(226)*y(227)*(-(params(1)*y(189)))/(y(95)*y(95));
g1_v(28)=params(1)*y(206)*(y(204)-1)*params(21)*y(204)*(-y(189))/(y(95)*y(95))/y(112);
g1_v(29)=1;
g1_v(30)=1;
g1_v(31)=1;
g1_v(32)=1;
g1_v(33)=1;
g1_v(34)=(-(getPowerDeriv(y(100),(-params(2)),1)));
g1_v(35)=(-1);
g1_v(36)=(-params(33));
g1_v(37)=(-(1/y(100)));
g1_v(38)=(-(getPowerDeriv(y(101),(-params(2)),1)));
g1_v(39)=1;
g1_v(40)=(-params(34));
g1_v(41)=(-(1/y(101)));
g1_v(42)=(-(getPowerDeriv(y(102),(-params(2)),1)));
g1_v(43)=1;
g1_v(44)=(-params(35));
g1_v(45)=(-(1/y(102)));
g1_v(46)=(-((-params(42))*getPowerDeriv(y(103),params(3),1)));
g1_v(47)=1;
g1_v(48)=(-y(111));
g1_v(49)=(-(1/y(103)));
g1_v(50)=(-((-params(43))*getPowerDeriv(y(104),params(3),1)));
g1_v(51)=1;
g1_v(52)=y(111);
g1_v(53)=(-(1/y(104)));
g1_v(54)=(-((-params(41))*getPowerDeriv(y(105),params(3),1)));
g1_v(55)=1;
g1_v(56)=(-y(111));
g1_v(57)=(-(1/y(105)));
g1_v(58)=1;
g1_v(59)=(-(params(44)*getPowerDeriv(y(107),params(3),1)/T(2)));
g1_v(60)=(-1);
g1_v(61)=(-1);
g1_v(62)=(-1);
g1_v(63)=(-(T(4)*y(117)*T(10)));
g1_v(64)=(-(T(5)*1/y(28)*T(11)));
g1_v(65)=(-y(111));
g1_v(66)=(-y(111));
g1_v(67)=(-(y(111)/y(112)));
g1_v(68)=(-(params(4)*(-(y(28)*y(117)))/(y(107)*y(117)*y(107)*y(117))*T(12)));
g1_v(69)=(-(1/y(107)));
g1_v(70)=(-(params(1)*(params(29)*y(189)+params(37)*y(191)+params(30)*y(190))));
g1_v(71)=(-(params(1)*(y(191)*params(32)+y(189)*params(36)+y(190)*params(39))));
g1_v(72)=(-(T(8)*(-1)/(y(108)*y(108))));
g1_v(73)=1;
g1_v(74)=(-T(7));
g1_v(75)=(-(1/y(204)));
g1_v(76)=1/(steady_state(15))/(y(109)/(steady_state(15)));
g1_v(77)=(-(1/y(109)));
g1_v(78)=(-(y(110)*params(21)+params(21)*(y(110)-1)));
g1_v(79)=(-((1-params(9))*params(10)*1/(steady_state(16))/(y(110)/(steady_state(16)))));
g1_v(80)=(-(1/y(110)));
g1_v(81)=1;
g1_v(82)=y(104);
g1_v(83)=(-y(105));
g1_v(84)=(-y(103));
g1_v(85)=1;
g1_v(86)=(-y(107));
g1_v(87)=(-y(107));
g1_v(88)=(-(y(107)/y(112)));
g1_v(89)=(-(1/y(111)));
g1_v(90)=1;
g1_v(91)=1;
g1_v(92)=(-((-(y(111)*y(107)))/(y(112)*y(112))));
g1_v(93)=(-((-(y(124)*y(28)))/(y(112)*y(112))));
g1_v(94)=1;
g1_v(95)=params(1)*(-(params(21)*y(204)*y(189)/y(95)*(y(204)-1)*y(206)))/(y(112)*y(112));
g1_v(96)=(-((1-params(9))*params(11)*1/(steady_state(18))/(y(112)/(steady_state(18)))));
g1_v(97)=(-((-y(145))/(y(112)*y(112))));
g1_v(98)=(-(1/y(112)));
g1_v(99)=1;
g1_v(100)=(-1);
g1_v(101)=1;
g1_v(102)=(-y(115));
g1_v(103)=(-y(114));
g1_v(104)=(-y(123));
g1_v(105)=params(6);
g1_v(106)=(-((-(T(1)*getPowerDeriv(y(116),(-params(2)),1)))/(T(2)*T(2))));
g1_v(107)=(-1);
g1_v(108)=1;
g1_v(109)=(-(1/y(116)));
g1_v(110)=(-(T(4)*y(107)*T(10)));
g1_v(111)=(-(T(6)*(1-params(4))*getPowerDeriv(y(117),1-params(4),1)));
g1_v(112)=(-(params(4)*T(12)*(-(y(107)*y(28)))/(y(107)*y(117)*y(107)*y(117))));
g1_v(113)=1/y(117);
g1_v(114)=1/params(33);
g1_v(115)=(-1);
g1_v(116)=1;
g1_v(117)=T(13);
g1_v(118)=(-params(33));
g1_v(119)=1;
g1_v(120)=(-(1/y(120)));
g1_v(121)=1;
g1_v(122)=(-(1/y(121)));
g1_v(123)=1;
g1_v(124)=(-(1/y(122)));
g1_v(125)=1;
g1_v(126)=(-y(115));
g1_v(127)=y(28)/params(33);
g1_v(128)=(-y(28));
g1_v(129)=1;
g1_v(130)=(-(y(28)/y(112)));
g1_v(131)=1;
g1_v(132)=(-1);
g1_v(133)=(-(1/y(125)));
g1_v(134)=(-1);
g1_v(135)=(-(1-y(130)));
g1_v(136)=(-(1/y(32)));
g1_v(137)=(-params(33));
g1_v(138)=1;
g1_v(139)=(-params(33));
g1_v(140)=1;
g1_v(141)=(-(1/y(128)));
g1_v(142)=1;
g1_v(143)=(-(1/y(129)));
g1_v(144)=y(126);
g1_v(145)=1;
g1_v(146)=(-y(133));
g1_v(147)=1;
g1_v(148)=(-(params(19)*2*(y(131)-1)));
g1_v(149)=(-(2*params(19)));
g1_v(150)=y(133)*(-y(132));
g1_v(151)=1;
g1_v(152)=y(133)*(-y(131));
g1_v(153)=(-(y(189)*(-(params(1)*(y(218)+(1-params(5))*y(227))))/(y(133)*y(133))));
g1_v(154)=(-(T(7)*(-(y(218)+(1-params(5))*y(227)))/(y(133)*y(133))));
g1_v(155)=1-y(130)-y(131)*y(132);
g1_v(156)=(-((-(y(218)+(1-params(5))*y(227)))/(y(133)*y(133))/T(8)));
g1_v(157)=(-(1/y(133)));
g1_v(158)=(-1);
g1_v(159)=(-1);
g1_v(160)=1/y(134);
g1_v(161)=(-((1-params(12))*params(13)*1/(steady_state(40))/(y(134)/(steady_state(40)))));
g1_v(162)=T(13);
g1_v(163)=1;
g1_v(164)=1/(steady_state(41))/(y(135)/(steady_state(41)));
g1_v(165)=(-1);
g1_v(166)=(-1);
g1_v(167)=(-1);
g1_v(168)=T(13);
g1_v(169)=(-1);
g1_v(170)=1;
g1_v(171)=1;
g1_v(172)=1;
g1_v(173)=1;
g1_v(174)=1;
g1_v(175)=1;
g1_v(176)=T(13);
g1_v(177)=1;
g1_v(178)=T(13);
g1_v(179)=1;
g1_v(180)=T(13);
g1_v(181)=1;
g1_v(182)=(-(params(29)*params(33)));
g1_v(183)=(-1);
g1_v(184)=(-(params(37)*params(33)));
g1_v(185)=(-(params(30)*params(33)));
g1_v(186)=(-params(33));
g1_v(187)=T(13);
g1_v(188)=(-(params(35)*params(36)));
g1_v(189)=1;
g1_v(190)=(-(params(35)*params(32)));
g1_v(191)=(-(params(35)*params(39)));
g1_v(192)=(-params(35));
g1_v(193)=T(13);
g1_v(194)=1;
g1_v(195)=1;
g1_v(196)=(-(1/y(112)));
g1_v(197)=T(13);
g1_v(198)=1;
g1_v(199)=1;
g1_v(200)=1;
g1_v(201)=1;
g1_v(202)=1;
g1_v(203)=1;
g1_v(204)=1;
g1_v(205)=1;
g1_v(206)=1;
g1_v(207)=(-params(33));
g1_v(208)=1;
g1_v(209)=(-params(34));
g1_v(210)=1;
g1_v(211)=1;
g1_v(212)=1;
g1_v(213)=(-params(33));
g1_v(214)=1;
g1_v(215)=1;
g1_v(216)=1;
g1_v(217)=1;
g1_v(218)=1;
g1_v(219)=1;
g1_v(220)=1;
g1_v(221)=1;
g1_v(222)=1;
g1_v(223)=(-params(34));
g1_v(224)=1;
g1_v(225)=(-params(33));
g1_v(226)=1;
g1_v(227)=(-params(35));
g1_v(228)=1;
g1_v(229)=1;
g1_v(230)=1;
g1_v(231)=1;
g1_v(232)=1;
g1_v(233)=1;
g1_v(234)=1;
g1_v(235)=(-params(35));
g1_v(236)=1;
g1_v(237)=1;
g1_v(238)=1;
g1_v(239)=1;
g1_v(240)=1;
g1_v(241)=1;
g1_v(242)=1;
g1_v(243)=(-params(35));
g1_v(244)=1;
g1_v(245)=1;
g1_v(246)=1;
g1_v(247)=(-(1/(steady_state(93))/(y(187)/(steady_state(93)))));
g1_v(248)=1/y(187);
g1_v(249)=1;
g1_v(250)=(-(params(1)*y(108)*params(29)));
g1_v(251)=(-(params(1)*y(108)*params(36)));
g1_v(252)=(-(params(1)*(y(218)+(1-params(5))*y(227))/y(133)));
g1_v(253)=T(9)*y(226)*y(227)*params(1)/y(95);
g1_v(254)=params(1)*y(206)*(y(204)-1)*params(21)*y(204)*1/y(95)/y(112);
g1_v(255)=(-(params(1)*y(108)*params(30)));
g1_v(256)=(-(params(1)*y(108)*params(39)));
g1_v(257)=(-(params(1)*y(108)*params(37)));
g1_v(258)=(-(params(1)*y(108)*params(32)));
g1_v(259)=(-((-y(109))/(y(204)*y(204))));
g1_v(260)=params(1)*y(206)*(params(21)*y(204)*y(189)/y(95)+(y(204)-1)*params(21)*y(189)/y(95))/y(112);
g1_v(261)=params(1)*params(21)*y(204)*y(189)/y(95)*(y(204)-1)/y(112);
g1_v(262)=(-(y(189)*params(1)/y(133)));
g1_v(263)=(-(T(7)*1/y(133)));
g1_v(264)=(-(1/y(133)/T(8)));
g1_v(265)=y(227)*params(1)*y(189)/y(95)*y(226)*2*y(225);
g1_v(266)=y(227)*params(1)*y(189)/y(95)*T(9);
g1_v(267)=(-(y(189)*params(1)*(1-params(5))/y(133)));
g1_v(268)=(-(T(7)*(1-params(5))/y(133)));
g1_v(269)=T(9)*params(1)*y(189)/y(95)*y(226);
g1_v(270)=(-((1-params(5))/y(133)/T(8)));
g1_v(271)=1;
g1_v(272)=1;
g1_v(273)=(-1);
g1_v(274)=1;
if ~isoctave && matlab_ver_less_than('9.8')
    sparse_rowval = double(sparse_rowval);
    sparse_colval = double(sparse_colval);
end
g1 = sparse(sparse_rowval, sparse_colval, g1_v, 94, 286);
end
