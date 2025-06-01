function PreviewImportedImg(app, selection)
            %
            % Displays a preview of the selected imported image in the UI.
            % Matches the selected item in the list with the corresponding image file and shows it in the import preview area.
            %
            % Inputs:
            %   selection - The filename of the selected image to preview.
            %
            if ~isempty(app.fileNames)
                reset(app.rawImgDatastore);
                fullFilesPath = fullfile(app.pathName, app.fileNames); %construct the full path for comparison
                match = strcmp(fullFilesPath, fullfile(app.pathName, selection)); % find match of selected item with filepath
                idx = find(match == 1);
                img = readimage(app.rawImgDatastore, idx);
                imshow(img, 'Parent', app.UIimportAxes);
                reset(app.rawImgDatastore);
            else
                %do nothing
            end
        end