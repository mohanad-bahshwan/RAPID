        function [fileName, pathName, fullFiles, index] = Browse(app,ext, multiBoo)
            %
            % General function for importing files. The outputs are then
            % parsed further by another function
            % INPUTS: app (mandatory), ext (file extensions), multiBoo
            % (boolean to allow/prevent multiselection)

            [fileName,pathName, index] = uigetfile(ext,'Select a file',...
                'MultiSelect', multiBoo);
            fullFiles = fullfile(pathName,fileName);
            app.fileNames = fileName;
            app.pathName = pathName;
        end