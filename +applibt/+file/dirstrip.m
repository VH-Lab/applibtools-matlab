function d = dirstrip(ds)

%  D = applibt.file.dirstrip(DS)
%
%  Removes '.' and '..' from a directory structure returned by the function
%  "DIR". Also removes '.DS_Store' (Apple desktop information) and '.git' (GitHub)
%  from the list.
%
%  This will return all file names, including regular files. To return only
%  directories, see applibt.file.dirlist_trimdots().
%
%  See also: DIR, applibt.file.dirlist_trimdots()

g = {ds.name};
[B,I] = setdiff(g,{'.','..','.DS_Store','.git'});
d = ds(I);
