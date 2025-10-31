function saveLastPath(app)
%
% Saves the current last used folder path to a persistent file.
% Used to restore the previous directory when the app is reopened.
%
% INPUTS:
%   app       - App instance
%
% OUTPUTS:
%   (none)
try
    save(fullfile(prefdir, 'MyApp_LastPath.mat'), 'app', '-struct', 'app', 'lastPath');
catch
end
end