function str2text(filename, str)
% STR2TEXT - Write a string to a text file
%
%   applibt.file.str2text(FILENAME, str)
%
%  Writes the strings to the new text file FILENAME.
%

fid = fopen(filename,'wt');

if fid>=0,
	fwrite(fid,[str]);
	fclose(fid);
else,
	error(['Could not open ' filename ' for writing.']);
end;
