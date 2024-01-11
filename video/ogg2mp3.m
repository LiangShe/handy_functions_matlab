function ogg2mp3(audio_file)

[pathstr, name, ext]  = fileparts(audio_file);
outputfile = fullfile(pathstr, [name '.mp3']);

[y,Fs] = audioread(audio_file);
audiowrite(outputfile,y,Fs)