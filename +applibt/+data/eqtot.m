function b = eqtot(x,y)

% applibt.data.eqtot
%
%   B = applibt.data.eqtot(X,Y)
%
%  Returns applibt.data.eqemp(X,Y), except that if the result is an array of boolean values,
%  the logical AND of all the results is returned.
%
%  Example:  applibt.data.eqtot([4 4 4],[4 4 4]) = 1, applibt.data.eqtot([1],[1 1]) = 1
%
%  See also:  applibt.data.eqemp, EQ

b=double(applibt.data.eqemp(x,y));
b=prod(reshape(b,1,prod(size(b))));
