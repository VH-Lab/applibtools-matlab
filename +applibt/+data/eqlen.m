function b = eqlen(x,y)

%  applibt.data.eqlen  Returns 1 if objects to compare are equal and have same size
%  
%    B = applibt.data.eqlen(X,Y)
%
%  Returns 1 iff X and Y have the same length and all of the entries in X and
%  Y are the same.
%
%  Examples:  applibt.data.eqlen([1],[1 1])=0, whereas [1]==[1 1]=[1 1], applibt.data.eqtot([1],[1 1])=1
%             applibt.data.eqlen([1 1],[1 1])=1
%             applibt.data.eqlen([],[]) = 1
%
%  See also:  applibt.data.eqtot, applibt.data.eqemp, EQ

if applibt.data.sizeeq(x,y),
	b = applibt.data.eqtot(x,y);
else,
	b = 0;
end;

