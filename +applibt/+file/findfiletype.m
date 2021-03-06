function filenames = findfiletype(pathname, extension)
% FINDFILETYPE - Find all files of a given extension in a folder
%
%  FILENAMES = applibt.file.findfiletype(PATHNAME, EXTENSION)
%
%  Find all the files with a given extension in a folder PATHNAME,
%  including subfolders of PATHNAME.
%
%  

filenames = {};

d = applibt.file.dirstrip(dir(pathname));


for i=1:length(d),
	if d(i).isdir, 
 		filenames = cat(2,filenames,...
 			applibt.file.findfiletype([pathname filesep d(i).name],extension));
	else,
		[mydir,byname,myext] = fileparts(d(i).name);
		myext = applibt.string.trimsymbol(myext,'.');
		if strcmp(lower(myext),lower(extension))
			filenames{end+1} = [pathname filesep d(i).name];
		end;
	end;
end;

return;


%% can also use a function called geAllFiles for a specific path and then keep the file with wanted extension
% files = applibt.file.getAllFiles(pathname);
% for i = 1:length(files),
%     [mydir,byname,myext] = fileparts(files(i));
%     if strcmp(lower(myext),lower(extension)),
% 		filenames{end+1} = [pathname filesep(files(i))];
%     end
% end

