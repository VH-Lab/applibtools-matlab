function b = isint(X)

%  B = applibt.data.isint(X)
%
%  B = 1 iff X is a matrix of integers.

b=0;
if (isnumeric(X)&isreal(X)),b=all(X==fix(X));end;
