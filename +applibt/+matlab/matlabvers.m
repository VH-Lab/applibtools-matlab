function n = matlabvers
% MATLABVERS - return the Matlab version
%
% N = applibt.matlab.matlabvers
%
% Returns the Matlab version. This function is a shortcut for
%    A = VER('MATLAB');
%    N = A.Version;
%
% Example: 
%   n = applibt.matlab.matlabvers();
%

a = ver('matlab');
n = a.Version;
