function [y, T] = static_1(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(48)=0;
  y(37)=1;
  y(36)=params(19)*(y(37)-1)^2;
  y(38)=(y(37)-1)*2*params(19);
end
