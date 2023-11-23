function h = error_plot(varargin) 
% error_plot(data) 
% error_plot(x, data) 
% error_plot(..., linespec) 
% 

if nargin == 1
    hasx = false;
    data = varargin{1};
    ix = 2; % extra arg index

elseif nargin == 2
    if ischar(varargin{2})
        hasx = false;
        data = varargin{1};
        ix = 2;
        
    else
        hasx = true;
        x = varargin{1};
        data = varargin{2};
        ix = 3;
    end
    
elseif nargin > 2
    hasx = true;
    x = varargin{1};
    data = varargin{2};
    ix = 3;
        
end

if iscell(data)
    ave = cellfun(@nanmean, data);
    sem = cellfun(@(x) std(x, 'omitnan')/sqrt( sum(~isnan(x))) , data);
else
    ave = nanmean(data);
    sem = std(data,'omitnan')./sqrt( sum(~isnan(data)) );
end

if hasx
    h = errorbar(x, ave, sem, varargin{ix:end});
else
    h = errorbar(ave, sem, varargin{ix:end});
end

try 
    h.CapSize = 8;
end

end

