function T = static_resid_tt(T, y, x, params)
% function T = static_resid_tt(T, y, x, params)
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

assert(length(T) >= 9);

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
