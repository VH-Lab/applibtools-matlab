function filename = filename_value(filename_or_fileobj)
%FILENAME_VALUE - return the string of a filename whether it is a filename or inside a FILEOBJ
%
% FILENAME = applibt.file.filename_value(FILENAME_OR_FILEOBJ)
%
% Given a value which may be a FILENAME or a applibt.file.fileobj object, return either the FILENAME or
% the FULLPATHFILENAME field of the applibt.file.fileobj object.
%
%

if isa(filename_or_fileobj,'fileobj') | isa(filename_or_fileobj,'applibt.file.fileobj'),
	filename = filename_or_fileobj.fullpathfilename;
else,
	filename = filename_or_fileobj;
end;


