function applibt_build


dirname = ['/Users/vanhoosr/Documents/matlab/tools/vhlab-toolbox-matlab'];

m=applibt.matlab.mfiledirinfo(dirname);

dontinclude_str = {'modelel'};
dontinclude_index = [];

for i=1:numel(m),
	for j=1:numel(dontinclude_str),
		if ~isempty(strfind(m(i).fullfile,dontinclude_str{j})),
			dontinclude_index(end+1) = i;
			break;
		end;
	end;
end;

m = m(setdiff(1:numel(m),dontinclude_index));

rt = applibt.matlab.packagenamereplacementtable(m,'/Users/vanhoosr/Documents/matlab/tools/vhlab-toolbox-matlab','applibt');

search_replace = { ...
	'.datastructures.' '.data.' ...
	'.matlab_graphics.' '.matlab.graphics.' ...
	'.fits.', '.fit.', ...
	'.plotting.','.plot.' ...
	'.user_interface.' '.ui.' ...
	'.paths.','.path.', ...
	'.neuroscience.','.neuro.',...
	'.membrane_voltage.', '.membrane.', ...
	'.oridir.indexes.', '.oridir.index.',...
	'.oridir.plotting.','.oridir.plot', ...
	'.stimulus_analysis.', '.stimulus.' ...
};

for i=1:numel(rt),
	for j=1:2:numel(search_replace),
		rt(i).replacement = strrep(rt(i).replacement,search_replace{j},search_replace{j+1});
	end;
end;

fuse = applibt.matlab.findfunctionusedir('/Users/vanhoosr/Documents/MATLAB/tools/vhlab-toolbox-matlab/+applibt/',m);

status = applibt.matlab.replacefunction(fuse,rt);
