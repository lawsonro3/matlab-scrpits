% get the cursor min and max indicies
% get start index
fprintf('Click on the start of the decay curve\n');
dcmObj = datacursormode(gcf); set(dcmObj,'DisplayStyle','datatip','SnapToDataVertex','off','Enable','on');
pause
cInfoStart = getCursorInfo(dcmObj);
% get end index
fprintf('Click on the end of the decay curve\n');
dcmObj = datacursormode(gcf); set(dcmObj,'DisplayStyle','datatip','SnapToDataVertex','off','Enable','on');
pause
cInfoEnd = getCursorInfo(dcmObj);