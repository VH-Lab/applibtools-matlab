function mat = readplainmat(fid)
% READPLAINMAT - read a simple binary matrix from disk
% 
% MAT = applibt.file.readplainmat(FID)
%
% Reads a basic matrix written by applibt.file.writeplainmat.
% See applibt.file.writeplainmat for details of the file format.
% FID should be an open FID (see FOPEN).
%
% For example, see applibt.file.writeplainmat.


cn = fgetl(fid);
dim = fread(fid,1,'uint8'); % dimensions, limit of 255 dimensions
sz = fread(fid,dim,'uint32'); % size
mat = fread(fid, prod(sz), cn);
mat = reshape(mat,sz(:)');
mat = feval(cn,mat);
