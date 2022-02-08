function settoolbar(fignum,toolstring)

%  applibt.ui.settoolbar  - Sets toolbar
%
%  applibt.ui.settoolbar(FIGNUM, TOOLSTRING)
%
%  Calls SET to set the toolbar to the value of TOOLSTRING.
%  If matlab version is too low for the toolbar, then
%  nothing is done.

try,
	a = set(fignum,'Toolbar');
end;

if exist('a')==1, set(fignum,'Toolbar',toolstring); end;
