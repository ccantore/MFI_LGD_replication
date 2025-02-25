function T = dynamic_resid_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_resid_tt(T, y, x, params, steady_state, it_)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double  vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double  vector of endogenous variables in the order stored
%                                                    in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double  matrix of exogenous variables (in declaration order)
%                                                    for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double  vector of steady state values
%   params        [M_.param_nbr by 1]        double  vector of parameter values in declaration order
%   it_           scalar                     double  time period for exogenous variables for which
%                                                    to evaluate the model
%
% Output:
%   T           [#temp variables by 1]       double  vector of temporary terms
%

assert(length(T) >= 9);

T(1) = params(44)*y(26)^params(3);
T(2) = y(35)^(-params(2));
T(3) = (y(26)*y(36))^(1-params(4));
T(4) = y(3)^params(4);
T(5) = (1-params(4))*y(36)^(1-params(4));
T(6) = (y(26)/y(3))^(-params(4));
T(7) = 1/y(27);
T(8) = (y(114)+(1-params(5))*y(117))/y(52);
T(9) = y(115)^2;

end
