fig_prop.figSize = 750;
scrsz = get(0,'ScreenSize');
set(0,'DefaultFigureColor', 'White', ...
'DefaultFigurePaperType', 'a4letter', ...
'DefaultAxesColor', 'white', ...
'DefaultAxesDrawmode', 'fast', ...
'DefaultAxesFontUnits', 'points', ...
'DefaultAxesFontSize', 20, ...
'DefaultAxesFontAngle', 'Normal', ... % 'Italic'
'DefaultAxesFontName', 'Times', ...
'DefaultAxesGridLineStyle', ':', ...
'DefaultAxesInterruptible', 'on', ...
'DefaultAxesLayer', 'Bottom', ...
'DefaultAxesNextPlot', 'replace', ...
'DefaultAxesUnits', 'normalized', ...
'DefaultAxesXcolor', [0, 0, 0], ...
'DefaultAxesYcolor', [0, 0, 0], ...
'DefaultAxesZcolor', [0, 0, 0], ...
'DefaultAxesVisible', 'on', ...
'DefaultLineColor', 'Red', ...
'DefaultLineLineStyle', '-', ...
'DefaultLineLineWidth', 3, ...
'DefaultLineMarker', 'none', ...
'DefaultLineMarkerSize', 12, ...
'DefaultTextColor', [0, 0, 0], ...
'DefaultTextFontUnits', 'Points', ...
'DefaultTextFontSize', 18, ...
'DefaultTextFontName', 'Times', ...
'DefaultTextVerticalAlignment', 'middle', ...
'DefaultTextHorizontalAlignment', 'left', ...
'DefaultFigurePosition', [scrsz(3)*.1 scrsz(4)*.1 scrsz(3)*.1+fig_prop.figSize scrsz(4)*.1+fig_prop.figSize]);
fig_prop.plotColors = ['k' 'r' 'g' 'b' 'c' 'm' 'y' 'k' 'r' 'g' 'b' 'c' 'm' 'y' 'k' 'r' 'g' 'b' 'c' 'm' 'y'];
fig_prop.plotLinType{1} = '-';
fig_prop.plotLinType{end+1} = '--';
fig_prop.plotLinType{end+1} = '-.';
fig_prop.plotLinType{end+1} = '-';
fig_prop.plotLinType{end+1} = '--';
fig_prop.plotLinType{end+1} = '-.';
fig_prop.plotLinType{end+1} = '-';
fig_prop.plotLinType{end+1} = '--';
fig_prop.plotLinType{end+1} = '-.';
fig_prop.plotLinType{end+1} = '-';
fig_prop.plotLinType{end+1} = '--';
fig_prop.plotLinType{end+1} = '-.';
fig_prop.plotLinType{end+1} = '-';
fig_prop.plotLinType{end+1} = '--';
fig_prop.plotLinType{end+1} = '-.';
fig_prop.plotLinType{end+1} = '-';
fig_prop.plotLinType{end+1} = '--';
fig_prop.plotLinType{end+1} = '-.';
fig_prop.plotLinType{end+1} = '-';

