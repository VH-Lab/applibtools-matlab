function c=conditional(test,a,b)
% CONDITIONAL - Return A or B depending on result of a true/false test
%
%   C = applibt.data.conditional(TEST,A,B)
%
%   If TEST is >0, then C = A. Otherwise, C = B. 
%
%   Same as in C language:  C = (TEST) ? A : B;
%
%   See also:  SIGN. In C language: C language ternary operator,
%   ternary conditional operator, conditional operator
%
%   Example:
%     C = applibt.data.conditional(3<5,1,0) % C will be 1
%

if test>0,
	c = a;
else,
	c = b;
end;
