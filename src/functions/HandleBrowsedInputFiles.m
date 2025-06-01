        function error = HandleBrowsedInputFiles(app, fullFiles, index, event)
            %
            % This function determines whether the selected files are single or multiple,
            % validates the file types (e.g., images or .mat files), and processes them
            % accordingly. For image files, it verifies size compatibility and adjusts
            % sizes if necessary. If successful, the processed files are stored in
            % the app's cleaned datastore, ready for further use.
            % INPUTS:
            %   app      - Reference to the app instance
            %   fullFiles - Full path of selected files
            %   index    - Index of selection (0 if no file selected)
            %   event    - UI event triggering the function
            % OUTPUTS:
            %   error    - Error flag (0: success, 1: failure)
            error = 0;
            if ~isequal(index,0)
                % Perform necessary checks depending on which browse button was
                % selected
                if not(iscell(fullFiles)) % CONDITION 1 (NOT CELL)
                    numFiles = 1;
                    app.inputDatastoreProperties.numFiles = numFiles;
                    [~,~,fileTypes] = fileparts(fullFiles);
                    if not(strcmp(fileTypes,'.mat')) % CONDITION 1.1 (NOT CELL IS/ARE IMAGES)
                        app.rawImgDatastore = imageDatastore(fullFiles);
                        app.cleanedDatstore = imageDatastore(fullFiles);
                        app.cleanedDatstore = transform(app.cleanedDatstore, @(x) Convert2RGB(app,x));

                    else % CONDITION 1.2 (NOT CELL; BUT IS .MAT FILE)
                        app.cleanedDatstore = fileDatastore(fullFiles,'ReadFcn',@load);

                    end
                    app.inputDatastoreProperties.fileTypes = fileTypes;
                    app.inputDatastoreProperties.matchingSize = true;
                else % CONDITION 2 (IS CELL)
                    numFiles = size(fullFiles(:),1);
                    app.inputDatastoreProperties.numFiles = numFiles;
                    [~,~,fileTypes] = fileparts(fullFiles);
                    app.inputDatastoreProperties.fileTypes = fileTypes;
                    if strcmp(cell2mat(unique(fileTypes)),'.mat') % CONDITION 2.1 (IS CELL IS MAT)
                        msgbox('cannot import more than one .mat file')
                        error = 1;
                        return
                    else % CONDITION 2.2 (IS CELL IS/ARE IMAGE(S))
                        % now read size of all images
                        app.rawImgDatastore = imageDatastore(fullFiles);
                        sizeTbl = zeros(numFiles,2);
                        for i=1:length(app.rawImgDatastore.Files)
                            tempds = app.rawImgDatastore.read;
                            sizeTbl(i,:) = [size(tempds,1), size(tempds,2)];
                            app.inputDatastoreProperties.minCol = min(sizeTbl(:,2));
                            app.inputDatastoreProperties.minRow = min(sizeTbl(:,1));
                        end

                        % Compare Widths & Heights of imported images;

                        %Sizes are equal; proceed normally to imprt
                        if (size(unique(sizeTbl(:,1)),1) == 1) && (size(unique(sizeTbl(:,2)),1) == 1)
                            app.inputDatastoreProperties.originallyMatchingSize = true;
                            app.cleanedDatstore = app.rawImgDatastore;
                            %disp('matching!');
                        else
                            %Sizes are not equal; prompt user to crop the
                            %images or cancel operation.
                            app.inputDatastoreProperties.originallyMatchingSize = false;
                            focus(app.v10UIFigure);
                            selection = uiconfirm(app.v10UIFigure, ...
                                "Your images do not match in size (height & width). To have identical size, the processed images will be cropped to the same size of the smallest imported image. Continue?","Notice", ...
                                "Icon","warning");

                            if strcmp(selection, 'Cancel'); return; end

                            app.cleanedDatstore = Uniformcrop(app,app.rawImgDatastore, app.inputDatastoreProperties.minCol, app.inputDatastoreProperties.minRow);
                            %disp('non-matching, a new datastore, cropped to size has been created.');
                        end

                    end
                    app.cleanedDatstore = transform(app.cleanedDatstore, @(x) Convert2RGB(app,x));
                end
                app.ButDeleteFilesStep1.Enable = 'on';
            else
                error = 1;
                app.cleanedDatstore = [];
                app.inputDatastoreProperties = [];
                TempButtonEnable(app, event.Source, 'on');

            end

        end