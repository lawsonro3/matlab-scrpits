% This m-file reads the instrumentation package data from the SWAY turbine
% and converts the units to metric M-K-S units.

function [data] = SWAYDataRead(fname);
temp = importdata(fname);
sway = temp.data;
clear data

data.roll.val = sway(:,1)/100; % convert to deg
data.roll.unit = 'degrees';

data.pitch.val = sway(:,2)/100; % convert to deg
data.pitch.unit = 'degrees';

data.heave.val = sway(:,3)/100; % convert to m
data.heave.unit = 'meters';

data.deltaX.val = sway(:,4)/100; % convert to m
data.deltaX.unit = 'meters';

data.detlaY.val = sway(:,5)/100; % convert to m
data.detlaY.unit = 'meters';

data.deltaZ.val = sway(:,6)/100; % convert to m
data.deltaZ.unit = 'meters';

data.angularRateX.val = sway(:,7)/100; % convert to deg/s
data.angularRateX.unit = 'degrees/second';

data.angularRateY.val = sway(:,8)/100; % convert to deg/s
data.angularRateY.unit = 'degrees/second';

data.angularRateZ.val = sway(:,9)/100; % convert to deg/s
data.angularRateZ.unit = 'degrees/second';

data.accelerationX.val = sway(:,10)/1000; % convert to m/s
data.accelerationX.unit = 'meters/seconsd^2';

data.accelerationY.val = sway(:,11)/1000; % convert to m/s
data.accelerationY.unit = 'meters/seconsd^2';

data.accelerationZ.val = sway(:,12)/1000; % convert to m/s
data.accelerationZ.unit = 'meters/seconsd^2';

data.status.val = sway(:,13);
data.status.unit = 'unknown';

data.imuTemperature.val = sway(:,14)/100; % convert to deg C
data.imuTemperature.unit = 'Celicus';

data.externalSpeed.val = sway(:,15)/100; % convert to m/s
data.externalSpeed.unit = 'meters/seconsd^2';

data.heading.val = sway(:,16)/10 - 90; % convert to m/s
data.heading.unit = 'degrees';


for i = 1:length(sway(:,17))
    time.temp = 0;
    time.all = num2str(sway(i,17));
    time.temp = time.temp + str2num(time.all(end-1:end))/100;
    time.temp = time.temp + str2num(time.all(end-3:end-2));
    if length(time.all) == 5;
        time.temp = time.temp + str2num(time.all(end-4))*60;
    elseif length(time.all) == 6;
        time.temp = time.temp + str2num(time.all(end-5:end-4))*60;
    end
    if length(time.all) == 7
        time.temp = time.temp + str2num(time.all(end-6))*3600;
    elseif length(time.all) == 8
        time.temp = time.temp + str2num(time.all(end-7:end-6))*3600;
    end
    data.time.val(1,i) = time.temp;
end
data.time.val = data.time.val';
data.time.unit = 'seconds';

data.surge.val = sway(:,18)/100;
data.surge.unit = 'meters';

data.heaveRate.val = sway(:,19);
data.heaveRate.unit = 'meters';

data.untitled19.val = sway(:,20);
data.untitled19.unit = 'unknown';