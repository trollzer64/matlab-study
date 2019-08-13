%% Import data from text file.
% Script for importing data from the following text file:
%
%    C:\Users\franc\source\repos\ProWave-PC\WinConsole\WinConsoleApp\saida1.csv
%
% To extend the code to different selected data or a different text file,
% generate a function instead of a script.

% Auto-generated by MATLAB on 2018/09/13 14:45:36

%% Initialize variables.
filename = 'C:\Users\franc\source\repos\ProWave-PC\WinConsole\WinConsoleApp\saida1.csv';
delimiter = ';';

%% Format for each line of text:
%   column1: double (%f)
%	column2: double (%f)
%   column3: double (%f)
%	column4: double (%f)
%   column5: double (%f)
%	column6: double (%f)
%   column7: double (%f)
% For more information, see the TEXTSCAN documentation.
formatSpec = '%f%f%f%f%f%f%f%[^\n\r]';

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
saida11 = [dataArray{1:end-1}];
%% Clear temporary variables
clearvars filename delimiter formatSpec fileID dataArray ans;
%% Plot
n = saida1(:, 7);
subplot(2, 1, 1)
plot(n, saida1(:, 1))
title('Voltage')
subplot(2, 1, 2)
plot(n, saida1(:, 2))
title('Phase')

figure
subplot(2, 1, 1)
plot(n, saida1(:, 3))
title('Filter Frequency')
subplot(2, 1, 2)
plot(n, saida1(:, 4))
title('Peak Voltage')

figure
subplot(2, 1, 1)
plot(n, saida1(:, 5))
title('Input Range')
subplot(2, 1, 2)
plot(n, saida1(:, 6))
title('EXT TRIG Frequency')