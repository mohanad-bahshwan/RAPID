function loadLastPath(app)
%
% Loads the previously used folder path from a stored file.
% If no file is found, initializes the path to the current working directory.
%
% INPUTS:
%   app       - App instance
%
% OUTPUTS:
%   (none)
filePath = fullfile(prefdir, 'MyApp_LastPath.mat');
if exist(filePath, 'file')
    s = load(filePath, 'lastPath');
    app.lastPath = s.lastPath;
else
    app.lastPath = pwd;
end
end