function [se] = nanstderr(data)
%  STDERR - Standard error of a vector of data
%
%  SE = applibt.data.nanstderr(DATA);
%
%  Computes standard error of each column, ignoring NaN's.
%
%  SE = nanstd(data)./sqrt(sum(1-[isnan(data)]));
%
%  See also: STD, NANSTD

se = nanstd(data)./sqrt(sum(1-[isnan(data)]));
