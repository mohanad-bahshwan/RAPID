function index = PreProcessbyFile(app, operationType)
            %
            % Applies pre-processing operation on images based on the selected operation type ('load', 'process', or 'updateUI').
            %
            % This function handles different types of operations:
            %   - 'load': Loads configuration data from a selected file and applies user preferences.
            %   - 'process': Processes the loaded data by applying user preferences for various image processing options.
            %   - 'updateUI': Updates the user interface based on the current user preferences.
            %
            % Inputs:
            %   operationType - String indicating the type of operation to perform. Valid values: 'load', 'process', 'updateUI'.
            %
            % Outputs:
            %   index - Integer indicating success (1) or failure (0) of the operation.
            %

            switch operationType
                case 'load'
                    % Logic for loading data
                    [FileName,PathName,Status] =  getFilePathGeneral(app, app.TFieldpreferences, {'*.mat', 'MAT-files (*.mat)'});
                    if Status == 0
                        index = 0;
                        return
                    end
                    index = 1;
                    fullfile = [PathName FileName];
                    [~,~,~] = fileparts(fullfile);
                    app.config = load(fullfile, '-mat');



                    dispWarning = uiprogressdlg(app.v10UIFigure,'Title','Waiting for user action', ...
                        'Message', 'You must close the preferences window first.', 'Indeterminate','on');


                    try
                        PreferencesUserSelection(app, app.config.activeState);
                    catch ME
                        uialert(app.v10UIFigure,'Chosen file is not a valid preferences file','Invalid File');
                        index = 0;
                        return
                    end

                    delete(dispWarning);
                    focus(app.v10UIFigure);

                case 'process'
                    index = 1;
                    prefs = app.config.prefs;
                    % Logic for processing loaded data

                    %--- Inverted Image
                    if (app.userPrefActiveState.invertedImage)
                        app.invertedImage = prefs.invertedImage;
                        app.invertSwitch.Value = 'Inverted';

                    end
                    %---Region of interest
                    if (app.userPrefActiveState.ROI)
                        app.cropBoo = prefs.cropBoo;
                        app.cropROI = prefs.cropROI;

                    end
                    %--- Image flattening
                    if (app.userPrefActiveState.imageFlattening)
                        app.imageFlatteningBoo = prefs.imageFlatteningBoo;

                    end
                    %--- Enhanced edge detection
                    if (app.userPrefActiveState.enhancedEdge)
                        app.enhancedEdgeBoo = prefs.enhancedEdgeBoo;

                    end
                    %---IMG processing vars
                    if (app.userPrefActiveState.imgProcessVals)
                        %-Shape
                        app.strelShapeFamily = prefs.strelShapeFamily;
                        app.strelShape = prefs.shape;
                        %- Combined vals
                        app.strelDimensionalParams = prefs.strelDimensionalParams;
                        %- Val1
                        app.strelDim1 = prefs.strelDim1;
                        %- Val2
                        app.strelDim2 = prefs.strelDim2;
                        %- Val3
                        app.binarizingThreshold = prefs.binarizingThreshold;
                        %---
                        [~, ~] = Initializesliders(app, prefs.shape, app.strelDim1, app.strelDim2, app.binarizingThreshold);
                        app.DropDownObjectShape.Value = app.strelShape;
                        app.morphStructElement = Createstrel(app,app.strelShape, app.strelDimensionalParams, app.strelShapeFamily);
                        Createstrel(app,app.strelShape, app.strelDimensionalParams, app.strelShapeFamily);

                    end
                    %---Scale Factor
                    if (app.userPrefActiveState.scaleFactor)
                        app.scaleDataCollection = prefs.scaleDataCollection;
                        app.unitLengthLabel.Text = prefs.scaleDataCollection.scaleUnits;
                        app.units = prefs.scaleDataCollection.scaleUnits;
                        app.scaleConvertLabel.Text = num2str(prefs.scaleDataCollection.conversionFactor);
                        app.unitConvFactor = prefs.scaleDataCollection.conversionFactor;
                        ChangeUIState(app, 'enable', app.part3header,...
                            app.text1, app.text2, app.unitLengthLabel, app.scaleConvertLabel);

                    end
                    %--- Remember choice?

                    % Export options states
                    if (app.userPrefActiveState.exportOpts)
                        app.exportOptsBoo = 1;
                        app.userPrefExportState.exporg = app.config.exportState.exporg;
                        app.userPrefExportState.expbw = app.config.exportState.expbw;
                        app.userPrefExportState.exphigh = app.config.exportState.exphigh;
                        app.userPrefExportState.explbl = app.config.exportState.explbl;
                        app.userPrefExportState.expbwbrdrclr = app.config.exportState.expbwbrdrclr;
                        app.userPrefExportState.mtlb = app.config.exportState.mtlb;
                        UpdateExportOptsCBs(app);

                    end

                case 'updateUI'
                    index = 1;
                    % Logic for updating UI
                    UpdateIconStatus(app, app.s2html1, app.userPrefActiveState.invertedImage);
                    UpdateIconStatus(app, app.s2html2, app.userPrefActiveState.ROI);
                    UpdateIconStatus(app, app.s2html3, app.userPrefActiveState.imageFlattening);
                    UpdateIconStatus(app, app.s2html4, app.userPrefActiveState.enhancedEdge);
                    UpdateIconStatus(app, app.s2html5, app.userPrefActiveState.scaleFactor);
                    UpdateIconStatus(app, app.s2html6, app.userPrefActiveState.imgProcessVals);
                    UpdateIconStatus(app, app.s2html7, app.userPrefActiveState.exportOpts);
            end


        end