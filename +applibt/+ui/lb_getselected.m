function v = lb_getselected(lb)
%
%  Part of the NewStim package
%
%  LISTSTR = applibt.ui.lb_getselected(LB)
%
%  Returns a list of strings containing the names of the currently selected
%  items in the listbox LB.  LB should be a handle to a listbox.
%
%                                   Questions to vanhoosr@brandeis.edu

vals = get(lb,'value'); str = get(lb,'String');
if ~isempty(str), v = str(vals);
else, v = [];
end;
