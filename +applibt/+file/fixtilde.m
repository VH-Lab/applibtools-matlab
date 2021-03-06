function fn = fixtilde(filename)

%  applibt.file.fixtilde - Removes ~ from filenames and replaces with user home directory
%
%  NEWNAME = applibt.file.fixtilde(FILENAME)
%
%  Removes '~' symbol for a user's home directory in unix and replaces it
%  with the actual path.
%
%  e.g.  applibt.file.fixtilde('~/myfile') returns '/home/username/myfile'
%
%  If the tilde is not the leading character then no changes are made.
%

fn = filename;
if strcmp(fn(1),'~'),
	currdir = pwd;
	cd('~');
	homedir = pwd;
	cd(currdir);
	fn = [homedir fn(2:end)];
end;
