function [c, t] = inter_event_interval_histogram(a,b,maxlag,binsize)
% compute inter-event interval histogram between timestamps a and b
% 

if nargin<2
    b=a;
end

if nargin<3
    maxlag = 30;
end

if nargin<4
    binsize = 0.1;
end

dt_all = bsxfun(@minus, a, b');
t_bin = -maxlag:binsize:maxlag;
c = histcounts(dt_all(:), t_bin);
t = t_bin(1:end-1)+binsize/2;