function s = emptystruct(varargin)
% EMPTYSTRUCT - Create a structure with given fieldnames that is empty
%
%   S = applibt.data.emptystruct(fieldname1, fieldname2, ...);
%     or
%   S = applibt.data.emptystruct({fieldname1, fieldname2, ...});
%
% Creates an empty structure with a given list of field names.
%
% This is sometimes useful for setting the fieldnames and establishing the
% order of the fieldnames for a structure array that will be filled later. 
%
% Example:
%       s = applibt.data.emptystruct('field1','field2');
%       for i=1:5,
%            s2.field1 = rand;
%            s2.field2 = rand;
%            s(end+1) = s2; 
%       end;
% 
% See also: applibt.data.var2struct
%  

if ~isempty(varargin),
	if iscell(varargin{1}),
		mycell = varargin{1};
		s = applibt.data.emptystruct(mycell{:});
		return;
	end;
end;

s = struct();

for i=1:length(varargin),
	eval(['s.' varargin{i} '=1;']);
end;

s = s([]);

