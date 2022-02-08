function build()
% applibt.docs.build - build the applibt markdown documentation from Matlab source
%
% Builds the applibt documentation locally in applibt-matlab-toolbox/docs and updates the mkdocs-yml file
% in the $NDR-matlab directory.
%
% **Example**:
%   applibt.docs.build();
%

applibt.globals;

disp(['Now writing function reference...']);

applibt_path = applibt_globals.path.path;
applibt_docs = [applibt_path filesep 'docs' filesep 'reference']; % code reference path
ymlpath = 'reference';

disp(['Writing documents pass 1']);

out1 = applibt.docs.matlab2markdown(applibt_path,applibt_docs,ymlpath);
os = applibt.docs.markdownoutput2objectstruct(out1); % get object structures

disp(['Writing documents pass 2, with all links']);
out2 = applibt.docs.matlab2markdown(applibt_path,applibt_docs,ymlpath, os);

T = applibt.docs.mkdocsnavtext(out2,4);

ymlfile.references = [applibt_path filesep 'docs' filesep 'mkdocs-references.yml'];
ymlfile.start = [applibt_path filesep 'docs' filesep 'mkdocs-start.yml'];
ymlfile.end = [applibt_path filesep 'docs' filesep 'mkdocs-end.yml'];
ymlfile.main = [applibt_path filesep 'mkdocs.yml'];

applibt.file.str2text(ymlfile.references,T);

T0 = applibt.file.text2cellstr(ymlfile.start);
T1 = applibt.file.text2cellstr(ymlfile.references);
T2 = applibt.file.text2cellstr(ymlfile.end);

Tnew = cat(2,T0,T1,T2);

applibt.file.cellstr2text(ymlfile.main,Tnew);

