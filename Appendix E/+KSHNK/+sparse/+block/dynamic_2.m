function [y, T, residual, g1] = dynamic_2(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1)=log((steady_state(23)));
  residual(1)=(log(y(118))-T(1))-(params(7)*(log(y(23))-T(1))-x(1));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(118);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
