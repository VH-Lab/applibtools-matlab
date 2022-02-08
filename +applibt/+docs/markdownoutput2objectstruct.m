function objectstruct = markdownoutput2objectstruct(markdown_output)
% applibt.docs.markdownoutput2objectstruct - create a list of all objects and their paths for making mkdocs links
%
% OBJECTSTRUCT = applibt.docs.markdownoutput2objectstruct(MARKDOWN_OUTPUT)
%
% Given a MARKDOWN_OUTPUT structure returned from applibt.docs.matlab2markdown, creates a structure with
% fields 'object' and 'path'. 'object' has the name of each object, and 'path' has its absolute path.
% 

objectstruct = applibt.data.emptystruct('object','path');

for i=1:numel(markdown_output),
	if ~isstruct(markdown_output(i).path),
		newentry.object = markdown_output(i).title;
		newentry.path = markdown_output(i).path;
		objectstruct(end+1) = newentry;
	else, 
		objectstruct = cat(2,objectstruct, applibt.docs.markdownoutput2objectstruct(markdown_output(i).path));
	end;
end;

