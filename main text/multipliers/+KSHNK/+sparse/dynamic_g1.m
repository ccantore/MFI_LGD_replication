function [g1, T_order, T] = dynamic_g1(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T_order, T)
if nargin < 9
    T_order = -1;
    T = NaN(14, 1);
end
[T_order, T] = KSHNK.sparse.dynamic_g1_tt(y, x, params, steady_state, T_order, T);
g1_v = NaN(289, 1);
g1_v(1)=y(46)/(params(33)*y(135));
g1_v(2)=(-(y(48)/(params(35)*y(135))));
g1_v(3)=(-(y(47)/(params(34)*y(135))));
g1_v(4)=(-(params(9)*1/(steady_state(15))/(y(15)/(steady_state(15)))));
g1_v(5)=(-y(52));
g1_v(6)=(-(params(7)*1/y(23)));
g1_v(7)=y(125)/params(33);
g1_v(8)=(-(T(3)*getPowerDeriv(y(28),params(4),1)));
g1_v(9)=(-(T(5)*T(11)*(-y(108))/(y(28)*y(28))));
g1_v(10)=(-y(125));
g1_v(11)=(-(params(4)*T(12)*1/(y(108)*y(118))));
g1_v(12)=(-(y(125)/y(113)));
g1_v(13)=(-((-y(127))/(y(32)*y(32))));
g1_v(14)=(-(1-params(5)));
g1_v(15)=(-((-y(135))/(y(40)*y(40))));
g1_v(16)=(-(params(8)*1/y(41)));
g1_v(17)=(-(params(12)*1/(steady_state(42))/(y(42)/(steady_state(42)))));
g1_v(18)=y(15)/(params(33)*y(135));
g1_v(19)=(-(y(15)*1/(params(34)*y(135))));
g1_v(20)=(-(y(15)/(params(35)*y(135))));
g1_v(21)=(-y(15));
g1_v(22)=(1-params(8))*params(14)*1/y(52);
g1_v(23)=(-((1-params(12))*params(15)*1/(steady_state(52))/(y(52)/(steady_state(52)))));
g1_v(24)=(-(params(18)*1/y(94)));
g1_v(25)=1;
g1_v(26)=1;
g1_v(27)=1;
g1_v(28)=T(9)*y(228)*y(229)*(-(params(1)*y(191)))/(y(96)*y(96));
g1_v(29)=params(1)*y(208)*(y(206)-1)*params(21)*y(206)*(-y(191))/(y(96)*y(96))/y(113);
g1_v(30)=1;
g1_v(31)=1;
g1_v(32)=1;
g1_v(33)=1;
g1_v(34)=1;
g1_v(35)=(-(getPowerDeriv(y(101),(-params(2)),1)));
g1_v(36)=(-1);
g1_v(37)=(-params(33));
g1_v(38)=(-(1/y(101)));
g1_v(39)=(-(getPowerDeriv(y(102),(-params(2)),1)));
g1_v(40)=1;
g1_v(41)=(-params(34));
g1_v(42)=(-(1/y(102)));
g1_v(43)=(-(getPowerDeriv(y(103),(-params(2)),1)));
g1_v(44)=1;
g1_v(45)=(-params(35));
g1_v(46)=(-(1/y(103)));
g1_v(47)=(-((-params(42))*getPowerDeriv(y(104),params(3),1)));
g1_v(48)=1;
g1_v(49)=(-y(112));
g1_v(50)=(-(1/y(104)));
g1_v(51)=(-((-params(43))*getPowerDeriv(y(105),params(3),1)));
g1_v(52)=1;
g1_v(53)=y(112);
g1_v(54)=(-(1/y(105)));
g1_v(55)=(-((-params(41))*getPowerDeriv(y(106),params(3),1)));
g1_v(56)=1;
g1_v(57)=(-y(112));
g1_v(58)=(-(1/y(106)));
g1_v(59)=1;
g1_v(60)=(-(params(44)*getPowerDeriv(y(108),params(3),1)/T(2)));
g1_v(61)=(-1);
g1_v(62)=(-1);
g1_v(63)=(-1);
g1_v(64)=(-(T(4)*y(118)*T(10)));
g1_v(65)=(-(T(5)*1/y(28)*T(11)));
g1_v(66)=(-y(112));
g1_v(67)=(-y(112));
g1_v(68)=(-(y(112)/y(113)));
g1_v(69)=(-(params(4)*(-(y(28)*y(118)))/(y(108)*y(118)*y(108)*y(118))*T(12)));
g1_v(70)=(-(1/y(108)));
g1_v(71)=(-(params(1)*(params(29)*y(191)+params(37)*y(193)+params(30)*y(192))));
g1_v(72)=(-(params(1)*(y(193)*params(32)+y(191)*params(36)+y(192)*params(39))));
g1_v(73)=(-(T(8)*(-1)/(y(109)*y(109))));
g1_v(74)=1;
g1_v(75)=(-T(7));
g1_v(76)=(-(1/y(206)));
g1_v(77)=1/(steady_state(15))/(y(110)/(steady_state(15)));
g1_v(78)=(-(1/y(110)));
g1_v(79)=(-(y(111)*params(21)+params(21)*(y(111)-1)));
g1_v(80)=(-((1-params(9))*params(10)*1/(steady_state(16))/(y(111)/(steady_state(16)))));
g1_v(81)=1;
g1_v(82)=(-(1/y(111)));
g1_v(83)=1;
g1_v(84)=y(105);
g1_v(85)=(-y(106));
g1_v(86)=(-y(104));
g1_v(87)=1;
g1_v(88)=(-y(108));
g1_v(89)=(-y(108));
g1_v(90)=(-(y(108)/y(113)));
g1_v(91)=(-(1/y(112)));
g1_v(92)=1;
g1_v(93)=1;
g1_v(94)=(-((-(y(112)*y(108)))/(y(113)*y(113))));
g1_v(95)=(-((-(y(125)*y(28)))/(y(113)*y(113))));
g1_v(96)=1;
g1_v(97)=params(1)*(-(params(21)*y(206)*y(191)/y(96)*(y(206)-1)*y(208)))/(y(113)*y(113));
g1_v(98)=(-((1-params(9))*params(11)*1/(steady_state(18))/(y(113)/(steady_state(18)))));
g1_v(99)=(-((-(y(135)*y(147)))/(y(135)*y(113)*y(135)*y(113))));
g1_v(100)=(-(1/y(113)));
g1_v(101)=1;
g1_v(102)=(-1);
g1_v(103)=1;
g1_v(104)=(-y(116));
g1_v(105)=(-y(115));
g1_v(106)=(-y(124));
g1_v(107)=params(6);
g1_v(108)=(-((-(T(1)*getPowerDeriv(y(117),(-params(2)),1)))/(T(2)*T(2))));
g1_v(109)=(-1);
g1_v(110)=1;
g1_v(111)=(-(1/y(117)));
g1_v(112)=(-(T(4)*y(108)*T(10)));
g1_v(113)=(-(T(6)*(1-params(4))*getPowerDeriv(y(118),1-params(4),1)));
g1_v(114)=(-(params(4)*T(12)*(-(y(108)*y(28)))/(y(108)*y(118)*y(108)*y(118))));
g1_v(115)=1/y(118);
g1_v(116)=1/params(33);
g1_v(117)=(-1);
g1_v(118)=1;
g1_v(119)=(-(1/(steady_state(18))));
g1_v(120)=(-params(33));
g1_v(121)=1;
g1_v(122)=(-(1/y(121)));
g1_v(123)=1;
g1_v(124)=(-(1/y(122)));
g1_v(125)=1;
g1_v(126)=(-(1/y(123)));
g1_v(127)=1;
g1_v(128)=(-y(116));
g1_v(129)=y(28)/params(33);
g1_v(130)=(-y(28));
g1_v(131)=1;
g1_v(132)=(-(y(28)/y(113)));
g1_v(133)=1;
g1_v(134)=(-1);
g1_v(135)=(-(1/y(126)));
g1_v(136)=(-1);
g1_v(137)=(-(1-y(131)));
g1_v(138)=(-(1/y(32)));
g1_v(139)=(-params(33));
g1_v(140)=1;
g1_v(141)=(-params(33));
g1_v(142)=1;
g1_v(143)=(-(1/y(129)));
g1_v(144)=1;
g1_v(145)=(-(1/y(130)));
g1_v(146)=y(127);
g1_v(147)=1;
g1_v(148)=(-y(134));
g1_v(149)=1;
g1_v(150)=(-(params(19)*2*(y(132)-1)));
g1_v(151)=(-(2*params(19)));
g1_v(152)=y(134)*(-y(133));
g1_v(153)=1;
g1_v(154)=y(134)*(-y(132));
g1_v(155)=(-(y(191)*(-(params(1)*(y(220)+(1-params(5))*y(229))))/(y(134)*y(134))));
g1_v(156)=(-(T(7)*(-(y(220)+(1-params(5))*y(229)))/(y(134)*y(134))));
g1_v(157)=1-y(131)-y(132)*y(133);
g1_v(158)=(-((-(y(220)+(1-params(5))*y(229)))/(y(134)*y(134))/T(8)));
g1_v(159)=(-(1/y(134)));
g1_v(160)=(-((-y(145))/(y(135)*y(135))-((-(params(33)*y(15)*y(46)))/(params(33)*y(135)*params(33)*y(135))-(-y(138))/(y(135)*y(135)))));
g1_v(161)=(-y(146))/(y(135)*y(135))-((-(params(35)*y(15)*y(48)))/(params(35)*y(135)*params(35)*y(135))-(-y(140))/(y(135)*y(135)));
g1_v(162)=(-(y(15)*(-(params(34)*y(47)))/(params(34)*y(135)*params(34)*y(135))-(-y(139))/(y(135)*y(135))));
g1_v(163)=(-((-y(136))/(y(135)*y(135))));
g1_v(164)=(-(1/y(40)));
g1_v(165)=(-((-(y(113)*y(147)))/(y(135)*y(113)*y(135)*y(113))));
g1_v(166)=(-((-y(147))/(y(135)*y(135))/(steady_state(18))));
g1_v(167)=(-((-y(141))/(y(135)*y(135))/(steady_state(18))));
g1_v(168)=(-((-y(142))/(y(135)*y(135))/(steady_state(18))));
g1_v(169)=(-((-y(143))/(y(135)*y(135))/(steady_state(18))));
g1_v(170)=(-((-y(146))/(y(135)*y(135))/(steady_state(18))));
g1_v(171)=(-((-y(145))/(y(135)*y(135))/(steady_state(18))));
g1_v(172)=(-((-y(136))/(y(135)*y(135))/(steady_state(18))));
g1_v(173)=(-((-y(137))/(y(135)*y(135))/(steady_state(18))));
g1_v(174)=(-T(13));
g1_v(175)=(-1);
g1_v(176)=1/y(136);
g1_v(177)=(-((1-params(12))*params(13)*1/(steady_state(41))/(y(136)/(steady_state(41)))));
g1_v(178)=T(14);
g1_v(179)=1;
g1_v(180)=1/(steady_state(42))/(y(137)/(steady_state(42)));
g1_v(181)=(-1);
g1_v(182)=(-1);
g1_v(183)=(-1);
g1_v(184)=T(14);
g1_v(185)=(-T(13));
g1_v(186)=1;
g1_v(187)=T(13);
g1_v(188)=1;
g1_v(189)=T(13);
g1_v(190)=1;
g1_v(191)=1;
g1_v(192)=T(14);
g1_v(193)=1;
g1_v(194)=T(14);
g1_v(195)=1;
g1_v(196)=T(14);
g1_v(197)=1;
g1_v(198)=(-(params(29)*params(33)));
g1_v(199)=(-T(13));
g1_v(200)=(-(params(37)*params(33)));
g1_v(201)=(-(params(30)*params(33)));
g1_v(202)=(-params(33));
g1_v(203)=T(14);
g1_v(204)=(-(params(35)*params(36)));
g1_v(205)=T(13);
g1_v(206)=(-(params(35)*params(32)));
g1_v(207)=(-(params(35)*params(39)));
g1_v(208)=(-params(35));
g1_v(209)=T(14);
g1_v(210)=1;
g1_v(211)=1;
g1_v(212)=(-(1/(y(135)*y(113))));
g1_v(213)=T(14);
g1_v(214)=1;
g1_v(215)=1;
g1_v(216)=1;
g1_v(217)=1;
g1_v(218)=1;
g1_v(219)=1;
g1_v(220)=1;
g1_v(221)=1;
g1_v(222)=1;
g1_v(223)=(-params(33));
g1_v(224)=1;
g1_v(225)=(-params(34));
g1_v(226)=1;
g1_v(227)=1;
g1_v(228)=1;
g1_v(229)=(-params(33));
g1_v(230)=1;
g1_v(231)=1;
g1_v(232)=1;
g1_v(233)=1;
g1_v(234)=1;
g1_v(235)=1;
g1_v(236)=1;
g1_v(237)=1;
g1_v(238)=1;
g1_v(239)=(-params(34));
g1_v(240)=1;
g1_v(241)=(-params(33));
g1_v(242)=1;
g1_v(243)=(-params(35));
g1_v(244)=1;
g1_v(245)=1;
g1_v(246)=1;
g1_v(247)=1;
g1_v(248)=1;
g1_v(249)=1;
g1_v(250)=1;
g1_v(251)=(-params(35));
g1_v(252)=1;
g1_v(253)=1;
g1_v(254)=1;
g1_v(255)=1;
g1_v(256)=1;
g1_v(257)=1;
g1_v(258)=1;
g1_v(259)=(-params(35));
g1_v(260)=1;
g1_v(261)=1;
g1_v(262)=1;
g1_v(263)=(-(1/(steady_state(94))/(y(189)/(steady_state(94)))));
g1_v(264)=1/y(189);
g1_v(265)=1;
g1_v(266)=(-(params(1)*y(109)*params(29)));
g1_v(267)=(-(params(1)*y(109)*params(36)));
g1_v(268)=(-(params(1)*(y(220)+(1-params(5))*y(229))/y(134)));
g1_v(269)=T(9)*y(228)*y(229)*params(1)/y(96);
g1_v(270)=params(1)*y(208)*(y(206)-1)*params(21)*y(206)*1/y(96)/y(113);
g1_v(271)=(-(params(1)*y(109)*params(30)));
g1_v(272)=(-(params(1)*y(109)*params(39)));
g1_v(273)=(-(params(1)*y(109)*params(37)));
g1_v(274)=(-(params(1)*y(109)*params(32)));
g1_v(275)=(-((-y(110))/(y(206)*y(206))));
g1_v(276)=params(1)*y(208)*(params(21)*y(206)*y(191)/y(96)+(y(206)-1)*params(21)*y(191)/y(96))/y(113);
g1_v(277)=params(1)*params(21)*y(206)*y(191)/y(96)*(y(206)-1)/y(113);
g1_v(278)=(-(y(191)*params(1)/y(134)));
g1_v(279)=(-(T(7)*1/y(134)));
g1_v(280)=(-(1/y(134)/T(8)));
g1_v(281)=y(229)*params(1)*y(191)/y(96)*y(228)*2*y(227);
g1_v(282)=y(229)*params(1)*y(191)/y(96)*T(9);
g1_v(283)=(-(y(191)*params(1)*(1-params(5))/y(134)));
g1_v(284)=(-(T(7)*(1-params(5))/y(134)));
g1_v(285)=T(9)*params(1)*y(191)/y(96)*y(228);
g1_v(286)=(-((1-params(5))/y(134)/T(8)));
g1_v(287)=1;
g1_v(288)=1;
g1_v(289)=(-1);
if ~isoctave && matlab_ver_less_than('9.8')
    sparse_rowval = double(sparse_rowval);
    sparse_colval = double(sparse_colval);
end
g1 = sparse(sparse_rowval, sparse_colval, g1_v, 95, 288);
end
