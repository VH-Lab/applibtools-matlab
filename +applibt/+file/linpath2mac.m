function newpath = linpath2mac(pathname)

%  applibt.file.linpath2mac
%    Converts a Linux pathname to a Macintosh OS 9 pathname.
%  
%  NEWPATH = applibt.file.linpath2mac(PATHNAME)
%
%  Replaces all '/' characters with ':' characters.

h = find(pathname=='/');
newpath = pathname; newpath(h) = ':';
