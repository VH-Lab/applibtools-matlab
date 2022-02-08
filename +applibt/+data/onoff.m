function str = onoff(b)

% applibt.data.onoff  - Returns 'on' or 'off'
%
% STR = applibt.data.onoff(B)
%
% If B<=0, STR = 'off', else, STR = 'on'
%

if b<=0, str = 'off'; else, str = 'on'; end;
