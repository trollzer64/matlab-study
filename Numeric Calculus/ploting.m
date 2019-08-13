%% Import data from text file.
% Script for importing data from the following text file:
%
%    C:\Users\franc\source\repos\ProWave-PC\WinConsole\WinConsoleApp\saida.csv
%
% To extend the code to different selected data or a different text file,
% generate a function instead of a script.

% Auto-generated by MATLAB on 2018/09/20 11:24:27

%% Initialize variables.
filename = 'C:\Users\franc\source\repos\ProWave-PC\WinConsole\WinConsoleApp\saida.csv';
delimiter = ';';

%% Format for each line of text:
%   column1: double (%f)
%	column2: double (%f)
%   column3: double (%f)
%	column4: double (%f)
%   column5: double (%f)
%	column6: double (%f)
%   column7: datetimes (%{yyyy-M-d H:m:s.SSS}D)
% For more information, see the TEXTSCAN documentation.
formatSpec = '%f%f%f%f%f%f%{yyyy-M-d H:m:s.SSS}D%[^\n\r]';

%% Open the text file.
fileID = fopen(filename,'r');

%% Read columns of data according to the format.
% This call is based on the structure of the file used to generate this
% code. If an error occurs for a different file, try regenerating the code
% from the Import Tool.
dataArray = textscan(fileID, formatSpec, 'Delimiter', delimiter, 'TextType', 'string',  'ReturnOnError', false);

%% Close the text file.
fclose(fileID);

%% Post processing for unimportable data.
% No unimportable data rules were applied during the import, so no post
% processing code is included. To generate code which works for
% unimportable data, select unimportable cells in a file and regenerate the
% script.

%% Create output variable
saida = table(dataArray{1:end-1}, 'VariableNames', {'Voltage','Phase','FilterFrequency','PeakVoltage','InputRange','EXTTRIGFrequency','TimeDate'});

% For code requiring serial dates (datenum) instead of datetime, uncomment
% the following line(s) below to return the imported dates as datenum(s).

% saida.TimeDate=datenum(saida.TimeDate);

%% Clear temporary variables
clearvars filename delimiter formatSpec fileID dataArray ans;
%% Plot
figure;
x = 1:length(saida{:, 7});
subplot(2, 1, 1)
plot(x, saida{:, 1})
title('Voltage')
subplot(2, 1, 2)
plot(x, saida{:, 2})
title('Phase')

figure
subplot(2, 1, 1)
plot(x, saida{:, 3})
title('Filter Frequency')
subplot(2, 1, 2)
plot(x, saida{:, 4})
title('Peak Voltage')

figure
subplot(2, 1, 1)
plot(x, saida{:, 5})
title('Input Range')
subplot(2, 1, 2)
plot(x, saida{:, 6})
title('EXT TRIG Frequency')