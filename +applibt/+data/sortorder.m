function i = sortorder(varargin)
% SORTORDER - return the order of the sorted data
%
% I = applibt.data.sortorder([inputs])
%
% Returns the index order I of the call 
%   [B,I] = SORT([inputs])
%
% See also: SORT
%
% Example:
%   A = [ 3 2 1];
%   I = applibt.data.sortorder(A) % returns 3 2 1
%   A(I) % shows sorted values

[b,i] = sort(varargin{:});
