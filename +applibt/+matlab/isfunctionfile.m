function b = isfunctionfile(filename)
% ISFUNCTIONFILE - determines if a FILENAME defines a Matlab function
%
% B = ISFUNCTIONFILE(FILENAME)
%
% Returns 1 if FILENAME defines a Matlab function.
% Returns 0 otherwise.
%
% Note that other types of M files are Matlab SCRIPTS and 
% CLASS DEFINITIONS.
%
% See also: applibt.matlab.isclassfile
%
% Example: 
%   wfilename = which('applibt.matlab.isfunctionfile')
%   b = applibt.matlab.isfunctionfile(wfilename)
%

ninputs = [];

try,
	ninputs = nargin(filename);
end;

b = ~isempty(ninputs) & ~applibt.matlab.isclassfile(filename);
