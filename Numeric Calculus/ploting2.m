function saida5050 = ploting2(filename, startRow, endRow)
%IMPORTFILE Import numeric data from a text file as a matrix.
%   SAIDA5050 = IMPORTFILE(FILENAME) Reads data from text file FILENAME for
%   the default selection.
%
%   SAIDA5050 = IMPORTFILE(FILENAME, STARTROW, ENDROW) Reads data from rows
%   STARTROW through ENDROW of text file FILENAME.
%
% Example:
%   saida5050 = importfile('saida_50_50.csv', 1, 50);
%
%    See also TEXTSCAN.

% Auto-generated by MATLAB on 2018/09/13 12:17:37

%% Initialize variables.
delimiter = ';';
if nargin<=2
    startRow = 1;
    endRow = inf;
end

%% Format for each line of text:
%   column1: double (%f)
%	column2: double (%f)
%   column3: double (%f)
%	column4: double (%f)
%   column5: double (%f)
%	column6: double (%f)
% For more information, see the TEXTSCAN documentation.
formatSpec = '%f%f%f%f%f%f%[^\n\r]';

%% Open the text file.
fileID = fopen(filename,'r');

%% Read columns of data according to the format.
% This call is based on the structure of the file used to generate this
% code. If an error occurs for a different file, try regenerating the code
% from the Import Tool.
dataArray = textscan(fileID, formatSpec, endRow(1)-startRow(1)+1, 'Delimiter', delimiter, 'TextType', 'string', 'HeaderLines', startRow(1)-1, 'ReturnOnError', false, 'EndOfLine', '\r\n');
for block=2:length(startRow)
    frewind(fileID);
    dataArrayBlock = textscan(fileID, formatSpec, endRow(block)-startRow(block)+1, 'Delimiter', delimiter, 'TextType', 'string', 'HeaderLines', startRow(block)-1, 'ReturnOnError', false, 'EndOfLine', '\r\n');
    for col=1:length(dataArray)
        dataArray{col} = [dataArray{col};dataArrayBlock{col}];
    end
end

%% Close the text file.
fclose(fileID);

%% Post processing for unimportable data.
% No unimportable data rules were applied during the import, so no post
% processing code is included. To generate code which works for
% unimportable data, select unimportable cells in a file and regenerate the
% script.

%% Create output variable
saida5050 = [dataArray{1:end-1}];
%% Plot
n = 1:length(saida5050);
subplot(2, 1, 1)
plot(n, saida5050(:, 1))
title('Voltage')
subplot(2, 1, 2)
plot(n, saida5050(:, 2))
title('Phase')

figure
subplot(2, 1, 1)
plot(n, saida5050(:, 3))
title('Filter Frequency')
subplot(2, 1, 2)
plot(n, saida5050(:, 4))
title('Peak Voltage')

figure
subplot(2, 1, 1)
plot(n, saida5050(:, 5))
title('Input Range')
subplot(2, 1, 2)
plot(n, saida5050(:, 6))
title('EXT TRIG Frequency')