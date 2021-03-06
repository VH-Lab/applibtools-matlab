function c = string2cell(string, separator, varargin)
% STRING2CELL = Convert a delimited list to a cell array of strings
%
%  C = applibt.data.string2cell(STRING, SEPARATOR)
%
%  Converts a separator-delimited string list to a cell array of strings.
%
%  STRING should be a separator-delimited list, such as 't00001, t00002, t00003'.
%  
%  SEPARATOR is the character that separates the items, such as ',' or ';'.
%
%  Additional parameters can be provided as name/value pairs:
%  applibt.data.string2cell(STRING, SEPARATOR, 'NAME', VALUE)
%
%  Parameter name:           | Description:
%  --------------------------|-----------------------------------------
%  TRIMWS (0/1, default 1)   | Should we trim whitespace for these elements? 
%
%
%  Example:
%     string = 't00001, t00002, t00003, t00004';
%     c = applibt.data.string2cell(string,',');
%     c % display c, equals {'t00001','t00002','t00003','t00004'}
%  
%
%  See also: DLMREAD, TDFREAD
%

TRIMWS = 1;

applibt.data.assign(varargin{:});

c = {};
f = find(string==separator);
starts = [1 f+1];
stops = [f-1 length(string)];

for i=1:length(starts),
	c{i} = string(starts(i):stops(i));
end;

if TRIMWS,
	c = strtrim(c);
end;
