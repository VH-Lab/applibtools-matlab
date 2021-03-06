function b = isclassfile(filename)
% ISCLASSFILE - Is a Matlab .m file a class definition?
%
% B = ISCLASSFILE(FILENAME)
%
% Returns 1 if FILENAME is a Matlab class definition file.
% Returns 0 otherwise.
%
% Uses an undocumented Matlab function MTREE. MTREE's behavior may change
% in future releases.
% 
% Derived from comments in this nice blog note:
%  https://blogs.mathworks.com/loren/2013/08/26/what-kind-of-matlab-file-is-this/
%
% Note: EXIST(FILENAME,'CLASS') did not work for my custom objects
%
% See also: applibt.matlab.isfunctionfile
%
% Example: 
%   wfilename = which('table')
%   b = applibt.matlab.isclassfile(wfilename)
%

tree = mtree(filename,'-file');
if isempty(tree),
	b = 0;
	return;
end;
b = strcmp('CLASSDEF',upper(tree.select(1).kind));
