function fid = fileid_value(fid_or_fileobj)
%FILEID_VALUE - return the value of an FID whether it is an FID or inside a FILEOBJ
%
% FID = applibt.file.fileid_value(FID_OR_FILEOBJ)
%
% Given a value which may be a FID or a applibt.file.fileobj object, return either the FID or
% the FID field of the applibt.file.fileobj object.
%
% Allows one to test 'if applibt.file.fileid_value(f)<0' without knowing if f is a Matlab file identifier
% or a applibt.file.fileobj.
%

if isa(fid_or_fileobj,'applibt.file.fileobj'),
	fid = fid_or_fileobj.fid;
else,
	fid = fid_or_fileobj;
end;


