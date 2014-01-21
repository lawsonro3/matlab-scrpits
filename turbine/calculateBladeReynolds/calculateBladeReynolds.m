############ incomplete file - does not work


% This code calculates the Reynolds number of a blade designed using
% HARP_OPT

% Specify the blade data file
dataFile = 'F:\Dropbox\NREL\Blade Design for SAFL Test\HarpOptDesign\Output_Files\SAFL_Test_Blade_v7_SmallRtChord_bigTipChord\SAFL_Test_Blade_v7_SmallRtChord_bigTipChord_Output.dat';

% Input parameters
V = 1.5; % flow velocity
nu = 1e-6;
tsrMin = 3;
tsrMax = 10;
tsrStep = .1;
tsr =  tsrMin:tsrStep:tsrMax;

% Read the data
blade = readHarpOptData(dataFile);

% Create the meshgrid of the data
[R,TSR] = meshgrid(blade.r,tsr);