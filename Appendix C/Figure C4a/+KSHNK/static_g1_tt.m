function T = static_g1_tt(T, y, x, params)
% function T = static_g1_tt(T, y, x, params)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%
% Output:
%   T         [#temp variables by 1]  double   vector of temporary terms
%

assert(length(T) >= 18);

T = KSHNK.static_resid_tt(T, y, x, params);

T(10) = getPowerDeriv(y(13)*y(23),1-params(4),1);
T(11) = getPowerDeriv(y(13)/y(28),(-params(4)),1);
T(12) = getPowerDeriv(y(28)/(y(13)*y(23)),params(4)-1,1);
T(13) = ((y(15))-y(15))/((y(15))*(y(15)))/(y(15)/(y(15)));
T(14) = 1/y(23)-1/(y(23));
T(15) = (-(1/(y(18))));
T(16) = 1/y(40)-1/(y(40));
T(17) = ((y(41))-y(41))/((y(41))*(y(41)))/(y(41)/(y(41)));
T(18) = 1/y(93)-1/(y(93));

end
