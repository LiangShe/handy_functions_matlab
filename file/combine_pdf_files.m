function combine_pdf_files(output_file, filespec)
% combine_pdf_files(output_file, filespec)

if nargin<1
    output_file = 'combined.pdf';
end

if nargin<2
    filespec = '*.pdf';
end

if iscell(filespec)
    files = filespec;
elseif ischar(filespec)
    files = find_files( filespec );
end

if exist(output_file,'file')
    delete(output_file);
end

%% combine
mergePdfs(files, output_file);


end