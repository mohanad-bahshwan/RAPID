classdef RAPID_v1_OpenSourceCode < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        v10UIFigure                     matlab.ui.Figure
        HomeMenu                        matlab.ui.container.Menu
        ImportMenu                      matlab.ui.container.Menu
        PreprocessMenu                  matlab.ui.container.Menu
        CalibrateMenu                   matlab.ui.container.Menu
        SegmentMenu                     matlab.ui.container.Menu
        PreviewMenu                     matlab.ui.container.Menu
        ExportMenu                      matlab.ui.container.Menu
        AboutMenu                       matlab.ui.container.Menu
        Label_3                         matlab.ui.control.Label
        STEP1Panel                      matlab.ui.container.Panel
        TabGroup4                       matlab.ui.container.TabGroup
        homeTab                         matlab.ui.container.Tab
        HTML2_11                        matlab.ui.control.HTML
        STARTButton                     matlab.ui.control.Button
        Image                           matlab.ui.control.Image
        step1Tab                        matlab.ui.container.Tab
        HTML12_2                        matlab.ui.control.HTML
        HTML2_5                         matlab.ui.control.HTML
        ButDeleteFilesStep1             matlab.ui.control.Button
        PreviousButton_9                matlab.ui.control.Button
        s1PthLbl                        matlab.ui.control.Label
        PathLabel                       matlab.ui.control.Label
        NxtButStep1                     matlab.ui.control.Button
        ButBrowseMain                   matlab.ui.control.Button
        ListBox_2                       matlab.ui.control.ListBox
        ImportedimagesLabel             matlab.ui.control.Label
        ClickbelowtoloadimagesforprocessingLabel  matlab.ui.control.Label
        ImageimportLabel                matlab.ui.control.Label
        UIimportAxes                    matlab.ui.control.UIAxes
        step2Tab                        matlab.ui.container.Tab
        HTML14                          matlab.ui.control.HTML
        HTML2_6                         matlab.ui.control.HTML
        NxtButStep2                     matlab.ui.control.Button
        PreviousButton_10               matlab.ui.control.Button
        Panel_11                        matlab.ui.container.Panel
        s2html7                         matlab.ui.control.HTML
        s2html6                         matlab.ui.control.HTML
        s2html5                         matlab.ui.control.HTML
        s2html4                         matlab.ui.control.HTML
        s2html3                         matlab.ui.control.HTML
        s2html2                         matlab.ui.control.HTML
        s2html1                         matlab.ui.control.HTML
        PreferencesfileuploadLabel      matlab.ui.control.Label
        ExportoptionsLabel              matlab.ui.control.Label
        UnitscalingLabel                matlab.ui.control.Label
        MorphologicalLabel              matlab.ui.control.Label
        IUCLabel                        matlab.ui.control.Label
        EEDLabel                        matlab.ui.control.Label
        ROILabel                        matlab.ui.control.Label
        InvertimageLabel                matlab.ui.control.Label
        ButClearPreferences             matlab.ui.control.Button
        TFieldpreferences               matlab.ui.control.EditField
        ButBrwosePreferences            matlab.ui.control.Button
        HTML2                           matlab.ui.control.HTML
        ChooseapreprocessingmethodLabel  matlab.ui.control.Label
        ImagepreprocessingLabel         matlab.ui.control.Label
        preProcessingSelection          matlab.ui.container.ButtonGroup
        PreferencesfileuploadButton     matlab.ui.control.RadioButton
        ManualselectionButton           matlab.ui.control.RadioButton
        Panel_10                        matlab.ui.container.Panel
        ManualselectionLabel            matlab.ui.control.Label
        RegionofInterestROICheckBox     matlab.ui.control.CheckBox
        EnhancededgedetectionEEDCheckBox  matlab.ui.control.CheckBox
        ImageuniformitycorrectionIUCCheckBox  matlab.ui.control.CheckBox
        step3Tab                        matlab.ui.container.Tab
        HTML15                          matlab.ui.control.HTML
        HTML13                          matlab.ui.control.HTML
        HTML2_7                         matlab.ui.control.HTML
        CalibGuidePanel                 matlab.ui.container.Panel
        Label_2                         matlab.ui.control.Label
        Label                           matlab.ui.control.Label
        HOLDSHIFTKEYLabel               matlab.ui.control.Label
        HOLDLCLICKLabel                 matlab.ui.control.Label
        HOLDLCLICKLabel_2               matlab.ui.control.Label
        MovinglineLabel                 matlab.ui.control.Label
        HorizontalfixLabel              matlab.ui.control.Label
        ResizinglineLabel               matlab.ui.control.Label
        CalibFlashingHTML               matlab.ui.control.HTML
        CalibArrowHTML                  matlab.ui.control.HTML
        CalibCnfrmHTML                  matlab.ui.control.HTML
        ScaleImgTB                      matlab.ui.control.EditField
        HTML2_4                         matlab.ui.control.HTML
        Label2_sv                       matlab.ui.control.Label
        Label2_svt                      matlab.ui.control.Label
        Label2_su                       matlab.ui.control.Label
        Label2_sut                      matlab.ui.control.Label
        Label2_pl                       matlab.ui.control.Label
        Label2_plt                      matlab.ui.control.Label
        Label2_lp                       matlab.ui.control.Label
        Label2_lpt                      matlab.ui.control.Label
        Label2_cf                       matlab.ui.control.Label
        Label2_cft                      matlab.ui.control.Label
        ConvFactorTempLabel             matlab.ui.control.Label
        ConvFactorLabel                 matlab.ui.control.Label
        LinePos1TempLabel_2             matlab.ui.control.Label
        LinePos1Label_2                 matlab.ui.control.Label
        PixelLineLengthTempLabel_2      matlab.ui.control.Label
        PixelLineLengthLabel_2          matlab.ui.control.Label
        scaleUnitsTempLabel             matlab.ui.control.Label
        scaleUnitsLabel                 matlab.ui.control.Label
        scaleValTempLabel               matlab.ui.control.Label
        scaleValLabel                   matlab.ui.control.Label
        pxLabel                         matlab.ui.control.Label
        NxtButStep3                     matlab.ui.control.Button
        PreviousButton_11               matlab.ui.control.Button
        ButClearAdjustScale             matlab.ui.control.Button
        ButBrowseScale                  matlab.ui.control.Button
        unitLengthLabel                 matlab.ui.control.Label
        text1                           matlab.ui.control.Label
        scaleConvertLabel               matlab.ui.control.Label
        text2                           matlab.ui.control.Label
        part3header                     matlab.ui.control.Label
        CalibConfirm                    matlab.ui.control.Button
        efCalibInput                    matlab.ui.control.NumericEditField
        DropDownCalib                   matlab.ui.control.DropDown
        ImagescalebarvalueandunitLabel  matlab.ui.control.Label
        BrowseyourcomputerforscaleimageLabel  matlab.ui.control.Label
        UnitcalibrationLabel            matlab.ui.control.Label
        UIscaleAxes                     matlab.ui.control.UIAxes
        step4Tab                        matlab.ui.container.Tab
        HTML12_5                        matlab.ui.control.HTML
        HTML2_8                         matlab.ui.control.HTML
        NxtButStep4                     matlab.ui.control.Button
        PreviousButton_12               matlab.ui.control.Button
        SliderVal3                      matlab.ui.control.Slider
        Lblval3                         matlab.ui.control.Label
        TFieldVal3                      matlab.ui.control.EditField
        Panel_6                         matlab.ui.container.Panel
        SliderVal2                      matlab.ui.control.Slider
        LblVal2                         matlab.ui.control.Label
        TFieldVal2                      matlab.ui.control.EditField
        Panel_7                         matlab.ui.container.Panel
        SliderVal1                      matlab.ui.control.Slider
        LblVal1                         matlab.ui.control.Label
        TFieldVal1                      matlab.ui.control.EditField
        Panel_8                         matlab.ui.container.Panel
        ObjectshapeLabel                matlab.ui.control.Label
        DropDownObjectShape             matlab.ui.control.DropDown
        SegmentationtuningmorphologicalthersholdingparametersLabel  matlab.ui.control.Label
        invertSwitch                    matlab.ui.control.RockerSwitch
        InvertblackwhiteLabel           matlab.ui.control.Label
        SegTuningFigure                 matlab.ui.control.Image
        FilenameLabelval                matlab.ui.control.Label
        FilenameLabel                   matlab.ui.control.Label
        SegTuningSpinner                matlab.ui.control.Spinner
        ImagenumberLabel                matlab.ui.control.Label
        ObjectsLabel                    matlab.ui.control.Label
        BackgroundLabel                 matlab.ui.control.Label
        SegmentationtuningLabel         matlab.ui.control.Label
        UIAxes_2                        matlab.ui.control.UIAxes
        UIAxes                          matlab.ui.control.UIAxes
        step5Tab                        matlab.ui.container.Tab
        HTML12_6                        matlab.ui.control.HTML
        HTML2_9                         matlab.ui.control.HTML
        ShowimageButton                 matlab.ui.control.StateButton
        NxtButStep5                     matlab.ui.control.Button
        PreviousButton_13               matlab.ui.control.Button
        PerimeterLabel                  matlab.ui.control.Label
        Perimeterprev                   matlab.ui.control.Label
        ExtentLabel                     matlab.ui.control.Label
        Extentprev                      matlab.ui.control.Label
        EulernumberLabel                matlab.ui.control.Label
        Eulernumberprev                 matlab.ui.control.Label
        EquivdiameterLabel              matlab.ui.control.Label
        SolidityLabel                   matlab.ui.control.Label
        CircularityLabel                matlab.ui.control.Label
        Equivdiameterprev               matlab.ui.control.Label
        Solidityprev                    matlab.ui.control.Label
        Circularityprev                 matlab.ui.control.Label
        Areaprev                        matlab.ui.control.Label
        AreaLabel                       matlab.ui.control.Label
        ConvexareaLabel                 matlab.ui.control.Label
        Convexareaprev                  matlab.ui.control.Label
        CentroidYposprev                matlab.ui.control.Label
        CentroidYposLabel               matlab.ui.control.Label
        CentroidXposprev                matlab.ui.control.Label
        Eccentricityprev                matlab.ui.control.Label
        Orientationprev                 matlab.ui.control.Label
        Minoraxislengthprev             matlab.ui.control.Label
        Majoraxislengthprev             matlab.ui.control.Label
        Filledareaprev                  matlab.ui.control.Label
        EccentricityLabel               matlab.ui.control.Label
        CentroidXposLabel               matlab.ui.control.Label
        MinoraxislengthLabel            matlab.ui.control.Label
        OrientationLabel                matlab.ui.control.Label
        MajoraxislengthLabel            matlab.ui.control.Label
        FilledareaLabel                 matlab.ui.control.Label
        ButObjectLabeling               matlab.ui.control.StateButton
        SegPreviewSpinner               matlab.ui.control.Spinner
        ImagenumberSpinnerLabel         matlab.ui.control.Label
        objNumLabel_2                   matlab.ui.control.Label
        objNumLabel                     matlab.ui.control.Label
        SegPreviewFigure                matlab.ui.control.Image
        TextArea_60                     matlab.ui.control.TextArea
        PropertiesofselectedobjectLabel  matlab.ui.control.Label
        SegmentationpreviewLabel        matlab.ui.control.Label
        step6Tab                        matlab.ui.container.Tab
        HTML16                          matlab.ui.control.HTML
        savedLabel                      matlab.ui.control.Label
        SaveButton                      matlab.ui.control.Button
        HTML2_10                        matlab.ui.control.HTML
        PreviousButton_14               matlab.ui.control.Button
        HTML2_3                         matlab.ui.control.HTML
        selectallcb                     matlab.ui.control.CheckBox
        deselectallcb                   matlab.ui.control.CheckBox
        mtlbcb                          matlab.ui.control.CheckBox
        expbwbrdrclrcb                  matlab.ui.control.CheckBox
        explblcb                        matlab.ui.control.CheckBox
        exphighcb                       matlab.ui.control.CheckBox
        expbwcb                         matlab.ui.control.CheckBox
        exporgcb                        matlab.ui.control.CheckBox
        HTML2_2                         matlab.ui.control.HTML
        SelectfiletypesyouwanttoexportLabel  matlab.ui.control.Label
        ExportoptionsLabel_2            matlab.ui.control.Label
        aboutTab                        matlab.ui.container.Tab
        citation                        matlab.ui.control.Hyperlink
        MohanadBahshwanAllRightsReservedLabel  matlab.ui.control.Label
        PleaserefertotheoriginallypublishedworkLabel  matlab.ui.control.Label
        AboutLabel                      matlab.ui.control.Label
        CopyContextMenu                 matlab.ui.container.ContextMenu
        CopyMenu                        matlab.ui.container.Menu
    end

    properties (Access = private)
        %---- PATH-related variables
        fileNames, pathName
        %---- DATASTORES
        cleanedDatstore, rawImgDatastore
        greyScaleDatastore, binarizedDatastore, borderClearBinarizedDatastore
        inputDatastoreProperties = struct() % Datastore properties
        %---- SE VARS
        morphStructElement, strelShape, strelDimensionalParams
        strelShapeFamily = 2 %1 or 2, depending on the number of vars the shape takes
        %---- SLIDER VALUES
        strelDim1 = 1, strelDim2 = 4, binarizingThreshold = .45
        %---- PREVIEW WINDOW
        segPreviewSpinnerCounter = 1
        segTuningSpinnerCounter = 1
        extractedDatastoreImage
        invertedImage = false % invert button pressed
        detachedSegTuningFig, detachedSegTuningFigData
        %--- Interactive figure
        detachedSegPreviewFig, detachedSegPreviewAx, interactiveImg, % Components of interactive figure
        interactiveImgData, interactiveImgIDs, interactiveImgLabels
        detachedSegPreviewFigPos
        %--- Cropping function
        cropROI
        %--- Image Scale adjustment
        scaleUIFig
        units = 'px'; unitConvFactor = 1;
        %--- Detailed object
        selectedObjID, selectionBoundingBox
        %--- DATA
        segmentationDataStructs
        %--- Advanced options variables
        preProcessMethod = 'manual', prevSettingsBoo = 0, cropBoo = 0, imageFlatteningBoo = 0, enhancedEdgeBoo = 0
        %--- Time
        prevTimeStamp = char(datetime('Now', 'Format', 'HH:mm:ss.SSS')) % for performance
        %--- Export preferences
        exportOptsBoo = 0
        config = struct();
        %--- Menu items
        lastSelectedTab;
        saveDialog;

    end

    properties (Access = public)
        scaleDataCollection = scaleFigCollection; % external class 
        activeState = struct();
        userPrefActiveState = struct();
        exportState = struct();
        userPrefExportState = struct();
    end

    methods (Access = private)

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


        function [fileName,pathName, status] = getFilePathGeneral(~, TargetTextField, FileExtensionConfig)
            %
            % Prompts the user to select a file and updates the target text field with the selected file's path.
            % INPUTS:
            %   ~                   - (unused) placeholder for app
            %   TargetTextField      - UI component (e.g., text field) to display the file path.
            %   FileExtensionConfig  - File extension filter (e.g., '*.txt') for file selection.
            %
            % OUTPUTS:
            %   fileName             - Name of the selected file.
            %   pathName             - Path to the selected file.
            %   status               - Status indicator (1 if a file is selected, 0 if canceled).
            [fileName,pathName,status] = uigetfile(FileExtensionConfig,'Select a file',...
                'MultiSelect', 'off');
            if isequal(status,0) && isequal(fileName,0)
                % Do nothing
            elseif isequal(status,1)
                TargetTextField.Value = [pathName fileName];
            end
        end


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

        function ds = Uniformcrop(~,rawImgDatastore, mincol, minrow)
            %
            % Performs uniform cropping to a series of images contained
            %within an imagedatastore
            %INPUTS:
            % rawImgDatastore: raw datastore (user input)
            % mincol: minimum width of all images in datastore
            % minrow: minimum height of all images in datastore
            %OUTPUT:
            % ds: transformed datastore
            ds = transform(rawImgDatastore,@(x) imcrop(x,[0 0 mincol minrow]));

        end

        function imgRGB = Convert2RGB(~,imgIn)
            %
            % Converts image from grayscale/BW to RGB
            %INPUTS:
            %imgIn: input image (BW, grayscale, or RGB)
            [~, ~, numberOfColorChannels] = size(imgIn);
            % Check if imagedatastore is grayscale/BW (channels == 1)
            if numberOfColorChannels == 1
                % if yes, then convert to RGB
                imgRGB = cat(3, imgIn, imgIn, imgIn);
            else
                % dont do anything
                imgRGB = imgIn;
            end
        end

        function [objectShape, vals] = Initializesliders(app, objectShape, varargin)
            %
            % Initializes the morphological UI-sliders based on some
            %arbitrary shape input (and optionally an additional size
            %and threshhold parameters for that shape)
            % INPUTS:
            %objectShape: char array ('disk', 'square',
            %'diamond','octagon','line','rectangle','','','','','','')
            %varargin{1}: main size parameter
            %varargin{2}: additional size parameter (for specific shapes
            %only)
            %varargin{3}: threshholding value

            vals = [];
            if strcmp(objectShape, 'disk'); objectShape = 'disk (default)';end

            switch objectShape
                %---------------1 value1
                case 'square'
                    container = {[1 50], [0 1], 'off', 'off', 'off', ...
                        'Edge length', '', 0:0.1:1, 0:0.02:1};
                    vals{1} = 1;
                    vals{2} = 0;
                    app.strelShapeFamily = 1;
                case 'diamond'
                    container = {[1 50], [0 1], 'off', 'off', 'off', ...
                        'Radius', '', 0:0.1:1, 0:0.02:1};
                    vals{1} = 1;
                    vals{2} = 0;
                    app.strelShapeFamily = 1;
                case 'octagon'
                    container = {[1 50], [0 1], 'off', 'off', 'off', ...
                        'Radius', '', 0:0.1:1, 0:0.02:1};
                    vals{1} = 3;
                    vals{2} = 0;
                    app.strelShapeFamily = 1;

                    %---------------2 values
                case 'disk (default)'
                    container = {[1 50], [0 8], 'on', 'on', 'on', ...
                        'Radius', 'Approximation', [0 4 6 8], [0 4 6 8]};
                    vals{1} = 1;
                    vals{2} = 4;
                    app.strelShapeFamily = 2;
                case 'line'
                    container = {[1 50], [0 180], 'on', 'on', 'on', ...
                        'Length', 'Angle (degrees)', 0:15:180, 0:5:180};
                    vals{1} = 1;
                    vals{2} = 0;
                    app.strelShapeFamily = 2;
                case 'rectangle'
                    container = {[1 50], [0 50], 'on', 'on', 'on', ...
                        'Height', 'Width', 0:5:50, 0:1:50};
                    vals{1} = 1;
                    vals{2} = 4;
                    app.strelShapeFamily = 2;


            end
            app.SliderVal1.MajorTicks = 0:5:50;
            app.SliderVal1.MinorTicks = 0:1:50;
            app.SliderVal3.Value = 0.45;

            % This if statement takes care of previous preferences; If there
            % are previous preferences, then the script below takes those
            % previous preferences into account
            if ~(isempty(varargin))

                if (app.strelShapeFamily == 1)
                    % previous preferences has a shape with 1 size parameter
                    vals{1} = varargin{1};
                    vals{2} = 0;
                    app.SliderVal2.Value = vals{2};
                    app.SliderVal3.Value = varargin{3};
                else
                    % previous preferences has a shape with 2 size parameters
                    vals{1} = varargin{1};
                    vals{2} = varargin{2};
                    app.SliderVal3.Value = varargin{3};
                end
            else
                % normal initialization (no previous preferences)
            end

            %UI-related
            app.SliderVal1.Value = vals{1};
            app.TFieldVal1.Value = num2str(vals{1});
            if size(vals,2) > 1
                app.SliderVal1.Limits = container{1};
                app.SliderVal2.Limits = container{2};
                app.SliderVal2.Visible = container{3};
                app.TFieldVal2.Visible = container{4};
                app.LblVal2.Visible = container{5};
                app.LblVal2.Text = container{7};
                app.SliderVal2.Value = vals{2};
                app.TFieldVal2.Value = num2str(vals{2});

            end
            app.TFieldVal3.Value = num2str(app.SliderVal3.Value);
            app.SliderVal1.Limits = container{1};
            app.SliderVal2.Limits = container{2};
            app.SliderVal2.Visible = container{3};
            app.TFieldVal2.Visible = container{4};
            app.LblVal2.Visible = container{5};
            app.LblVal1.Text = container{6};
            app.LblVal2.Text = container{7};
            app.SliderVal2.MajorTicks = container{8};
            app.SliderVal2.MinorTicks = container{9};
        end

        function Handleimportbuttonpermission(app,error)
            %
            %Enables or disables the 'next' button depending on the input
            %INPUTS:
            %error: a boolean (0 or 1)
            if not(error)
                app.NxtButStep1.Enable = 'on';
                app.NxtButStep1.Tooltip = '';
            else
                app.NxtButStep1.Enable = 'off';
                app.NxtButStep1.Tooltip = 'You must import images first';
            end
        end


        function counter = CheckCounterExtrema(app, counter)
            %
            % Adjusts the counter value to ensure it remains within valid bounds.
            %
            % INPUTS:
            %   app      - Reference to the app instance, used to access properties.
            %   counter  - Current counter value to be checked and adjusted.
            %
            % OUTPUTS:
            %   counter  - Adjusted counter value, constrained to the range [1, numFiles],
            %              where numFiles is the total number of files in the input datastore.
            if (counter < 1)
                counter = 1;
            elseif (counter > app.inputDatastoreProperties.numFiles)
                counter = app.inputDatastoreProperties.numFiles;
            end

        end


        function [imgpreview, imgbw]= ProcessSingleImg(app, SE, imgNumber)
            %
            % Reads and processes a single image from the datastore for preview purposes,
            % and applies optional preprocessing if necessary.
            %
            % INPUTS:
            %   app        - Reference to the app instance, used to access properties and configurations.
            %   SE         - Structuring element for morphological operations.
            %   imgNumber  - Index of the image to process from the datastore.
            %
            % OUTPUTS:
            %   imgpreview - Processed preview image combining grayscale and binary representations.
            %   imgbw      - Binary image after applying preprocessing steps and binarization.
            %
            app.extractedDatastoreImage = readimage(app.rawImgDatastore,imgNumber);
            %Below 'if statement' only activates if 'Region of interest (CROP) is ON'
            if app.cropBoo == 1 ; app.extractedDatastoreImage = imcrop(app.extractedDatastoreImage, app.cropROI); end
            %Below 'if statement' only activates if 'ImageFlattening is ON'
            if app.imageFlatteningBoo == 1; app.extractedDatastoreImage = imflatfield(app.extractedDatastoreImage,25); end
            imggs = im2gray(app.extractedDatastoreImage);
            if app.invertedImage; imggs = imcomplement(imggs);end
            imgop = imopen(imggs, SE);
            imgbw = imbinarize(imgop, app.binarizingThreshold);
            %Below 'if statement' only activates if 'ENHANCED EDGE DETECTION is ON'
            if app.enhancedEdgeBoo == 1; imgbw = ImageEnhanceEdge(app, imgbw); end
            imgpreview = imfuse(imggs,imgbw,'falsecolor');
        end


        function updatedValue = HandleSpecialSliders(~,sliderValue,SE, sliderType)
            %
            % Adjusts slider values based on the specified structuring element and slider type.
            %   - For 'disk': Adjusts slider values to discrete levels (0, 4, 6, or 8) unless the slider type is 'strelDim1'.
            %   - For 'octagon': Rounds the slider value up to the nearest multiple of 3.
            %   - For other structuring elements: Returns the slider value unchanged.
            % INPUTS:
            %   sliderValue - Current value of the slider to be processed.
            %   SE          - Structuring element shape ('disk', 'octagon', or other).
            %   sliderType  - Type of slider ('strelDim1' or other).
            %
            % OUTPUTS:
            %   updatedValue - Adjusted slider value based on specific rules for the structuring element.

            switch SE
                case 'disk'
                    if not(strcmp(sliderType, 'strelDim1'))
                        if (sliderValue>=0) && (sliderValue<=2)
                            updatedValue = 0;
                        elseif (sliderValue>2) && (sliderValue <= 4.5)
                            updatedValue = 4;
                        elseif (sliderValue > 4.5) && (sliderValue <= 6.5)
                            updatedValue = 6;
                        else
                            updatedValue = 8;
                        end
                    else
                        updatedValue = sliderValue;
                    end
                case 'octagon'
                    if rem(sliderValue,3) > 0
                        updatedValue = sliderValue + (3 - rem(sliderValue,3));
                    else
                        updatedValue = sliderValue;
                    end

                otherwise
                    updatedValue = sliderValue;
            end
        end



        function ApplySegmentationSequence(app)
            %
            % This function performs the complete sequence requried to move
            %from the 'cleaned' datastore image(s) all the way to the final
            %image segmentation step.

            %STEP1: Convert images to grayscale
            app.greyScaleDatastore = transform(app.cleanedDatstore, @(x) im2gray(x));
            %STEP2: Apply optional pre-processing conditions (ROI-based CROP)
            if app.cropBoo == 1; app.greyScaleDatastore = transform(app.greyScaleDatastore, @(x) imcrop(x, app.cropROI)); end
            %STEP3: Apply optional pre-processing conditions (Image flattening)
            if app.imageFlatteningBoo == 1; app.greyScaleDatastore = transform(app.greyScaleDatastore, @(x) imflatfield(x, 25)); end
            %STEP4: Invert or uninvert image (based on user choice)
            if app.invertedImage == 1; app.greyScaleDatastore = transform(app.greyScaleDatastore, @(x) imcomplement(x)); end
            %STEP5: Morphologically open the image using the structural elements
            app.binarizedDatastore = transform(app.greyScaleDatastore, @(x) imopen(x, app.morphStructElement));
            %STEP6: Binarize the image (convert them to black and white)
            app.binarizedDatastore = transform(app.binarizedDatastore, @(x) imbinarize(x, app.binarizingThreshold));
            %STEP7: Retain a temporary binarized image in which the borders have
            %been cleared (i.e., remove any objects that touches the border)
            %(for image export purposes)
            app.borderClearBinarizedDatastore = transform(app.binarizedDatastore, @(x) SplitBorderImages(app,x));
            %STEP8: Apply optional edge enhancement to the object detection
            if app.enhancedEdgeBoo == 1; app.binarizedDatastore = transform(app.binarizedDatastore, @(x) ImageEnhanceEdge(app, x)); end
            %STEP9: Separate border-touching objects from
            %non-border-touching objects, and add a boolean value to
            %distinguish each
            app.segmentationDataStructs = transform(app.binarizedDatastore, @(x) SplitBorderStats(app, x));
            %STEP10: Perform optional unit conversion from the default 'pixels' units
            app.segmentationDataStructs = transform(app.segmentationDataStructs, @(x) ConvertPx2UnitLength(app, x, app.unitConvFactor));
            %STEP11: Assign IDs to each object
            objsIDs = transform(app.segmentationDataStructs, @(x) find(arrayfun(@(xx) isequal(xx.Centroid(:,1),xx.Centroid(:,1)), x)));
            %STEP12: Create Object ID for the image and assign it back to the 'mStruct' data structure
            app.segmentationDataStructs = transform(app.segmentationDataStructs,objsIDs, @(x,y) arrayfun(@(xx, yy) setfield(xx, 'ObjectID', yy),...
                x, y, 'UniformOutput', false));
            %STEP13: Convert from cell to matrix
            app.segmentationDataStructs = transform(app.segmentationDataStructs, @(x) cell2mat((x)'));
        end




        function [fig, ax, interactiveImg] = CreateInteractiveFig(app, img)
            %
            % creates an interactive figure to display an image and handles
            % clicks on objects. The clicked object will be islolated &
            % displayed in the main app. The user is then able to extract
            % useful information about this particular object

            d = uiprogressdlg(app.v10UIFigure,'Title','Loading binarized image','Indeterminate','on');

            %Checks if figure had a previously stored position
            if not(isempty(app.detachedSegPreviewFigPos))
                %Figure was opened previously, load it in the same position
                fig = figure('WindowButtonDownFcn', @(src,event)Clickscanner(app, app.detachedSegPreviewFig), 'Position', app.detachedSegPreviewFigPos);
            else
                %Figure was not created previously, load it in arbitrary
                %position
                fig = figure('WindowButtonDownFcn', @(src,event)Clickscanner(app, app.detachedSegPreviewFig));
            end
            %UI-related
            fig.Visible = 'off';
            set(fig, 'DeleteFcn', @(src,event)tryCloseIF(app, app.detachedSegPreviewFig));
            ax = axes(fig);
            hold off
            interactiveImg = imshow(img, 'Parent',ax);
            app.interactiveImgData = SplitBorderStats(app, img);
            set(fig, 'Pointer', 'crosshair');
            set(fig, 'Tag', 'detachedSegPreviewFig');
            ax.Title.String = 'Click on any object to examine it';
            filenm = GetDatastoreFilename(app, app.rawImgDatastore, app.segPreviewSpinnerCounter);
            ax.XLabel.String = filenm.fullPathText;
            if not(isempty(app.detachedSegPreviewFigPos)); fig.Position = app.detachedSegPreviewFigPos;end
            fig.Visible = 'on';
            close(d);

            function tryCloseIF(app, fig)
                try
                    CloseInteractiveFigure(app, fig);
                catch ME
                    if strcmp(ME.identifier, 'MATLAB:class:InvalidHandle')
                        disp('Figure object was invalid or already deleted.');
                    else
                        disp('we are ere');
                        rethrow(ME);
                    end
                end
            end

        end





        function Clickscanner(app, hObj)
            %
            % Handles mouse clicks on the interactive image or figure elements.
            %
            % INPUTS:
            %   app  - The application object containing required properties and methods.
            %   hObj - The object that was clicked, typically part of the interactive figure.
            %
            %hObj = hittest(app.detachedSegPreviewFig);
            switch hittest(hObj)
                %figure background is clicked
                case app.detachedSegPreviewFig
                    % Do nothing
                    %interactive image is clicked
                case app.interactiveImg
                    %Display the object
                    GetCoordinateAndDisplay(app, app.interactiveImg.CData);
                otherwise
                    switch hittest(hObj).Type
                        %text element over the figure is clicked
                        case 'text'
                            GetCoordinateAndDisplay(app, app.interactiveImg.CData);
                            disp('text clicked');
                        otherwise
                            % do nothing
                    end
            end


        end


        function GetDetachedFigPos(app, src, ~, toggler)
            %
            %Assigns the position array of the figure to the global
            %property to memorize the figure's location. This will only do
            %so if the 'Toggler' value is 1.
            %INPUTS:
            %Toggler '0' if no previous position exists
            %Toggler '1' if previous position exists
            %src: source figure hangle
            if toggler == 0
                app.detachedSegTuningFigData.Position = src.Position;
            else
                app.detachedSegTuningFigData.Position = src.Position;

            end

            %display(['Updated pos to: ' num2str(src.Position)]);
        end



        function outputStructure = SplitBorderStats(app, myIbwImage)
            %This function separates border-touching objects from
            %non-border-touching objects, and add a boolean value to
            %distinguish each (1: Border-touching, 0: non-border-touching)
            %in the main data structure
            %INPUT:
            %myIbwImage: BW image (logical)
            rProps = ["Centroid" "MajorAxisLength" "MinorAxisLength" "Perimeter" "Area" "solidity" "Circularity" "image" "BoundingBox" "FilledArea"...
                "ConvexHull" "ConvexImage" "ConvexArea" "Eccentricity" "EquivDiameter" "EulerNumber" "Extent" "Extrema" "FilledImage" ...
                "Orientation" "PixelIdxList" "PixelList"]

            bdrObjs = (myIbwImage - imclearborder(myIbwImage, 8));
            nonBdrObjsImgs = SplitBorderImages(app, myIbwImage);

            % create connected components
            bdrObjs = bwconncomp(bdrObjs,8);
            nonBdrObjs = bwconncomp(nonBdrObjsImgs, 8);


            % Create stats for each one separately;
            bdrObjsStats = regionprops('struct', bdrObjs, rProps);
            nonBdrObjsStats = regionprops('struct', nonBdrObjs, rProps);


            % now create ObrderObj Boolean for each
            bdrObjsStats = arrayfun(@(x) setfield(x,'BorderObject',1),bdrObjsStats, 'UniformOutput', false);
            bdrObjsStats = cell2mat((bdrObjsStats)');
            nonBdrObjsStats = arrayfun(@(x) setfield(x,'BorderObject',0),nonBdrObjsStats, 'UniformOutput', false);
            nonBdrObjsStats = cell2mat((nonBdrObjsStats)');

            outputStructure = [bdrObjsStats,nonBdrObjsStats]';
        end

        function bdrClrImg = SplitBorderImages(~, bwImg)
            %
            % determine which images are(n't) touching border and split
            % accordingly

            % First split image into two parts and fill them up
            %bdrObjs = imfill((myIbwImage - imclearborder(myIbwImage, 8)), 'holes');
            %nonBdrObjs = imfill((myIbwImage - bdrObjs), 'holes');

            % First split image into two parts
            bdrObjs = (bwImg - imclearborder(bwImg, 8));
            bdrClrImg = (bwImg - bdrObjs);
        end

        function Closefig(~, fig)
            %
            % Performs necessary checks then closes the figure
            % INPUTS:
            % fig: figure to be closed
            if ishandle(fig)
                if isvalid(fig)
                    close(fig);
                    %fig = [];
                else
                    %do nothing
                end
            else
                %do nothing
            end
        end

        function outputImage = Createmissingimg(app)
            % Creates a placeholder image to prompt the user to click an
            % image
            A = zeros(238,388);
            position = [52 97];
            text_str = 'Click on any object to examine it';
            box_color = [0 1 0];
            outputImage = insertText(A,position,text_str,'FontSize',18,'BoxColor',...
                box_color,'BoxOpacity',0.55,'TextColor','white');
        end




        function GetCoordinateAndDisplay(app, imgIn)
            %
            % Gets the mouse position where use has clicked, then matches
            %that coordinate with the object underneath to isolate it and
            %display it accordingly.
            %INPUTS:
            %imgIn: input image

            mousePos = get(app.detachedSegPreviewAx,'CurrentPoint');
            mouseX   = mousePos(1,1);
            mouseY   = mousePos(1,2);
            disp(['X: ' num2str(mouseX)]);
            disp(['Y: ' num2str(mouseY)]);


            %Isolate the object from the rest of the group
            BWFull = imgIn;
            BWFullStruct = app.interactiveImgData;
            [BW2, ~] = bwselect(BWFull,mouseX,mouseY,8);

            %Selection is valid?
            if not(any(BW2(:) > 0))
                % Invalid -> DONT DISPLAY
            else
                % Valid -> Display v

                %UI--
                disp(['object number: ' num2str(app.selectedObjID)])
                BW2FullStruct = regionprops('struct', BW2, {'Centroid', 'BoundingBox'});
                bbox = BW2FullStruct.BoundingBox;
                bbox(3) = bbox(3)*1.1;
                bbox(4) = bbox(4)*1.1;
                bbox(1) = bbox(1)-(bbox(3)*0.05);
                bbox(2) = bbox(2)-(bbox(4)*0.05);
                if isgraphics(app.selectionBoundingBox)
                    delete(app.selectionBoundingBox)
                end
                app.selectionBoundingBox = rectangle(app.detachedSegPreviewAx, 'Position', BW2FullStruct.BoundingBox, 'edgecolor', 'g', 'lineWidth', 3);

                BW3 = 255 * repmat(uint8(BW2), 1, 1, 3);
                BW3 = imcrop(BW3, bbox);
                app.SegPreviewFigure.ImageSource = BW3;
                %--UI

                %Search the full BW image to determine the object's ID based on its coordinate
                app.selectedObjID = find(arrayfun(@(xx) isequal(xx.Centroid(:,1), BW2FullStruct.Centroid(:,1)), BWFullStruct), 1);

                app.objNumLabel.Text = [num2str(app.selectedObjID) ' (of ' num2str(size(BWFullStruct,1)) ' total objects)'];
                BW3Props = regionprops('struct', im2bw(BW3), {'Area','FilledArea','MajorAxisLength', ...
                    'MinorAxisLength', 'Orientation', 'Eccentricity', 'Centroid', 'ConvexArea', 'Circularity',...
                    'Solidity', 'Circularity', 'EquivDiameter', 'EulerNumber','Extent','Perimeter'});
                %Separate the X & Y from the 'Centroid' property
                BW3Props.Centroid_X = BWFullStruct(app.selectedObjID).Centroid(1);
                BW3Props.Centroid_Y = BWFullStruct(app.selectedObjID).Centroid(2);
                BW3Props = rmfield(BW3Props, 'Centroid');
                BW3Props = UnitConversionBWProps(app, BW3Props); % Perform unit conversion


                %UI-RELATED
                formatSpec = '%.2f';
                %% ACTUAL DATA

                %column 1
                app.Areaprev.Text = [num2str(BW3Props.Area) ' ' app.units];
                app.Filledareaprev.Text = [num2str(BW3Props.FilledArea) ' ' app.units];
                app.Majoraxislengthprev.Text = [num2str(BW3Props.MajorAxisLength,formatSpec) ' ' app.units];
                app.Minoraxislengthprev.Text = [num2str(BW3Props.MinorAxisLength,formatSpec) ' ' app.units];
                app.Orientationprev.Text = [num2str(BW3Props.Orientation) '°'];
                app.Eccentricityprev.Text = [num2str(BW3Props.Eccentricity,formatSpec)];
                app.CentroidXposprev.Text = [num2str(BW3Props.Centroid_X,formatSpec) ' ' app.units];
                app.CentroidYposprev.Text = [num2str(BW3Props.Centroid_Y,formatSpec) ' ' app.units];
                %column 2
                app.Convexareaprev.Text = [num2str(BW3Props.ConvexArea) ' ' app.units];
                app.Circularityprev.Text = [num2str(BW3Props.Circularity,formatSpec)];
                app.Solidityprev.Text = [num2str(BW3Props.Solidity,formatSpec)];
                app.Equivdiameterprev.Text = [num2str(BW3Props.EquivDiameter,formatSpec) ' ' app.units];
                app.Eulernumberprev.Text = [num2str(BW3Props.EulerNumber,formatSpec)];
                app.Extentprev.Text = [num2str(BW3Props.Extent,formatSpec) ' ' app.units '²' '/' app.units '²'];
                app.Perimeterprev.Text = [num2str(BW3Props.Perimeter,formatSpec) ' ' app.units];

                %% Tooltip
                %column 1
                app.Areaprev.Tooltip = [num2str(BW3Props.Area) ' ' app.units];
                app.Filledareaprev.Tooltip = [num2str(BW3Props.FilledArea) ' ' app.units];
                app.Majoraxislengthprev.Tooltip = [num2str(BW3Props.MajorAxisLength,formatSpec) ' ' app.units];
                app.Minoraxislengthprev.Tooltip = [num2str(BW3Props.MinorAxisLength,formatSpec) ' ' app.units];
                app.Orientationprev.Tooltip = [num2str(BW3Props.Orientation) '°'];
                app.Eccentricityprev.Tooltip = [num2str(BW3Props.Eccentricity,formatSpec)];
                app.CentroidXposprev.Tooltip = [num2str(BW3Props.Centroid_X,formatSpec) ' ' app.units];
                app.CentroidYposprev.Tooltip = [num2str(BW3Props.Centroid_Y,formatSpec) ' ' app.units];
                %column 2
                app.Convexareaprev.Tooltip = [num2str(BW3Props.ConvexArea) ' ' app.units];
                app.Circularityprev.Tooltip = [num2str(BW3Props.Circularity,formatSpec)];
                app.Solidityprev.Tooltip = [num2str(BW3Props.Solidity,formatSpec)];
                app.Equivdiameterprev.Tooltip = [num2str(BW3Props.EquivDiameter,formatSpec) ' ' app.units];
                app.Eulernumberprev.Tooltip = [num2str(BW3Props.EulerNumber,formatSpec)];
                app.Extentprev.Tooltip = [num2str(BW3Props.Extent,formatSpec) ' ' app.units '²' '/' app.units '²'];
                app.Perimeterprev.Tooltip = [num2str(BW3Props.Perimeter,formatSpec) ' ' app.units];
            end

        end


        function [outputTable, cancelState] = Datastoreextractor(app, dataDS, cleanDS)
            %
            % This function loops through the datastore data structure to
            %convert it into a single output table.
            %INPUTS:
            %   dataDS: The segmentation data structure
            %   cleanDS: The pre-processed datastore (i.e., the clean images
            %datastore)
            %
            %OUTPUTS:
            %   outputTable: The consolidated-data table
            %   cancelState: A boolean 0 or 1, that indicates if user
            %   cancelled the loop or not


            % Transform into table
            reset(dataDS);
            dstbl = transform(dataDS, @(x) struct2table(x, 'AsArray', true));
            reset(dstbl);
            tBig = [];

            %f = waitbar(0,'Processing all images...');
            d = uiprogressdlg(app.v10UIFigure, 'Title', 'Working...', 'Message', 'Processing all images', 'Cancelable','on');



            for k=1:dataDS.numpartitions
                if d.CancelRequested
                    cancelState = 1;
                    break
                else
                    cancelState = 0;
                end
                %k
                %waitbar(k/dsdata.numpartitions, f, ['Processing image # ' num2str(k) ' (out of ' num2str(dsdata.numpartitions) ')'])
                d.Value = k/dataDS.numpartitions;
                d.Message = ['Processing image # ' num2str(k) ' (out of ' num2str(dataDS.numpartitions) ')'];
                try
                    j = read(dstbl);
                    j.ImageID = repmat(k,size(j,1),1);
                    if isa(cleanDS, 'matlab.io.datastore.ImageDatastore')
                        files = cleanDS.Files{k};
                    else
                        files = cleanDS.UnderlyingDatastores{1}.Files{k};
                    end
                    [~,name,ext] = fileparts(files);
                    j.FileName = repmat(convertCharsToStrings([name ext]),size(j,1),1);
                    tBig = [tBig;j];
                    outputTable = tBig;
                catch ME
                    switch ME.identifier
                        case 'MATLAB:datastoreio:transformeddatastore:badTransformDef'
                            % SKIP EMPTY BINARY IMAGE
                        otherwise
                            rethrow(ME)
                    end
                end
            end
            close(d);




        end

        function Tout = Cleantable(app, Tin)
            %
            % Cleans the outputTable for for the sake of user comprehension
            % of the output table. Also performs re-arrangements of some vars
            %
            %INPUT:
            %Tin: The input table to be cleaned
            %OUTPUT:
            %Tout: The cleaned output table

            Unit = app.units;
            Tin = removevars(Tin,{'ConvexHull',...
                'ConvexImage', 'Image', 'FilledImage', 'Extrema',...
                'PixelIdxList', 'PixelList'});
            Tin.BoundingBox_x = Tin.BoundingBox(:,1);
            Tin.BoundingBox_y = Tin.BoundingBox(:,2);
            Tin.BoundingBox_w = Tin.BoundingBox(:,3);
            Tin.BoundingBox_h = Tin.BoundingBox(:,4);
            Tin.Centroid_x_pixels = Tin.Centroid(:,1);
            Tin.Centroid_y_pixels = Tin.Centroid(:,2);
            Tin = removevars(Tin,{'BoundingBox',...
                'Centroid'});
            Tin.Unit = repmat(Unit,size(Tin,1),1);
            Tin = movevars(Tin,'Unit','Before','Area');
            Tin = movevars(Tin,'FileName','Before','Area');
            Tin = movevars(Tin,'ImageID','Before','Area');
            Tin = movevars(Tin,'ObjectID','Before','Area');
            Tin = movevars(Tin,'BorderObject','Before','Area');
            Tin = movevars(Tin,'FilledArea','After','Area');
            Tin = movevars(Tin,'Centroid_x','After','Perimeter');
            Tin = movevars(Tin,'Centroid_y','After','Centroid_x');
            Tin = movevars(Tin,'Centroid_x_pixels','After','Centroid_y');
            Tin = movevars(Tin,'Centroid_y_pixels','After','Centroid_x_pixels');

            if any(strcmp(Tin.Unit,"µm"))
                % fix micrometer formatting for output purposes
                Tin.Unit = repmat('um',size(Tin.Unit,1),1);
            end

            if any(strcmp(Tin.Unit,"Å"))
                % fix angstrom formatting for output purposes
                Tin.Unit = repmat('A',size(Tin.Unit,1),1);
            end

            Tout = Tin;
        end

        function outputStructuringElement = Createstrel(app,shape, sizeParameters, shapeFamily)
            %
            % This function creates the structuring element based on certain input parameters
            %
            % INPUTS:
            %   shape: char array that defins the shape (e.g., 'rectangle',
            %   'diamond', 'square', etc.)
            %   sizeParameters: 1x2-cell containing the two size parameters
            %   for the input shape
            %   shapeFamily: integer between 1 or 2, depending on the number
            % of vars the shape takes

            shape = AvoidShapeError(app,shape);
            if (shapeFamily ~= 1)
                % 2-parameter strels
                if strcmp(shape,'rectangle')
                    outputStructuringElement = strel(shape, [double(uint8(sizeParameters{1})) double(uint8(sizeParameters{2}))]);
                else
                    outputStructuringElement = strel(shape, double(uint8(sizeParameters{1})), double(uint8(sizeParameters{2})));
                end

            else
                % 1-parameter strels
                outputStructuringElement = strel(shape, double(uint8(sizeParameters{1})));

            end

        end


        function tooSoonBoo = CheckTimeDiff(app, mseconds)
            %
            % Checks if the changed value of the slider was triggerred too
            % soon (which leads to high CPU usage). If the value is changed
            % too soon, the app skips image processing.
            % INPUT:
            %   mseconds: integer value (in milliseconds)
            t = { app.prevTimeStamp
                char(datetime('Now', 'Format', 'HH:mm:ss.SSS'))};
            if milliseconds(diff(duration(t,'inputformat','hh:mm:ss.SSS'))) < mseconds
                % If timeDiff is less than 'mseconds' milliseconds, SKIP
                tooSoonBoo = true;
            else
                tooSoonBoo = false;
            end
        end


        function previewIMG = FastUpdateFunction(app, SE, inputIMG)
            %
            % Performs a quick segmentation sequence for a single input
            % image that was extracted from the datastore for the sake of
            % previewing the segmentation process
            % INPUTS:
            %   SE: Structuring element
            %   inputIMG: (pre-processed) single image to be processed
            grayScaleIMG = im2gray(inputIMG);

            switch app.invertedImage
                case true
                    grayScaleIMG = imcomplement(grayScaleIMG);
                case false
                    % do nothing
            end
            openedIMG = imopen(grayScaleIMG, SE);



            BWIMG = imbinarize(openedIMG, app.binarizingThreshold);
            %Below 'if statement' only activates if 'ENHANCED EDGE DETECTION is ON'
            if app.enhancedEdgeBoo == 1; BWIMG = ImageEnhanceEdge(app, BWIMG); end

            previewIMG = imfuse(grayScaleIMG,BWIMG, 'falsecolor');

        end

        function FileName = GetDatastoreFilename(~, dataStoreIn, index)
            % Provides the filename of a targeted datastore file
            % INPUTS:
            %   dataStoreIn: the input datastore
            %   index: is the index number (integer > 0) for the specific file
            [fpath,name,ext] = fileparts(dataStoreIn.Files{index});
            FileName.fullPathText = [fpath filesep name ext];
            FileName.imageText = [name ext];


        end

        function FastObjectLabel(app, binaryIMG)
            %
            % Creates object labels for an input binarized image
            % INPUTS:
            %   binaryIMG: a logical input image
            f = waitbar(0,'please wait...');
            waitbar(1/5, f, 'Reading image')


            % GATHERING DATA
            waitbar(2/5, f, 'Processing objects...')
            %--- Determine which objects are touching border
            app.interactiveImgData = SplitBorderStats(app, binaryIMG);
            waitbar(3/5, f, 'Determining object IDs...')
            %--- Assign IDs to objects
            app.interactiveImgIDs = find(arrayfun(@(xx) isequal(xx.Centroid(:,1),xx.Centroid(:,1)), app.interactiveImgData));
            waitbar(4/5, f, 'Assigning object labels...')
            %--- Inserts Obj IDs @ centroid for each object
            set(0, 'CurrentFigure', app.detachedSegPreviewFig)
            app.interactiveImgLabels = arrayfun(@(z) ...
                text(app.interactiveImgData(app.interactiveImgIDs(z)).Centroid(1), ...
                app.interactiveImgData(app.interactiveImgIDs(z)).Centroid(2), num2str(app.interactiveImgIDs(z)),...
                'FontSize',14,'Color',[.945 .271 .176]), ...
                app.interactiveImgIDs);
            waitbar(5/5, f, 'Finalizing')
            close(f);
            %
        end

        function CloseInteractiveFigure(app, hSource)
            % Closes the interactive figure
            % INPUT:
            %   hSource: handle source for the interactive figure
            %
            disp('you attempted to close the figure!');
            app.detachedSegPreviewFigPos = hSource.Position;
            ToggleSwitch(app, app.ShowimageButton, 'off');
            ToggleSwitch(app, app.ButObjectLabeling, 'off');
            app.ButObjectLabeling.Enable = 'off';
            Closefig(app, hSource);
        end

        function CloseDetachedFigure(app, inputFig)
            %
            %Deletes the detached figure
            %INPUTS:
            %inputFig: The figure handle to be deleted
            disp('you attempted to close the figure!');
            if ~isempty(ishandle(inputFig)); app.detachedSegTuningFigData.Position = inputFig.Position;end
            delete(inputFig);
        end

        function existsState = CheckDetachedFigureExists(~,tag)
            %
            % Checks if detached figure already exists or not
            state = ~isempty(findobj('Tag', tag));
            switch state
                case false % Exists
                    existsState = false;
                case true  % Destroyed
                    existsState = true;
            end
        end

        function SegPreviewLabelHandler(app, EnableLabels)
            %
            % Checks if labelling exists and visible, exists but hidden,
            % or has not been created previously and subsequently creates it
            % INPUTS:
            % EnableLabels: A boolean (0: disabled; 1: enabled) for labeling

            % User requests disabling labels
            if EnableLabels == 0
                ToggleSwitch(app, app.ButObjectLabeling, 'off')
                arrayfun(@(x) set(x, 'Visible', 'off'), app.interactiveImgLabels);
            else
                % User requests enabling labels
                ToggleSwitch(app, app.ButObjectLabeling, 'on')
                % Labels exist but in a hidden state, then make them visible
                if not(isempty(app.interactiveImgLabels)) && isvalid(app.interactiveImgLabels(1))
                    arrayfun(@(x) set(x, 'Visible', 'on'), app.interactiveImgLabels);
                else
                    % Labels dont exist, then create them
                    FastObjectLabel(app,app.interactiveImg.CData);
                end

            end
        end

        function UpdatedetachedSegTuningFig(app)
            %
            % Check if the detached preview figure of segmentation tuning step exists
            % If it doesn't exist or is not a valid handle, skip drawing it
            if isempty(app.detachedSegTuningFig) || ~ishandle(app.detachedSegTuningFig)
                % Figure doesnt exist, so skip drawing it
            else
                % Figure exists, redraw
                hold on
                imshow(app.SegTuningFigure.ImageSource);

            end


        end

        function  DefineROI(app)
            %
            % Displays an interactive image cropping UI for selecting a region of interest (ROI)
            % and applying it to images in the datastore.

            % - Loads the first image from the cleaned datastore for preview.
            % - Creates a UI figure with a grid layout for the image display and control buttons.
            % - Displays the image with an adjustable rectangle (ROI) for cropping.
            % - Provides a spinner to navigate between images and buttons to confirm or cancel the crop.
            % - On 'Crop', saves the ROI and closes the figure.
            % - On 'Cancel', discards changes and closes the figure.

            % Inputs:
            %   app.cleanedDatstore               - Datastore containing images to crop.
            %   app.inputDatastoreProperties.numFiles - Total number of images in the datastore.
            %   app.rawImgDatastore               - Original image datastore.
            %   app.cropROI                       - Variable to store the selected ROI.
            %
            previewDS = app.cleanedDatstore;
            ROIUIFig = uifigure();
            ROIUIFig.AutoResizeChildren = 'off';
            ROIUIFig.Tag = 'cropFigure';
            %Create GridLayout
            GridLayout = uigridlayout(ROIUIFig);
            GridLayout.ColumnWidth = {32,'1x',32};
            GridLayout.RowHeight = {ROIUIFig.Position(4)*0.85,ROIUIFig.Position(4)*.10,'1x'};
            GridLayout.ColumnSpacing = 0;
            GridLayout.RowSpacing = 0;
            GridLayout.Padding = [0 0 0 10];
            GridLayout.Scrollable = 'off';
            GridLayout.Tag = 'GridLayout';

            % Create upperPanel
            upperPanel = uipanel(GridLayout);
            upperPanel.Layout.Row = 1;
            upperPanel.Layout.Column = 2;
            upperPanel.Scrollable = 'off';
            upperPanel.AutoResizeChildren = 'off';
            % Create Tree
            imgAxes = uiaxes(upperPanel);
            %imgAxes.View = [0 -90];
            imgAxes.View = [0 90];
            imgAxes.YDir = 'reverse';
            imgAxes.Units = 'normalized';
            imgAxes.XAxis.TickLabels = '';
            imgAxes.YAxis.TickLabels = '';
            imgAxes.XAxis.Visible = 'off';
            imgAxes.YAxis.Visible = 'off';
            imgAxes.Color = 'none';
            hold (imgAxes,'on')
            myImg = read(previewDS);
            shownImg=image(imgAxes, 'CData', myImg);
            imgAxes.Position = [0 0 1 1];
            ROIUIFig.SizeChangedFcn = @Pnlszchanged;
            ROIUIFig.CloseRequestFcn = @Windowclosed;
            imgSize = upperPanel.Position;
            cropBox = drawrectangle(imgAxes, 'Position',[imgSize(3)*0.2,imgSize(4)*0.2,imgSize(3)*0.8,imgSize(4)*0.8],'Label','Region of interest','Color','g');
            cropBox.Deletable = 0;
            cropBox.LabelAlpha = .35;
            addlistener(cropBox,'MovingROI',@Allevents)
            cropROITemp = cropBox.Position;


            % Create lowerPanel
            lowerPanel = uipanel(GridLayout);
            lowerPanel.Layout.Row = 2;
            lowerPanel.Layout.Column = 2;
            lowerPanel.Scrollable = 'off';
            lowerPanel.AutoResizeChildren = 'off';


            %Create GridLayout
            %GridLayout2 = [];
            GridLayout2 = uigridlayout(lowerPanel);
            GridLayout2.ColumnWidth = {22,'1x',10,'1x',10,'1x',22};
            GridLayout2.RowHeight = {'1x'};
            GridLayout2.ColumnSpacing = 0;
            GridLayout2.RowSpacing = 0;
            GridLayout2.Padding = [10 10 10 10];
            GridLayout2.Scrollable = 'off';

            cropSpinner = uispinner(GridLayout2);
            cropSpinner.Layout.Column = 2;
            cropSpinner.Limits = [1, app.inputDatastoreProperties.numFiles];
            cropSpinner.Value= 1;
            cropSpinner.ValueChangingFcn = @ImgSpinnerChanged;
            cancelBut = uibutton(GridLayout2, 'Text', 'Cancel');
            cancelBut.Layout.Column = 4;
            cancelBut.ButtonPushedFcn = @CancelButtonPushed;
            confirmBut = uibutton(GridLayout2, 'Text', 'Crop');
            confirmBut.Layout.Column = 6;
            confirmBut.ButtonPushedFcn = @CropButtonPushed;

            waitfor(ROIUIFig) % stop executing furthercode until this figure is closed

            function Pnlszchanged(src, ~)
                %   Updates layout on figure resize.
                disp(src.Position);
                handle=findobj(src.Children, 'Tag', 'GridLayout');
                handle.RowHeight = {src.Position(4)*0.85,ROIUIFig.Position(4)*.10,'1x'};
                %disp(event);
            end

            function Windowclosed(~, ~)
                %Handles figure closure, resets datastore, and clears ROI.
                cropROITemp = [];
                CloseHandle(app, 'figure', 'cropFigure');
                reset(app.cleanedDatstore);
            end

            function Allevents(~,evt)
                %Updates ROI position during movement.
                evname = evt.EventName;
                switch(evname)
                    case{'MovingROI'}
                        %disp(['ROI moving current position: ' mat2str(evt.CurrentPosition)]);
                    case{'ROIMoved'}
                        %disp(['ROI moved current position: ' mat2str(evt.CurrentPosition)]);
                end
                cropROITemp = evt.CurrentPosition;
                assignin('base','tempROI',cropROITemp);
            end

            function CancelButtonPushed (~, ~)
                %Cancels cropping, resets datastore, and closes the figure.
                disp('cancel pressed');
                cropROITemp = [];
                CloseHandle(app, 'figure', 'cropFigure');
                reset(app.cleanedDatstore);
                assignin('base','tempROI',cropROITemp);
                assignin('base','newROI',app.cropROI);
            end

            function CropButtonPushed (~, ~)
                %Saves the selected ROI and closes the figure.
                disp('crop pressed');
                app.cropROI = cropROITemp;
                reset(app.cleanedDatstore);
                CloseHandle(app, 'figure', 'cropFigure');
                disp(['newROI: ' mat2str(app.cropROI)]);
                assignin('base','newROI',app.cropROI);
            end

            function ImgSpinnerChanged (~, evt)
                %Updates the displayed image based on spinner selection.
                cropSpinner.Enable = 'off';
                cropCounter = evt.Value;
                disp(['new stored value: ' num2str(cropCounter)]);
                CheckCounterExtrema(app, cropCounter);
                loadedImg = readimage(app.rawImgDatastore,cropCounter); % read specific image from datastore
                loadedImg = imcrop(loadedImg,[0 0 app.inputDatastoreProperties.minCol app.inputDatastoreProperties.minRow]);
                shownImg.CData = loadedImg; % read specific image from datastore
                cropSpinner.Enable = 'on';
            end






        end

        function CloseHandle(~, type, tagName)
            %
            % Closes and deletes a UI component if it exists.
            % Inputs:
            %   type    - String specifying the component type (e.g., 'figure', 'uipanel').
            %   tagName - String specifying the tag assigned to the component.

            handle = findall(0,'type',type,'tag',tagName);
            if ~isempty(handle)
                delete(handle);
                return
            end

        end

        function outputImg = ImageEnhanceEdge(~, imgIN)
            %
            % Enhances the edges of a binary image using morphological operations.
            % Inputs:
            %   imgIN - Binary input image to be enhanced.
            % Outputs:
            %   eeImg - Edge-enhanced binary image.
            se90 = strel('line',3,90);
            se0 = strel('line',3,0);
            eg1 = imdilate(imgIN,[se90 se0]);
            eg2 = bwmorph(eg1, 'bridge', 40);
            eg2 = imfill(eg2, 'holes');
            eg3 = imdilate(eg2,[se90 se0]);
            eg3 = bwmorph(eg3, 'bridge', 40);
            eg3 = imfill(eg3, 'holes');
            outputImg = eg3;

        end


        function structContainer = ConvertPx2UnitLength(~, structContainer, convFactor)
            %
            % Converts pixel-based measurements in a structure array to specified unit lengths.
            % Inputs:
            %   structContainer - Structure array containing image region properties.
            %   convFactor      - Conversion factor from pixels to the desired unit.
            % Outputs:
            %   structContainer - Updated structure array with converted measurements.


            %V Convert Area
            structContainer = cell2mat(arrayfun(@(x) setfield(x, 'Area', x.Area * (convFactor^2)),structContainer, 'UniformOutput', false));
            %V Convert Perimeter
            structContainer = cell2mat(arrayfun(@(x) setfield(x, 'Perimeter', x.Perimeter * convFactor),structContainer, 'UniformOutput', false));
            %V Convert MajorAxisLength
            structContainer = cell2mat(arrayfun(@(x) setfield(x, 'MajorAxisLength', x.MajorAxisLength * convFactor),structContainer, 'UniformOutput', false));
            %V Convert MinorAxisLength
            structContainer = cell2mat(arrayfun(@(x) setfield(x, 'MinorAxisLength', x.MinorAxisLength * convFactor),structContainer, 'UniformOutput', false));
            %V Convert FilledArea
            structContainer = cell2mat(arrayfun(@(x) setfield(x, 'FilledArea', x.FilledArea * (convFactor^2)),structContainer, 'UniformOutput', false));
            %V Convert EquivDiameter
            structContainer = cell2mat(arrayfun(@(x) setfield(x, 'EquivDiameter', x.EquivDiameter * convFactor),structContainer, 'UniformOutput', false));
            %V Convert Centroid_X
            structContainer = cell2mat(arrayfun(@(x) setfield(x, 'Centroid_x_pixels', x.Centroid(1)),structContainer, 'UniformOutput', false));
            %V Convert Centroid_Y
            structContainer = cell2mat(arrayfun(@(x) setfield(x, 'Centroid_y_pixels', x.Centroid(2)),structContainer, 'UniformOutput', false));
            %V Convert Centroid_X
            structContainer = cell2mat(arrayfun(@(x) setfield(x, 'Centroid_x', x.Centroid(1) * convFactor),structContainer, 'UniformOutput', false));
            %V Convert Centroid_Y
            structContainer = cell2mat(arrayfun(@(x) setfield(x, 'Centroid_y', x.Centroid(2) * convFactor),structContainer, 'UniformOutput', false));
            %V Convert ConvexArea
            structContainer = cell2mat(arrayfun(@(x) setfield(x, 'ConvexArea', x.ConvexArea * (convFactor^2)),structContainer, 'UniformOutput', false));
            %V Convert BoundingBox
            structContainer = cell2mat(arrayfun(@(x) setfield(x, 'BoundingBox', x.BoundingBox * convFactor),structContainer, 'UniformOutput', false));
        end

        function BWprop = UnitConversionBWProps(app, BWprop)
            %
            % Converts individual image BW properties (BWprop) from pixels to specified unit lengths.
            % Inputs:
            %   BWprop - Structure containing binary image properties (Area, Perimeter, etc.).
            % Outputs:
            %   BWprop - Updated structure with measurements converted using the app's conversion factor.
            cfctr = app.unitConvFactor;
            BWprop.Area = BWprop.Area*(cfctr^2);
            BWprop.FilledArea = BWprop.FilledArea*(cfctr^2);
            BWprop.MajorAxisLength = BWprop.MajorAxisLength*cfctr;
            BWprop.MinorAxisLength = BWprop.MinorAxisLength*cfctr;
            BWprop.Centroid_X = BWprop.Centroid_X*cfctr;
            BWprop.Centroid_Y = BWprop.Centroid_Y*cfctr;
            BWprop.ConvexArea = BWprop.ConvexArea*(cfctr^2);
            BWprop.EquivDiameter = BWprop.EquivDiameter*cfctr;
            BWprop.Perimeter = BWprop.Perimeter*cfctr;
        end

        function StoreAllPrefs(app)
            %
            % Stores all user preferences and application states into the app configuration.
            % This includes image preprocessing operations (region of interest, image flattening,
            % enhanced edge detection), scaling factors, and export options.
            %Initialize
            prefs = struct();
            localActiveState = struct();
            localExportState = struct();

            %--- Inverted Image
            localActiveState.invertedImage = app.invertedImage;
            prefs.invertedImage = app.invertedImage;


            %---IMG processing vars
            localActiveState.imgProcessVals = 1;
            prefs.strelShapeFamily = app.strelShapeFamily;
            %-Shape
            prefs.shape = app.strelShape;
            %- Val1
            prefs.strelDim1 = app.strelDim1;
            %- Val2
            prefs.strelDim2 = app.strelDim2;
            %- Val3
            prefs.binarizingThreshold = app.binarizingThreshold;
            %- Combined vals
            prefs.strelDimensionalParams = {prefs.strelDim1, prefs.strelDim2, prefs.binarizingThreshold};

            %---Region of interest
            localActiveState.ROI = app.cropBoo;
            prefs.cropBoo  = app.cropBoo;
            prefs.cropROI  = app.cropROI;

            %--- Image flattening
            localActiveState.imageFlattening = app.imageFlatteningBoo;
            prefs.imageFlatteningBoo = app.imageFlatteningBoo;

            %--- Enhanced edge detection
            localActiveState.enhancedEdge = app.enhancedEdgeBoo;
            prefs.enhancedEdgeBoo = app.enhancedEdgeBoo;



            %---Scale Factor

            localActiveState.scaleFactor = app.scaleDataCollection.acceptBoo;
            prefs.scaleDataCollection = app.scaleDataCollection;
            prefs.scaleDataCollection.scaleUnits = app.units;
            prefs.scaleDataCollection.conversionFactor = app.unitConvFactor;


            %---Export states
            localActiveState.exportOpts = app.exportOptsBoo;
            localExportState.exporg = app.userPrefExportState.exporg;
            localExportState.expbw = app.userPrefExportState.expbw;
            localExportState.exphigh = app.userPrefExportState.exphigh;
            localExportState.explbl = app.userPrefExportState.explbl;
            localExportState.expbwbrdrclr = app.userPrefExportState.expbwbrdrclr;
            localExportState.mtlb = app.userPrefExportState.mtlb;



            app.config.activeState = localActiveState;
            app.config.exportState = localExportState;
            app.config.prefs = prefs;


        end

        function [selectedDir, imgsDir] = SelectOutputDir(~)
            %
            % Prompts the user to select or create an output directory for saving results.
            % Creates subfolders for 'Images' and 'Preferences' within the selected directory.
            % Outputs:
            %   selectedDir - Full path to the newly created work package directory.
            %   imgsDir     - Full path to the 'Images' subdirectory.
            FolderName = cell2mat(inputdlg('Give your data a name:','Output folder name', [1 50],{'results'}));
            % Check error
            if isequal(FolderName,[])
                msgbox('unable to save!')
                selectedDir = 'error';
                imgsDir = 'error';
                return
            else
                % Prepare directories
                selectedDir = uigetdir('','Choose where to save your output data');
                mkdir(selectedDir, FolderName)
                selectedDir = fullfile(selectedDir,FolderName);
                mkdir(selectedDir, 'Images'); % Create images directory
                imgsDir = fullfile(selectedDir,'Images');
                mkdir(selectedDir, 'Preferences'); % Create Preferences directory
            end

        end

        function montImgs = CreateMontage(app, orgimg, gsimg, bwimg)
            %
            % Creates a montage by fusing the original image with a processed image (fused grayscale and binary).
            % Optionally applies a region of interest (ROI) crop before generating the montage.
            % Inputs:
            %   orgimg - Original image.
            %   gsimg  - Grayscale image.
            %   bwimg  - Binary image.
            % Outputs:
            %   montImgs - Montage image combining the original and processed images.
            B = imfuse(gsimg, bwimg, 'falsecolor');
            switch app.cropBoo
                case 0

                case 1
                    xloc = round(app.cropROI(1));
                    yloc = round(app.cropROI(2));
                    B0 = uint8(zeros(size(orgimg)));
                    B0(yloc:size(B,1)+yloc-1,xloc:size(B,2)+xloc-1,:) = B; %replace crop-location pixels with fused image
                    B = B0;
            end
            montImgs = imfuse(orgimg, B, 'montage');

        end

        function lbledImgs = CreatelbledImgs(app,bwimg,data)
            %
            % Creates labeled images by annotating objects (identified in 'data') on a binary image.
            % boundaries are drawn around object centroids with corresponding object IDs displayed.
            % Inputs:
            %   bwimg - Binary image to be annotated.
            %   data  - Struct containing object properties such as Centroid, MajorAxisLength, and ObjectID.
            % Outputs:
            %   lbledImgs - Image with annotated boundaries and object IDs.
            coloredbw = 255 * repmat(uint8(bwimg), 1, 1, 3);
            xypos=[data.Centroid_x_pixels; data.Centroid_y_pixels]';
            radii = ((arrayfun(@(x) x.MajorAxisLength, data)')/2);
            xyposradii = [xypos radii/app.unitConvFactor];
            strcell = arrayfun(@(x) num2str(x.ObjectID'), data, 'UniformOutput', false);
            lbledImgs=insertObjectAnnotation(coloredbw, "circle", xyposradii, strcell, 'LineWidth', 1, 'Color', 'magenta', 'FontSize', 16, 'TextBoxOpacity', 0.35);

        end

        function InitializePreProcessingParams(app)
            %
            % Initializes the all preprocessing parameters to their default values.
            app.invertedImage = false;
            app.cropBoo = 0;
            app.cropROI= '';
            app.imageFlatteningBoo = 0;
            app.enhancedEdgeBoo = 0;
            app.RegionofInterestROICheckBox.Value = 0;
            app.EnhancededgedetectionEEDCheckBox.Value = 0;
            app.ImageuniformitycorrectionIUCCheckBox.Value = 0;
        end

        function InitializeMorphologicalParams(app)
            %
            % Initializes the all morphological parameters to their default values.
            app.strelShapeFamily = 2;
            app.strelShape = 'disk';
            app.strelDim1 = 1;
            app.strelDim2 = 4;
            app.strelDimensionalParams = {app.strelDim1, app.strelDim2};
            app.binarizingThreshold = 0.45;
            [~, ~] = Initializesliders(app, app.strelShape, app.strelDim1, app.strelDim2, app.binarizingThreshold);
            if strcmp(app.strelShape, 'disk'); app.strelShape = 'disk (default)'; end
            app.DropDownObjectShape.Value = app.strelShape;
            if strcmp(app.strelShape, 'disk (default)'); app.strelShape = 'disk'; end
            app.morphStructElement = Createstrel(app,app.strelShape, app.strelDimensionalParams, app.strelShapeFamily);
            Createstrel(app,app.strelShape, app.strelDimensionalParams, app.strelShapeFamily);
        end

        function InitializeScaleParams(app)
            %
            % Initializes the all scaling parameters to their default values.
            app.scaleDataCollection = scaleFigCollection;
            app.units = 'px';
            app.unitConvFactor = 1;
        end

        function InitializeExportPrefs(app)
            % Initializes the all export parameters to their default values.
            app.userPrefExportState.exporg = 1;
            app.userPrefExportState.expbw = 1;
            app.userPrefExportState.exphigh = 1;
            app.userPrefExportState.explbl = 0;
            app.userPrefExportState.expbwbrdrclr = 0;
            app.userPrefExportState.mtlb = 0;
        end


        function SelectAllCBs(app,src, event, checkboxcell, dslctAll)
            %
            % Selects all checkboxes in a given set and updates related UI elements and preferences.
            %
            % Inputs:
            %   src        - The source checkbox triggering the selection.
            %   event      - The event data associated with the checkbox change.
            %   checkboxcell - Cell array containing the checkboxes to be selected.
            %   dslctAll   - The "deselect all" checkbox.
            if ~(event.PreviousValue == 1)
                cellfun(@(x) set(x, 'Value', 1), checkboxcell);
                dslctAll.Value = 0;
                src.Enable = 'off';
                dslctAll.Enable = 1;

                % UPDATE VALUES
                app.userPrefExportState.exporg = double(app.exporgcb.Value);
                app.userPrefExportState.expbw = double(app.expbwcb.Value);
                app.userPrefExportState.exphigh = double(app.exphighcb.Value);
                app.userPrefExportState.explbl = double(app.explblcb.Value);
                app.userPrefExportState.expbwbrdrclr = double(app.mtlbcb.Value);
                app.userPrefExportState.mtlb = double(app.expbwbrdrclrcb.Value);
            end
        end

        function DeSelectAllCBs(app,src, event, checkboxcell, slctAll)
            %
            % Deselects all checkboxes in a given set and updates related UI elements and preferences.
            %
            % Inputs:
            %   src        - The source checkbox triggering the deselection.
            %   event      - The event data associated with the checkbox change.
            %   checkboxcell - Cell array containing the checkboxes to be deselected.
            %   slctAll    - The "select all" checkbox.
            if ~(event.PreviousValue == 1)
                cellfun(@(x) set(x, 'Value', 0), checkboxcell);
                slctAll.Value = 0;
                src.Enable = 'off';
                slctAll.Enable = 1;
                % UPDATE VALUES
                app.userPrefExportState.exporg = double(app.exporgcb.Value);
                app.userPrefExportState.expbw = double(app.expbwcb.Value);
                app.userPrefExportState.exphigh = double(app.exphighcb.Value);
                app.userPrefExportState.explbl = double(app.explblcb.Value);
                app.userPrefExportState.expbwbrdrclr = double(app.mtlbcb.Value);
                app.userPrefExportState.mtlb = double(app.expbwbrdrclrcb.Value);
            end
        end

        function Checknotallselected(~,~,~,checkboxcell, slctAll, ~)
            %
            % Checks if any checkbox in a given set is not selected, and if so, updates the "select all" checkbox
            % to be unchecked and enabled.
            %
            % Inputs:
            %   checkboxcell - Cell array containing the checkboxes to be checked.
            %   slctAll      - The "select all" checkbox.
            if any(cellfun(@(x) isequal(x.Value, 0), checkboxcell))
                slctAll.Value = 0;
                slctAll.Enable = 'on';
            end
        end

        function Checknotalldeselected(~,~,~,checkboxcell, ~, dslctAll)
            %
            % Checks if any checkbox in a given set is selected, and if so, updates the "deselect all" checkbox
            % to be unchecked and enabled.
            %
            % Inputs:
            %   checkboxcell - Cell array containing the checkboxes to be checked.
            %   dslctAll     - The "deselect all" checkbox.

            if any(cellfun(@(x) isequal(x.Value, 1), checkboxcell))
                dslctAll.Value = 0;
                dslctAll.Enable = 'on';
            end
        end



        function PrepareScaleCalibFigure(app)
            %
            % This function initializes and prepares the scale calibration figure

            % Enable the dropdown for calibration options
            app.DropDownCalib.Enable = 'on';

            % Read and display the calibration image
            A = imread(app.ScaleImgTB.Value);%DONE
            imshow(A, 'Parent', app.UIscaleAxes);
            imgsz = size(A);
            set(app.UIscaleAxes, 'xlim', [0 imgsz(2)]);
            set(app.UIscaleAxes, 'ylim', [0 imgsz(1)]);

            % Draw a green calibration line at a predefined position
            h = drawline(app.UIscaleAxes,'tag', 'calibrationLine','Color', 'g', 'Position',[imgsz(2)*0.75 imgsz(1)*0.8; imgsz(2)*0.90 imgsz(1)*0.8], 'LineWidth', 4, 'MarkerSize', 9);

            % Define interactive features for the line (pointer behavior)
            linepointerBehavior.enterFcn =@(hfig, cpp)set(h, ...
                'LineWidth', 1);
            linepointerBehavior.traverseFcn = [];
            linepointerBehavior.exitFcn = ...
                @(hfig, cpp)set(h, ...
                'color', 'g', 'LineWidth', 4);

            % Define pointer behavior when interacting with the figure
            figpointerBehavior.enterFcn =[];
            figpointerBehavior.traverseFcn = [];
            figpointerBehavior.exitFcn = ...
                @(hfig, cpp)set(app.v10UIFigure, ...
                'Pointer', 'arrow');

            % Apply the pointer behavior settings
            iptSetPointerBehavior(h, linepointerBehavior);
            iptSetPointerBehavior(app.v10UIFigure, figpointerBehavior);
            iptPointerManager(app.v10UIFigure, 'enable');

            % Make the calibration line non-deletable and initially hidden
            h.Deletable = 0;
            h.Visible = 'off';

            % Set properties of the axes for scale calibration
            app.UIscaleAxes.LineWidth = 0.5;
            app.UIscaleAxes.Visible = 'on';
            app.UIscaleAxes.XAxis.Color = [0.66 0.66 0.66];
            app.UIscaleAxes.YAxis.Color = [0.66 0.66 0.66];
            app.pxLabel.Visible = 'off';
            app.ImagescalebarvalueandunitLabel.Visible = 'on';
            app.pxLabel.Visible = 'on';
            app.CalibConfirm.Visible = 'on';
            app.efCalibInput.Visible = 'on';
            app.DropDownCalib.Visible = 'on';
            length = h.Position(2,1)-h.Position(1,1);
            app.efCalibInput.Value = length;
            app.pxLabel.Text = [num2str(app.efCalibInput.Value, '%4.2f') ' px = '];
            addlistener(h, 'MovingROI', @(src, event)LineMovingFcn(src, event, app.scaleDataCollection, app.pxLabel, app.efCalibInput, app));

            CheckPreviousScaleRecords(app,app.scaleDataCollection, app.pxLabel, app.efCalibInput, h, app.DropDownCalib, app.CalibConfirm);

            function LineMovingFcn(~,evt, ~, ~, txtField, app)

                %Calculate length (based on horizontal length)
                length1 = evt.CurrentPosition(2,1)-evt.CurrentPosition(1,1);

                %Display value
                disp(length1);
                UpdateScaleCalibText(app)

                % Checks if textfield is disabled (to update it)
                if ~(txtField.Enable == 'on'), txtField.Value = length1; end

                %update class fields
                UpdateScaleCalibTemporaryVars(app);
                %display value
                UpdateScaleCalibText(app);

                % RecalculateCalibrationFactor(app);
                CheckCalibConfirmAllow(app);

            end


            app.ImagescalebarvalueandunitLabel.Enable = 'on';
            app.pxLabel.Enable = 'on';

        end

        function CheckPreviousScaleRecords(app,~, txtStatic, txtField, lineHndle,dropDown,~)
            %
            % Checks for existing scale calibration records and updates the calibration setup accordingly.
            %
            % If no previous calibration exists, it initializes the scale data with the current line position and default units.
            % If a previous calibration exists, it restores the saved scale values, line position, and updates UI elements.
            % It also ensures the calibration line is within image boundaries and enables user input if needed.
            %
            % Inputs:
            %   app        - The app object containing properties and UI components.
            %   txtStatic  - Static text label displaying the pixel-to-unit scale.
            %   txtField   - Editable text field for user input of scale value.
            %   lineHndle  - Handle to the calibration line on the image.
            %   dropDown   - Dropdown menu for selecting the scale unit.

            %Pull scale values from global variable
            dataColl = app.scaleDataCollection;
            switch dataColl.firstTime
                case 1
                    disp('no previous scale value exists. (WRITE MODE)')
                    dataColl.acceptBoo = 0;
                    %Initialize data
                    length2 = lineHndle.Position(2,1)-lineHndle.Position(1,1);
                    dataColl.scaleValTemporary = length2;
                    dataColl.scaleUnitsTemporary = 'px';
                    dataColl.linePositionTemporary = lineHndle.Position;
                    dataColl.pixelLineLengthTemporary = length2;
                    dataColl.conversionFactorTemporary = length2/length2;

                    %update class fields
                    dataColl.scaleVal = dataColl.scaleValTemporary;
                    dataColl.scaleUnits = dataColl.scaleUnitsTemporary;
                    dataColl.linePosition = dataColl.linePositionTemporary;
                    dataColl.pixelLineLength = dataColl.pixelLineLengthTemporary;
                    dataColl.conversionFactor = dataColl.conversionFactorTemporary;



                    %Set firstTime to false
                    dataColl.firstTime = 0;
                case 0
                    A = imread(app.ScaleImgTB.Value);%DONE
                    disp('a previous scale value already exists (OVERWRITE MODE)');
                    dataColl.acceptBoo = 0;
                    dataColl.scaleValTemporary = dataColl.scaleVal;
                    dataColl.scaleUnitsTemporary = dataColl.scaleUnits;
                    dataColl.linePositionTemporary = dataColl.linePosition;
                    dataColl.pixelLineLengthTemporary = dataColl.pixelLineLength;
                    dataColl.conversionFactorTemporary = str2double(dataColl.scaleValTemporary)/dataColl.pixelLineLengthTemporary;


                    txtStatic.Text = [num2str(dataColl.pixelLineLength, '%4.2f') ' px ='];
                    txtField.Value = dataColl.scaleValTemporary;
                    dropDown.Value = dataColl.scaleUnitsTemporary;

                    if (dataColl.linePositionTemporary(1) > size(A,2)+10) || ...
                            (dataColl.linePositionTemporary(2) > size(A,2)+10) || ...
                            (dataColl.linePositionTemporary(3) > size(A,1)+10) || ...
                            (dataColl.linePositionTemporary(4) > size(A,1)+10)
                    else
                        lineHndle.Position = dataColl.linePositionTemporary;
                    end

                    if ~strcmp(dataColl.scaleUnits,'px'); txtField.Enable = 'on'; end

            end
            app.scaleDataCollection = dataColl;

        end

        function CheckCalibConfirmAllow(app)
            %
            % Validates calibration input and manages the state of the calibration confirmation button.
            % This function checks if the user-provided calibration value is numeric and
            % whether it differs from the previously saved calibration data.
            % If valid and different, it enables the confirmation button and related UI elements.
            %
            % Inputs:
            %   app - The app object containing UI components and calibration data.


            %Pull scale values from global variable
            dataColl = app.scaleDataCollection;

            %Display values
            UpdateScaleCalibText(app);

            %CHECK IF TEXTBOX VALUE IS VALID FIRST
            if ~isnumeric(app.efCalibInput.Value)
                %NOT VALID (DONT ENABLE BUTTON)

            else
                %VALID (DO NEXT CHECK)
                %CHECK IF NEW VALUE IS DIFFERENT FROM SAVED VALUE
                identical = CheckIdenticalCalibData(app, dataColl);
                if (identical == 0)
                    %DIFFERENT (ENABLE BUTTON)
                    %disp('DIFFERENT VALUES. SHOULD BE ENABLED)');
                    app.CalibConfirm.Enable = 'on';
                    app.CalibCnfrmHTML.Visible = 'on';
                    app.CalibGuidePanel.Visible = 'on';
                    app.CalibFlashingHTML.HTMLSource = '';
                    app.CalibFlashingHTML.HTMLSource = '<!DOCTYPE html><html lang="en"><head>    <meta charset="UTF-8">    <meta name="viewport" content="width=device-width, initial-scale=1.0">    <title>Fading Blocks</title>    <style>        .container {            position: relative;            width: 105px;            height: 50px;            margin: 10px;            background-color:none;            border-radius:9px;                  }        .block {            position: absolute;            width: 100%;            height: 100%;            opacity: 0;        }        /* Animation for each block with unique timing */        #block1 {            animation: fade 18s infinite;            animation-delay: 0s;        }        #block2 {            animation: fade 18s infinite;            animation-delay: 4s;        }        #block3 {            animation: fade 18s infinite;            animation-delay: 8s;        }        #block4 {            animation: fade 18s infinite;            animation-delay: 12s;        }        /* Define the fade animation */        @keyframes fade {            0% { opacity: 0; }      /* Start transparent */            10% { opacity: 1; }     /* Fully visible */            40% { opacity: 1; }     /* Remain fully visible */            50% { opacity: 0; }     /* Fade out */            100% { opacity: 0; }    /* Remain transparent */        }    </style></head><body>    <div class="container">            <div id="block1" class="block" style="background-color:black; border-radius:9px;">                                <div>         <!-- Scale bar -->      <div style="width:40px; height:4px; background-color:white; position:absolute; bottom:10px; left:30px;"></div>      <!-- Major ticks -->      <div style="width:2px; height:10px; background-color:white; position:absolute; bottom:10px; left:30px;"></div>      <div style="width:2px; height:10px; background-color:white; position:absolute; bottom:10px; left:68px;"></div>      <!-- Minor ticks -->      <div style="width:1px; height:6px; background-color:white; position:absolute; bottom:10px; left:38px;"></div>      <div style="width:1px; height:6px; background-color:white; position:absolute; bottom:10px; left:46px;"></div>      <div style="width:1px; height:6px; background-color:white; position:absolute; bottom:10px; left:54px;"></div>      <div style="width:1px; height:6px; background-color:white; position:absolute; bottom:10px; left:62px;"></div>       <!-- Text next to scale bar -->      <div style="position:absolute; bottom:27px; left:27px; color:white; font-size:10px; font-family:sans-serif;">        (scale bar)      </div>                                                                  </div></div>                                <div id="block2" class="block" style="background-color:black; border-radius:9px;">                <div>         <!-- Scale bar -->      <div style="width:40px; height:4px; background-color:white; position:absolute; bottom:10px; left:30px;"></div>      <!-- Major ticks -->      <div style="width:2px; height:10px; background-color:white; position:absolute; bottom:10px; left:30px;"></div>      <div style="width:2px; height:10px; background-color:white; position:absolute; bottom:10px; left:68px;"></div>      <!-- Minor ticks -->      <div style="width:1px; height:6px; background-color:white; position:absolute; bottom:10px; left:38px;"></div>      <div style="width:1px; height:6px; background-color:white; position:absolute; bottom:10px; left:46px;"></div>      <div style="width:1px; height:6px; background-color:white; position:absolute; bottom:10px; left:54px;"></div>      <div style="width:1px; height:6px; background-color:white; position:absolute; bottom:10px; left:62px;"></div>      <!-- Green line -->      <div style="width:20px; height:2px; background-color:lime; position:absolute; bottom:24px; left:53px;"></div>      <!-- Circular ends for green line -->      <div style="width:6px; height:6px; background-color:lime; border-radius:50%; position:absolute; bottom:22px; left:50px;"></div>      <div style="width:6px; height:6px; background-color:lime; border-radius:50%; position:absolute; bottom:22px; left:69px;"></div>      <!-- Text top of green line -->      <div style="position:absolute; bottom:31px; left:20px; color:lime; font-size:10px; font-family:sans-serif;">        (calibration line)      </div>                                </div></div>                        <div id="block3" class="block" style="background-color:black; border-radius:9px;">                                <div>         <!-- Scale bar -->      <div style="width:40px; height:4px; background-color:white; position:absolute; bottom:10px; left:30px;"></div>      <!-- Major ticks -->      <div style="width:2px; height:10px; background-color:white; position:absolute; bottom:10px; left:30px;"></div>      <div style="width:2px; height:10px; background-color:white; position:absolute; bottom:10px; left:68px;"></div>      <!-- Minor ticks -->      <div style="width:1px; height:6px; background-color:white; position:absolute; bottom:10px; left:38px;"></div>      <div style="width:1px; height:6px; background-color:white; position:absolute; bottom:10px; left:46px;"></div>      <div style="width:1px; height:6px; background-color:white; position:absolute; bottom:10px; left:54px;"></div>      <div style="width:1px; height:6px; background-color:white; position:absolute; bottom:10px; left:62px;"></div>      <!-- Green line -->      <div style="width:20px; height:2px; background-color:lime; position:absolute; bottom:18px; left:50px;"></div>      <!-- Circular ends for green line -->      <div style="width:6px; height:6px; background-color:lime; border-radius:50%; position:absolute; bottom:16px; left:47px;"></div>      <div style="width:6px; height:6px; background-color:lime; border-radius:50%; position:absolute; bottom:16px; left:66px;"></div>      <!-- Text next to scale bar -->      <div style="position:absolute; bottom:5px; left:72px; color:white; font-size:10px; font-family:sans-serif;">        20 µm      </div>      <!-- Text top of green line -->      <div style="position:absolute; bottom:25px; left:72px; color:lime; font-size:10px; font-family:sans-serif;">        21 px      </div></div>                        </div>        <div id="block4" class="block" style="background-color:black; border-radius:9px;">                        <div>    <div style="width:16px; height:16px; background-color:lightgreen; border-radius:50%; position:relative; left:4px; top:4px;">        <div style="width:2px; height:8px; background-color:white; position:absolute; top:4px; left:8px; transform:rotate(50deg);"></div>        <div style="width:2px; height:4px; background-color:white; position:absolute; top:6px; left:4px; transform:rotate(-45deg);"></div>    </div>      <!-- Scale bar -->      <div style="width:40px; height:4px; background-color:white; position:absolute; bottom:10px; left:30px;"></div>      <!-- Major ticks -->      <div style="width:2px; height:10px; background-color:white; position:absolute; bottom:10px; left:30px;"></div>      <div style="width:2px; height:10px; background-color:white; position:absolute; bottom:10px; left:68px;"></div>      <!-- Minor ticks -->      <div style="width:1px; height:6px; background-color:white; position:absolute; bottom:10px; left:38px;"></div>      <div style="width:1px; height:6px; background-color:white; position:absolute; bottom:10px; left:46px;"></div>      <div style="width:1px; height:6px; background-color:white; position:absolute; bottom:10px; left:54px;"></div>      <div style="width:1px; height:6px; background-color:white; position:absolute; bottom:10px; left:62px;"></div>      <!-- Green line -->      <div style="width:40px; height:2px; background-color:lime; position:absolute; bottom:18px; left:30px;"></div>      <!-- Circular ends for green line -->      <div style="width:6px; height:6px; background-color:lime; border-radius:50%; position:absolute; bottom:16px; left:27px;"></div>      <div style="width:6px; height:6px; background-color:lime; border-radius:50%; position:absolute; bottom:16px; left:66px;"></div>      <!-- Text next to scale bar -->      <div style="position:absolute; bottom:5px; left:72px; color:white; font-size:10px; font-family:sans-serif;">        20 µm      </div>      <!-- Text top of green line -->      <div style="position:absolute; bottom:25px; left:72px; color:lime; font-size:10px; font-family:sans-serif;">        35 px      </div></div></div>                                </div>    </body></html>';
                else
                    %UNCHANGED (DONT ENABLE BUTTON)
                    %disp('IDENTICAL');

                end

            end

        end

        function identical = CheckIdenticalCalibData(app,~)
            %
            % Compares temporary and saved scale calibration data to detect changes.
            % This block checks if the user-modified calibration values match the previously saved data.
            % It compares scale value, units, pixel line length, and line position.
            %
            % Inputs:
            %   dataColl - Struct containing both temporary and saved scale calibration data, including:
            %              - scaleValTemporary, scaleVal: Temporary and saved scale values.
            %              - scaleUnitsTemporary, scaleUnits: Temporary and saved scale units.
            %              - pixelLineLengthTemporary, pixelLineLength: Temporary and saved pixel line lengths.
            %              - linePositionTemporary, linePosition: Temporary and saved line positions.
            %
            % Outputs:
            %   identical - Logical value indicating if all compared calibration data are identical (1) or not (0).
            %
            dataColl = app.scaleDataCollection;
            a = strcmp(dataColl.scaleValTemporary, dataColl.scaleVal);
            b = strcmp(dataColl.scaleUnitsTemporary, dataColl.scaleUnits);
            c = isequal(dataColl.pixelLineLengthTemporary,dataColl.pixelLineLength);
            if ~isempty(dataColl.linePositionTemporary)
                d = all(all(arrayfun(@(x,y) isequal(x,y) , dataColl.linePositionTemporary, dataColl.linePosition)));
            else
                d = 0;
            end
            identical = a&b&c&d;
            app.scaleDataCollection = dataColl;
        end

        function RecalculateCalibrationFactor(app)
            %
            % Recalculates the calibration factor based on the selected scale and updates the relevant fields.
            % This function computes the conversion factor used for calibration based on either the scale value or pixel length,
            % depending on the user's selection in the dropdown menu. It also updates the display with the recalculated factor.

            %Pull scale values from global variable
            dataColl = app.scaleDataCollection;


            %update class fields & display values
            if ~strcmp(app.DropDownCalib.Value, 'px')
                dataColl.conversionFactorTemporary = dataColl.scaleValTemporary/dataColl.pixelLineLengthTemporary;
                %app.Label2_cft.Text = num2str(dataColl.scaleValTemporary/dataColl.pixelLineLengthTemporary,'%4.2f');
            else
                dataColl.conversionFactorTemporary = dataColl.pixelLineLengthTemporary/dataColl.pixelLineLengthTemporary;
                %app.Label2_cft.Text = num2str(dataColl.pixelLineLengthTemporary/dataColl.pixelLineLengthTemporary,'%4.2f');
            end
            UpdateScaleCalibText(app)

            %Update global scaleDataCollection variable
            app.scaleDataCollection = dataColl;
        end

        function SetNewScaleCalibValues(app)
            %
            % This function updates the global scale calibration values, resets the temporary variables, and updates the display with the new values.
            %

            %Pull scale values from global variable
            dataColl = app.scaleDataCollection;

            %update class fields
            dataColl.acceptBoo = 1;
            dataColl.firstTime = 0;
            dataColl.scaleVal = dataColl.scaleValTemporary;
            dataColl.scaleUnits = dataColl.scaleUnitsTemporary;
            dataColl.pixelLineLength = dataColl.pixelLineLengthTemporary;
            dataColl.linePosition = dataColl.linePositionTemporary;
            dataColl.conversionFactor = dataColl.conversionFactorTemporary;
            %- (clear temporary values)
            dataColl.scaleUnitsTemporary = [];
            dataColl.scaleValTemporary = [];
            dataColl.pixelLineLengthTemporary = [];
            dataColl.linePositionTemporary = [];
            dataColl.conversionFactorTemporary = [];

            %Display values
            UpdateScaleCalibText(app)
            app.pxLabel.Text = [num2str(dataColl.pixelLineLength,'%4.2f') ' px ='];

            %Update global scaleDataCollection variable
            app.scaleDataCollection = dataColl;

            %Update app scale/conversion factor
            app.units = app.scaleDataCollection.scaleUnits; % CRITICAL!
            app.unitConvFactor = app.scaleDataCollection.conversionFactor; % CRITICAL!

            %Display results
            app.unitLengthLabel.Text = app.scaleDataCollection.scaleUnits;
            app.scaleConvertLabel.Text = num2str(app.scaleDataCollection.conversionFactor);
            app.scaleConvertLabel.Tooltip = num2str(app.scaleDataCollection.conversionFactor);

        end

        function UpdateScaleCalibText(app)
            %
            % This function updates the user interface labels to show the current scale value, scale units, pixel line length,
            % line position, and conversion factor, including both the saved and temporary values.
            dataColl = app.scaleDataCollection;
            app.Label2_sv.Text = num2str(dataColl.scaleVal,'%4.2f') ;
            app.Label2_su.Text = dataColl.scaleUnits;
            app.Label2_pl.Text = num2str(dataColl.pixelLineLength,'%4.2f') ;
            app.Label2_lp.Text = num2str(dataColl.linePosition(1,1),'%4.2f') ;
            app.Label2_cf.Text = num2str(dataColl.conversionFactor,'%4.2f') ;
            %-Temporary
            app.pxLabel.Text = [num2str(dataColl.pixelLineLengthTemporary,'%4.2f') ' px ='];
            app.Label2_svt.Text = num2str(dataColl.scaleValTemporary,'%4.2f');
            app.Label2_sut.Text = num2str(dataColl.scaleUnitsTemporary,'%4.2f');
            app.Label2_plt.Text = num2str(dataColl.pixelLineLengthTemporary,'%4.2f');
            if~isempty(dataColl.linePositionTemporary)
                app.Label2_lpt.Text = num2str(dataColl.linePositionTemporary(1,1),'%4.2f');
            else
                app.Label2_lpt.Text = num2str(dataColl.linePositionTemporary,'%4.2f');
            end
            app.Label2_cft.Text = num2str(dataColl.conversionFactorTemporary,'%4.2f');
        end

        function UpdateScaleCalibTemporaryVars(app)
            %
            % This function retrieves the user-provided scale value and selected units, calculates the pixel line length from
            % the current horizontal line object, and stores these as temporary values. It then recalculates the calibration factor.

            %Pull scale values from global variable
            dataColl = app.scaleDataCollection;
            %update class fields
            dataColl.scaleValTemporary = app.efCalibInput.Value;
            dataColl.scaleUnitsTemporary = app.DropDownCalib.Value;
            %get the horizontal line object
            h = findobj(app.UIscaleAxes, 'Tag', 'calibrationLine');
            length = h.Position(2,1)-h.Position(1,1);
            dataColl.pixelLineLengthTemporary = length;
            dataColl.linePositionTemporary = h.Position;
            RecalculateCalibrationFactor(app);

        end

        function UpdateIconStatus(~, handle, inputState)
            %
            % This function alters the HTML code for the icon displayed in the UI based on the input state,
            % showing different visual states for enabled, disabled, or hidden conditions.
            %
            % Inputs:
            %   handle    - UI component handle(s) to update the icon display.
            %   inputState - Integer indicating the desired icon state:
            %               -1: Hide icon
            %                1: Enabled (selected by user)
            %                0: Disabled (not selected by user)
            switch inputState
                case -1 % Hide icon
                    htmlCode = '<div></div>';
                case 1 % Enabled (selected by user)
                    htmlCode = ['<div style="width:16px; height:16px; ' ...
                        'background-color:#66E866; border-radius:50%; position:relative;"> ' ...
                        ' <div style="width:2px; height:8px; background-color:white; position:absolute;' ...
                        ' top:4px; left:8px; transform:rotate(50deg);"></div>  <div style="width:2px;' ...
                        ' height:4px; background-color:white; position:absolute; top:6px; left:4px; ' ...
                        'transform:rotate(-45deg);"></div></div>'];
                case 0 % Disabled (not selected by user)
                    htmlCode = ['<div style="width:16px; height:16px; ' ...
                        'background-color:red; border-radius:50%; position:relative;">  ' ...
                        '<div style="width:2px; height:8px; background-color:white; ' ...
                        'position:absolute; top:4px; left:7px; transform:rotate(45deg);"></div> ' ...
                        ' <div style="width:2px; height:8px; background-color:white; ' ...
                        'position:absolute; top:4px; left:7px; transform:rotate(-45deg);">' ...
                        '</div></div>'];
            end
            if ~iscell(handle)
                handle.HTMLSource = htmlCode;
            else
                cellfun(@(x) set(x, 'HTMLSource', htmlCode), handle);
            end

        end

        function exportBoo = AssignExportBoo(app)
            % This function checks the values of multiple checkboxes in the UI and assigns a boolean indicating whether
            % default or custom export options should be applied based on the user's selections.
            %
            % Inputs:
            %   None
            %
            % Outputs:
            %   exportBoo - Boolean indicating whether custom export options (1) or default options (0) should be used.
            %
            if ((app.exporgcb.Value == 1) && (app.expbwcb.Value == 1) && (app.exphighcb.Value == 1)...
                    && (app.explblcb.Value == 0) && (app.expbwbrdrclrcb.Value == 0) && (app.mtlbcb.Value == 0))
                exportBoo = 0; % (Default export options, no special requirement)
            else
                exportBoo = 1; % (Custom export options, special requirements)
            end


        end


        function UpdateExportOptsCBs(app)
            %
            % This function sets the values of the export options checkboxes to match the user's previous preferences
            %
            app.exporgcb.Value = app.userPrefExportState.exporg;
            app.expbwcb.Value = app.userPrefExportState.expbw;
            app.exphighcb.Value = app.userPrefExportState.exphigh;
            app.explblcb.Value = app.userPrefExportState.explbl;
            app.expbwbrdrclrcb.Value = app.userPrefExportState.expbwbrdrclr;
            app.mtlbcb.Value = app.userPrefExportState.mtlb;

        end

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


        function ReinitializeImport(app)
            %
            % This function clears the relevant data structures, resets the
            % file list, and disables certain UI elements related to the
            % import step
            app.cleanedDatstore = [];
            app.inputDatastoreProperties = [];
            app.fileNames = [];
            app.ListBox_2.Items = {};
            app.s1PthLbl.Text = '';
            app.s1PthLbl.Tooltip = '';
            app.rawImgDatastore = [];
            app.ButBrowseMain.Enable = 'on';
            app.ButDeleteFilesStep1.Enable = 'off';
            app.NxtButStep1.Enable = 'off';
            app.NxtButStep1.Tooltip = 'You must import images first';
            app.ListBox_2.Items = {'No files found'};
            app.UIimportAxes.Children.CData =[];
            app.UIimportAxes.PlotBoxAspectRatio = [1.4272151898734178 1 1];
            app.UIimportAxes.Visible = 'on';
        end

        function ReinitializePreproccessing(app)
            %
            % This function clears the pre-processing operations applied on images
            app.userPrefActiveState.invertedImage = 0;
            app.userPrefActiveState.imgProcessVals = 0;
            app.userPrefActiveState.ROI = 0;
            app.userPrefActiveState.imageFlattening = 0;
            app.userPrefActiveState.enhancedEdge = 0;
            app.userPrefActiveState.scaleFactor = 0;
            app.userPrefActiveState.exportOpts = 0;
            InitializePreProcessingParams(app)
            InitializeMorphologicalParams(app)
            InitializeScaleParams(app)
            InitializeExportPrefs(app)
        end



        function shape = AvoidShapeError(~,shape)
            %
            % Prevents error if shape 'disk' is selected due to 'default'
            % text being written in the dropdown field
            %
            % Inputs:
            %   shape - the shape of the morphological operator

            if strcmp(shape, 'disk (default)')
                shape = 'disk';
            else
                % do nothing
            end
        end

        function ToggleSwitch(~, button, state)
            %
            % Toggles the switch button's state and appearance based on the input state.
            %
            % Inputs:
            %   button - UI component representing the switch button.
            %   state  - String indicating the desired state ('on' or 'off').
            %
            switch state
                case 'off'
                    button.Value = 0;
                    button.BackgroundColor = [0.96,0.96,0.96];
                case 'on'
                    button.Value = 1;
                    button.BackgroundColor = [0.00,1.00,0.15];
            end

        end

        function TempButtonEnable(~, button, state)
            %
            % Enables or disables the given button based on the specified state.
            %
            % Inputs:
            %   button - UI component representing the button to be enabled or disabled.
            %   state  - String indicating the desired state ('on' or 'off').
            %

            button.Enable = state;
        end

        function ValidateMenuItem(app,evt)
            %
            % This function activates the menu corresponding to the selected tab while disabling others.
            % If the 'About' tab is selected, the previously active tab remains enabled.
            %
            % Inputs:
            %   evt - String specifying the selected tab ('homeTab', 'step1Tab', 'step2Tab',
            %         'step3Tab', 'step4Tab', 'step5Tab', 'step6Tab', or 'aboutTab').
            %
            booArr = {'off','off','off','off','off','off','off','on'};
            tabCell = {app.HomeMenu,...
                app.ImportMenu,...
                app.PreprocessMenu,...
                app.CalibrateMenu,...
                app.SegmentMenu,...
                app.PreviewMenu,...
                app.ExportMenu,...
                app.AboutMenu};
            switch evt
                case 'homeTab'
                    booArr{1} = 'on';
                case 'step1Tab'
                    booArr{2} = 'on';
                case 'step2Tab'
                    booArr{3} = 'on';
                case 'step3Tab'
                    booArr{4} = 'on';
                case 'step4Tab'
                    booArr{5} = 'on';
                case 'step5Tab'
                    booArr{6} = 'on';
                case 'step6Tab'
                    booArr{7} = 'on';
                case 'aboutTab'
                    booArr{8} = 'on';
                    booArr{find(cell2mat(cellfun(@(x) strcmp(app.lastSelectedTab.Title, x.Tag), tabCell, 'UniformOutput', false))==1)} = 'on'; % keep last tab enabled
            end
            cellfun(@(x,y) set(x,'Enable', y), tabCell, booArr);
        end

        function SaveOutput(app, dataTable)
            %
            % This function saves the provided data table as a CSV file and user preferences as a .mat file.
            % It conditionally exports original, montage, labeled, binarized, and border-cleared images
            % based on user export preferences. MATLAB data structures are saved if selected.
            % A progress dialog updates throughout the export process.
            %
            % Inputs:
            %   dataTable - Table containing processed data for export.
            %
            app.saveDialog = []; %initialize save progress dialog
            [selectedDir, imgsDir] = SelectOutputDir(app);


            [~,enabledloc] = find(structfun(@(x) x, app.userPrefExportState)'==1);

            counter = 0;
            oneStepCounter = 0;
            sumEnabled = length(enabledloc)+1;
            serialNos = 1:1:length(enabledloc)+1;

            %Save the user preferences file
            config = app.config;
            save(fullfile(selectedDir, 'Preferences', 'Preferences.mat'),"-struct","config");
            focus(app.v10UIFigure);
            app.saveDialog = uiprogressdlg(app.v10UIFigure, 'Title', 'Please wait', 'Message', 'Saving files', 'Value', 1/(app.cleanedDatstore.numpartitions*sumEnabled), 'Cancelable','on');


            % Export to CSV
            if isequal(app.userPrefExportState.mtlb,1); oneStepCounter = 1;end
            app.saveDialog.Value = (counter)/((app.cleanedDatstore.numpartitions*(sumEnabled-1-oneStepCounter))+1+oneStepCounter);
            writetable(dataTable, fullfile(selectedDir, 'data.csv'),'Encoding','UTF-8');
            counter = counter + 1;


            if isequal(app.userPrefExportState.exporg,1)

                %app.saveDialog.Value = serialNos(counter)/sumEnabled;
                app.saveDialog.Message = 'Saving copies of original images';
                mkdir(imgsDir, 'Originals'); % Create Originals directory
                [cancelState, counter] = saveImgFun(app, app.cleanedDatstore, fullfile(imgsDir, 'Originals'), 'O_', app.fileNames, app.saveDialog.CancelRequested, counter, sumEnabled, oneStepCounter);
                if cancelState == 1; return; end
                %counter = counter + 1;
            end


            % Create montage images
            if isequal(app.userPrefExportState.exphigh,1)
                %app.saveDialog.Value = serialNos(counter)/sumEnabled;
                app.saveDialog.Message = 'Creating highlighted images';
                montgImgs = transform(app.cleanedDatstore, app.greyScaleDatastore, app.binarizedDatastore, @(x,y,z) CreateMontage(app,x,y,z));
                app.saveDialog.Message = 'Saving highlighted images';
                mkdir(imgsDir, 'Highlighted');
                [cancelState, counter]  = saveImgFun(app, montgImgs, fullfile(imgsDir, 'Highlighted'), 'H_', app.fileNames, app.saveDialog.CancelRequested, counter, sumEnabled, oneStepCounter);
                if cancelState == 1; return; end
                %counter = counter + 1;
            end
            %Create labelled images


            if isequal(app.userPrefExportState.explbl,1)
                %app.saveDialog.Value = serialNos(counter)/sumEnabled;
                app.saveDialog.Message = 'Creating labelled images';
                lbledImgs = transform(app.binarizedDatastore, app.segmentationDataStructs, @(x,y) CreatelbledImgs(app,x,y));
                app.saveDialog.Message = 'Saving labelled images';
                mkdir(imgsDir, 'Labelled');
                [cancelState, counter]  = saveImgFun(app, lbledImgs, fullfile(imgsDir, 'Labelled'), 'L_', app.fileNames, app.saveDialog.CancelRequested, counter, sumEnabled, oneStepCounter);
                if cancelState == 1; return; end
                %counter = counter + 1;
            end


            if isequal(app.userPrefExportState.expbw,1)
                %app.saveDialog.Value = serialNos(counter)/sumEnabled;
                app.saveDialog.Message = 'Saving binarized images';
                mkdir(imgsDir, 'Binarized');
                [cancelState, counter]  = saveImgFun(app, app.binarizedDatastore, fullfile(imgsDir, 'Binarized'), 'B_', app.fileNames, app.saveDialog.CancelRequested, counter, sumEnabled, oneStepCounter);
                if cancelState == 1; return; end
                %counter = counter + 1;
            end


            if isequal(app.userPrefExportState.expbwbrdrclr,1)
                %app.saveDialog.Value = serialNos(counter)/sumEnabled;
                app.saveDialog.Message = 'Saving cleared-border images';
                mkdir(imgsDir, 'Binarized - clear border');
                [cancelState, counter]  = saveImgFun(app, app.borderClearBinarizedDatastore, fullfile(imgsDir, 'Binarized - clear border'), 'BCB_', app.fileNames, app.saveDialog.CancelRequested, counter, sumEnabled, oneStepCounter);
                if cancelState == 1; return; end
                %app.saveDialog.Value = serialNos(counter)/sumEnabled;
                %counter = counter + 1;
            end


            if isequal(app.userPrefExportState.mtlb,1)
                mStruct = app.segmentationDataStructs;
                reset(mStruct);
                mStruct = read(mStruct);
                if app.saveDialog.CancelRequested
                    return
                end
                save(fullfile(selectedDir, 'mStruct'), 'mStruct', '-v7.3');
                counter = counter + 1;
                app.saveDialog.Value = (counter)/((app.cleanedDatstore.numpartitions*(sumEnabled-1-oneStepCounter))+1+oneStepCounter);
                app.saveDialog.Cancelable = 'off';
            end

            app.saveDialog.Icon = 'success';
            disp('done');
            app.savedLabel.Visible = 'on';
            app.savedLabel.Tooltip = ['saved in: ' selectedDir];

            close(app.saveDialog);
            focus(app.v10UIFigure);
            uialert(app.v10UIFigure,'Saving operation completed successfully.','Success','Interpreter','html', 'Icon', 'success');

        end


        function SwitchTab(app,newtab,oldtab)
            %
            % Switches the active tab in the application UI.
            %
            % Inputs:
            %   newtab - The tab to switch to.
            %   oldtab - The previously active tab to store.
            %

            %Check tab is 'About' then skip overwrite
            if strcmp(app.TabGroup4.SelectedTab.Title, app.AboutMenu.Tag)
            else
                app.lastSelectedTab = oldtab;
            end
            app.TabGroup4.SelectedTab = newtab;
        end



        function ExplodeImgSegmentPreview(app, previewBoo)
            %
            % This function either closes or opens the segmented image preview based on the preview toggle state.
            %
            % Inputs:
            %   previewBoo - Toggle control indicating whether to show (1) or hide (0) the preview.
            %
            switch previewBoo.Value
                case 0
                    h = findobj(app.detachedSegPreviewFig, 'Tag', 'detachedSegPreviewFig');
                    CloseInteractiveFigure(app, h);
                case 1
                    [~, locallyProcessedImg] = ProcessSingleImg(app,app.morphStructElement, app.segPreviewSpinnerCounter);
                    [app.detachedSegPreviewFig, app.detachedSegPreviewAx, app.interactiveImg] = CreateInteractiveFig(app, locallyProcessedImg);

            end
        end

        function ChangeUIState(~, state, varargin)
            %
            % ChangeUIState updates the state of specified UI components in the app
            %
            % Inputs:
            % app -  The app instance (App Designer object)
            % state -  The desired state ('enable', 'disable', 'show', 'hide')
            % varargin -  List of components whose state will be changed

            % Determine the property and value based on the state
            switch lower(state)
                case 'enable'
                    property = 'Enable';
                    value = 'on';
                case 'disable'
                    property = 'Enable';
                    value = 'off';
                case 'show'
                    property = 'Visible';
                    value = 'on';
                case 'hide'
                    property = 'Visible';
                    value = 'off';
                otherwise
                    error('Invalid state. Use ''enable'', ''disable'', ''show'', or ''hide''.');
            end

            % Loop through the components and apply the state
            for i = 1:numel(varargin)
                component = varargin{i};
                if isprop(component, property) % Ensure the component has the property
                    component.(property) = value;
                else
                    warning('Component %d does not have property ''%s''. Skipped.', i, property);
                end
            end
        end


        function PreprocessingMethod(app, choice)
            %
            % Selects the pre-processing method based on user choice.
            %
            % Inputs:
            %   choice - String specifying the pre-processing method ('manual' or 'file').
            %
            if strcmp(choice, 'manual')
                % Pre-processing will be based on manual selection
                % No need to do anything here

            elseif strcmp(choice, 'file')
                % Pre-processing will be based on file import
                %Use function to enable import options via 'input file'
                [~] = PreProcessbyFile(app, 'process');


            end
        end


        function HandleExportCheckBoxes(app,event, checkbox, exportState)
            %
            % Updates the export state based on checkbox interaction.
            %
            % Inputs:
            %   event       - Event data from the checkbox interaction.
            %   checkbox    - Checkbox UI component that was interacted with.
            %   exportState - String specifying the export option to update.
            %
            app.userPrefExportState.(exportState) = double(checkbox.Value);
            CBs = {app.exporgcb, app.expbwcb, app.exphighcb, app.explblcb, app.expbwbrdrclrcb, app.mtlbcb};
            Checknotallselected(app, event.Source,event,CBs, app.selectallcb, app.deselectallcb);
            Checknotalldeselected(app, event.Source,event,CBs, app.selectallcb, app.deselectallcb);
        end

        function PreProcessSelectionHandler(app, event)
            %
            % Handles user selection between manual and file-based preprocessing methods.
            % Prompts for confirmation before switching methods and resets preprocessing parameters accordingly.
            % Enables or disables relevant UI panels based on the selected method.
            %
            % Inputs:
            %   event - Event data from the selection interaction.
            %
            selection = uiconfirm(app.v10UIFigure, 'Switching will erase any previously set operations. Continue?', 'warning', 'Icon', 'warning');
            switch selection
                case 'Cancel' % CANCELED
                    if strcmp(event.NewValue.Tag, 'manual')
                        app.PreferencesfileuploadButton.Value = 1;
                    else
                        app.ManualselectionButton.Value = 1;
                    end
                case 'OK' % CONFIRMED
                    %two choices, 'manual' or 'file'
                    app.preProcessMethod = event.NewValue.Tag;

                    %--RESET ALL PARAMETERS (GLOBAL RESET)
                    InitializePreProcessingParams(app)
                    InitializeMorphologicalParams(app)
                    InitializeScaleParams(app)
                    InitializeExportPrefs(app)


                    %find indicies of HTML icons
                    htmlidxs = cell2mat(arrayfun(@(x) find(findobj(app.Panel_11.Children, 'Tag', 's2html') == x), app.Panel_11.Children, 'UniformOutput', false));
                    %size of Panel children (including HTML icons)
                    sz = 1:size(app.Panel_11.Children,1);
                    sz = sz';

                    %manual import options method is chosen
                    if strcmp(event.NewValue.Tag, 'manual')
                        % enable 2a, disable 2b
                        set(app.Panel_10.Children, 'Enable', 'on');
                        set(app.Panel_11.Children(setdiff(sz, htmlidxs)), 'Enable', 'off');
                        app.Panel_10.FontWeight = "bold";
                        app.Panel_11.FontWeight = "normal";
                        UpdateIconStatus(app, {app.s2html1, app.s2html2, app.s2html3, app.s2html4, app.s2html5, app.s2html6, app.s2html7}, -1);

                        %file import options method is chosen
                    else
                        % enable 2b, disable 2a
                        set(app.Panel_10.Children, 'Enable', 'off');
                        set(app.Panel_11.Children(setdiff(sz, htmlidxs)), 'Enable', 'on');
                        app.Panel_10.FontWeight = "normal";
                        app.Panel_11.FontWeight = "bold";


                    end
            end
        end

        function RegionofInterestCheckBoxHandler(app, event)
            %
            % Handles the Region of Interest (ROI) checkbox toggle.
            % Opens the ROI selection window when enabled and resets the ROI if disabled.
            % Displays a progress dialog prompting the user to close the ROI window before proceeding.
            %
            % Inputs:
            %   event - Event data from the ROI checkbox interaction.
            %
            handle = findall(0,'type','figure','tag','cropFigure');
            if ~isempty(handle)
                delete(handle);
                reset(app.cleanedDatstore);
                return
            end
            value = app.RegionofInterestROICheckBox.Value;
            app.cropBoo = value;


            dispWarning = uiprogressdlg(app.v10UIFigure,'Title','Waiting for user action', ...
                'Message', 'You must close the Region of interest (ROI) window to continue using the app.', 'Indeterminate','on');
            if ~isempty(fieldnames(app.inputDatastoreProperties))
                switch value
                    case true
                        DefineROI(app);
                    case false
                        % do nothing
                        app.cropROI = [];
                end
            else
                % No image is loaded, do nothing

            end
            if isempty(app.cropROI)
                event.Source.Value = 0;
                app.cropBoo = 0;
            end
            close(dispWarning);
        end

        function UpdateBySliderValue(app, event, sliderIdentifier)
            %
            % Handles slider value changes and updates related parameters.
            % Based on the slider identifier, it updates specific morphological parameters,
            % binarization threshold, and refreshes the image preview.
            %
            % Inputs:
            %   event - Event data from the slider interaction.
            %   sliderIdentifier - Identifier for the slider (e.g., 'strelDim1', 'strelDim2', 'binarizingThreshold').
            %
            tooSoonBoo = CheckTimeDiff(app, 6); % for performance
            if tooSoonBoo == true
                % skip operation
                % (prevents overloading CPU)
            else
                switch sliderIdentifier
                    case 'strelDim1'
                        changingValue = round(event.Value);
                        changingValue = HandleSpecialSliders(app,changingValue,app.strelShape, 'strelDim1');
                        app.strelDim1 = changingValue;
                        app.strelDimensionalParams{1} = app.strelDim1;
                        app.TFieldVal1.Value = num2str(app.strelDim1);
                        app.morphStructElement = Createstrel(app,app.strelShape, app.strelDimensionalParams, app.strelShapeFamily);
                    case 'strelDim2'
                        changingValue = round(event.Value);
                        changingValue = HandleSpecialSliders(app,changingValue,app.strelShape, 'strelDim2');
                        app.strelDim2 = changingValue;
                        app.strelDimensionalParams{2} = app.strelDim2;
                        app.TFieldVal2.Value = num2str(changingValue);
                        app.morphStructElement = Createstrel(app,app.strelShape, app.strelDimensionalParams, app.strelShapeFamily);
                    case 'binarizingThreshold'
                        changingValue = event.Value;
                        app.binarizingThreshold = changingValue;
                        app.TFieldVal3.Value = num2str(changingValue,'%.3f');
                end

                localimgpreview = FastUpdateFunction(app, app.morphStructElement, app.extractedDatastoreImage);
                app.SegTuningFigure.ImageSource = localimgpreview;
                UpdatedetachedSegTuningFig(app);
            end
            app.prevTimeStamp = char(datetime('Now', 'Format', 'HH:mm:ss.SSS')); % get timestamp
        end

        function UpdateImportTabUI(app,fileName, path, error)
            %
            % Updates the Import tab UI based on the provided file information.
            % If no error occurred, updates the list box with file names and the path label.
            %
            % Inputs:
            %   fileName - Name(s) of the imported file(s).
            %   path - Directory path where the file(s) are located.
            %   error - Boolean indicating whether an error occurred during the import.
            %
            if not(error)
                if ~ iscell(fileName)
                    app.ListBox_2.Items = {fileName};
                    PreviewImportedImg(app, app.fileNames);
                else
                    app.ListBox_2.Items = fileName;


                end
                app.s1PthLbl.Text = path;
                app.s1PthLbl.Tooltip = path;


            end

        end

        function [varargout] = DetachSegTuningFigure(app, detachedFigure, figureOpenedBoo)
            %
            % Manages the creation and detachment of the segmentation tuning figure.
            % If the figure is not already open, creates a new figure and displays the tuning image.
            % If the figure is already open, ensures it is not recreated.
            %
            % Inputs:
            %   detachedFigure - Handle of the previously opened detached figure (if any).
            %   figureOpenedBoo - Boolean indicating whether the figure is currently open (1) or not (0).
            %
            % Outputs:
            %   detachedFigure - The handle to the newly opened or existing detached figure.
            %
            switch figureOpenedBoo
                case 0
                    if isempty(detachedFigure) || ~ishandle(detachedFigure)
                        %Condition if a figure was previously opened
                        if ~isempty(app.detachedSegTuningFigData)
                            detachedFigure = figure('SizeChangedFcn', {@app.GetDetachedFigPos,1}, 'Position', app.detachedSegTuningFigData.Position);
                            set(detachedFigure, 'Tag', 'detachedSegTuningFig');
                            set(detachedFigure, 'DeleteFcn', @(src,event)tryCloseME(app, detachedFigure));
                            %Condition if no previous figure was ever opened
                        else
                            detachedFigure = figure('SizeChangedFcn', {@app.GetDetachedFigPos,0});
                            set(detachedFigure, 'DeleteFcn', @(src,event)tryCloseME(app, detachedFigure));
                            set(detachedFigure, 'Tag', 'detachedSegTuningFig');
                        end
                        AxesH = axes(detachedFigure);
                        drawnow;
                        InSet = get(AxesH, 'TightInset');
                        set(AxesH, 'Position', [InSet(1:2), 1-InSet(1)-InSet(3), 1-InSet(2)-InSet(4)]);
                        cla reset;

                        imshow(app.SegTuningFigure.ImageSource, 'Parent', AxesH, Border="loose", InitialMagnification=100);
                        set(detachedFigure, 'Position', app.detachedSegTuningFigData.Position);
                        varargout{1} = detachedFigure;
                    else
                        % do nothing (figure already exists)
                        varargout{1} = [];
                    end
                case 1
                    % do nothing (figure is currently opened)
                    varargout{1} = app.detachedSegTuningFig;
            end
        end


        function tryCloseME(app, fig)
            %
            % Attempts to close a detached figure and handles any errors that occur during the process.
            % If the figure handle is invalid or deleted, a message is displayed. Otherwise, the error is rethrown.
            %
            % Inputs:
            %   fig - Handle to the figure to be closed.
            %
            try
                CloseDetachedFigure(app, fig);
            catch ME
                if strcmp(ME.identifier, 'MATLAB:class:InvalidHandle')
                    disp('Figure object was invalid or already deleted.');
                else
                    rethrow(ME);
                end
            end
        end

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

        function  [cancelState, counter] = saveImgFun(app, Imageds, imageFolder, Prefix, FileName, cancelRequest, counter, sumEnabled, oneStepCounter)
            %
            % Saves images from the provided datastore to the specified folder with a given prefix.
            % Supports cancellation during the saving process and handles single or multiple image partitions.
            %
            % Inputs:
            %   Imageds       - Datastore containing images to be saved.
            %   imageFolder   - Destination folder for saving images.
            %   Prefix        - Prefix for saved image filenames.
            %   FileName      - Name(s) of the image file(s).
            %   cancelRequest - Boolean flag to cancel the save operation if set to true.
            %   counter       - double, An increment that constitute the current step in the entire process
            %   sumEnabled    - Integer, The number of enabled export options
            %   oneStepCounter- Integer, A special counter that counts processes that consist of a single step
            %
            % Outputs:
            %   cancelState   - Returns 1 if the save operation was canceled, otherwise 0.
            %   counter       - double, Updated increment that constitute the current step in the entire process
            %
            cancelState = 0;
            reset(Imageds)
            message = app.saveDialog.Message;
            switch Imageds.numpartitions
                case 1
                    counter = counter + 1;
                    app.saveDialog.Value = (counter)/((app.cleanedDatstore.numpartitions*(sumEnabled-1-oneStepCounter))+1+oneStepCounter);
                    tempimg = read(Imageds);
                    [~,~,FileExt] = fileparts(which(FileName));
                    FileNameNoExt = split(FileName, FileExt);
                    imwrite(tempimg, fullfile(imageFolder, [Prefix FileNameNoExt{1} '.png']), 'png');
                otherwise
                    for i=1:1:Imageds.numpartitions
                        counter = counter + 1;
                        app.saveDialog.Value = (counter)/((app.cleanedDatstore.numpartitions*(sumEnabled-1-oneStepCounter))+1+oneStepCounter);
                        app.saveDialog.Message = [message ' # ' num2str(i) ' (out of ' num2str(Imageds.numpartitions) ')'];
                        if cancelRequest
                            cancelState = 1;
                            close(app.saveDialog)
                            break
                        end
                        try
                            tempimg = read(Imageds);
                            [~,~,FileExt] = fileparts(which(FileName{i}));
                            FileNameNoExt = split(FileName{i}, FileExt);
                            FileNameNoExt = FileNameNoExt{1};
                            imwrite(tempimg, fullfile(imageFolder, [Prefix FileNameNoExt '.png']), 'png');
                        catch ME
                            display('some images threw an error');
                        end
                    end
            end
        end


        function PreferencesUserSelection(app, activestates)
            %
            % Displays a preferences window for user selection.
            % Users can select or deselect various processing options that were previously saved in a preferences file.
            %
            % Inputs:
            %   app          - The app object containing user preferences and UI components.
            %   activestates - Structure containing the preferences available for the user (active/inactive).
            %
            originalActiveStates = activestates;
            activestates = structfun(@(x) double(x), activestates)';

            %% --------
            % Create the underlying components
            optsFig = uifigure;

            optsFig.Position(3) = 377;
            optsFig.Position(4) = 336;
            Tpanel = uipanel(optsFig,  'Units', 'Normalized', 'Position', [0 0 1 1], 'BorderType', 'none');
            optsFig.Resize = 'off';

            % Create GridLayout
            GridLayout = uigridlayout(Tpanel);
            GridLayout.ColumnWidth = {'1x'};
            GridLayout.RowHeight = {'0.25x', '0.1x', '0.1x', '0.85x', '0.2x'};
            GridLayout.Padding = [0 0 0 0];

            % Create UIAxes
            UIAxes = uiaxes(GridLayout);
            UIAxes.Toolbar.Visible = 'off';
            UIAxes.AmbientLightColor = 'none';
            UIAxes.XColor = [0.8 0.8 0.8];
            UIAxes.XTick = 0;
            UIAxes.XTickLabel = ' ';
            UIAxes.YTick = [];
            UIAxes.ZTick = [];
            UIAxes.Color = 'none';
            UIAxes.Layout.Row = 3;
            UIAxes.Layout.Column = 1;

            % Create GridLayout2
            GridLayout2 = uigridlayout(GridLayout);
            GridLayout2.ColumnWidth = {'0.1x', 'fit', 'fit', 'fit', '0.1x'};
            GridLayout2.RowHeight = {'1x', '1x', '1x', '1x', '1x', '1x'};
            GridLayout2.Padding = [10 10 10 0];
            GridLayout2.Layout.Row = 4;
            GridLayout2.Layout.Column = 1;

            % Create invtimgcb
            invtimgcb = uicheckbox(GridLayout2);
            invtimgcb.Text = 'Invert image';
            invtimgcb.Layout.Row = 1;
            invtimgcb.Layout.Column = 2;

            % Create morphcb
            morphcb = uicheckbox(GridLayout2);
            morphcb.Text = 'Morpholigical opts.';
            morphcb.Layout.Row = 2;
            morphcb.Layout.Column = 2;

            % Create cropimgcb
            cropimgcb = uicheckbox(GridLayout2);
            cropimgcb.Text = 'Crop image';
            cropimgcb.Layout.Row = 3;
            cropimgcb.Layout.Column = 2;

            % Create fltnimgcb
            fltnimgcb = uicheckbox(GridLayout2);
            fltnimgcb.Text = 'Flatten image';
            fltnimgcb.Layout.Row = 4;
            fltnimgcb.Layout.Column = 2;

            % Create detectedgcb
            detectedgcb = uicheckbox(GridLayout2);
            detectedgcb.Text = 'Detect edges';
            detectedgcb.Layout.Row = 5;
            detectedgcb.Layout.Column = 2;

            % Create scaleimgcb
            scaleimgcb = uicheckbox(GridLayout2);
            scaleimgcb.Text = 'Scale image';
            scaleimgcb.Layout.Row = 6;
            scaleimgcb.Layout.Column = 2;

            % Create exportoptscb
            expoptscb = uicheckbox(GridLayout2);
            expoptscb.Text = 'Export options';
            expoptscb.Layout.Row = 7;
            expoptscb.Layout.Column = 2;


            % Create invtimglbl
            invtimglbl = uilabel(GridLayout2);
            invtimglbl.HorizontalAlignment = 'center';
            invtimglbl.FontAngle = 'italic';
            invtimglbl.FontColor = [0.502 0.502 0.502];
            invtimglbl.Layout.Row = 1;
            invtimglbl.Layout.Column = 4;
            invtimglbl.Text = '';

            % Create morphlbl
            morphlbl = uilabel(GridLayout2);
            morphlbl.HorizontalAlignment = 'center';
            morphlbl.FontAngle = 'italic';
            morphlbl.FontColor = [0.502 0.502 0.502];
            morphlbl.Layout.Row = 2;
            morphlbl.Layout.Column = 4;
            morphlbl.Text = '';

            % Create cropimglbl
            cropimglbl = uilabel(GridLayout2);
            cropimglbl.HorizontalAlignment = 'center';
            cropimglbl.FontAngle = 'italic';
            cropimglbl.FontColor = [0.502 0.502 0.502];
            cropimglbl.Layout.Row = 3;
            cropimglbl.Layout.Column = 4;
            cropimglbl.Text = '';

            % Create fltnimglbl
            fltnimglbl = uilabel(GridLayout2);
            fltnimglbl.HorizontalAlignment = 'center';
            fltnimglbl.FontAngle = 'italic';
            fltnimglbl.FontColor = [0.502 0.502 0.502];
            fltnimglbl.Layout.Row = 4;
            fltnimglbl.Layout.Column = 4;
            fltnimglbl.Text = '';

            % Create detectedglbl
            detectedglbl = uilabel(GridLayout2);
            detectedglbl.HorizontalAlignment = 'center';
            detectedglbl.FontAngle = 'italic';
            detectedglbl.FontColor = [0.502 0.502 0.502];
            detectedglbl.Layout.Row = 5;
            detectedglbl.Layout.Column = 4;
            detectedglbl.Text = '';

            % Create scaleimglbl
            scaleimglbl = uilabel(GridLayout2);
            scaleimglbl.HorizontalAlignment = 'center';
            scaleimglbl.FontAngle = 'italic';
            scaleimglbl.FontColor = [0.502 0.502 0.502];
            scaleimglbl.Layout.Row = 6;
            scaleimglbl.Layout.Column = 4;
            scaleimglbl.Text = '';

            % Create exportoptslbl
            expoptslbl = uilabel(GridLayout2);
            expoptslbl.HorizontalAlignment = 'center';
            expoptslbl.FontAngle = 'italic';
            expoptslbl.FontColor = [0.502 0.502 0.502];
            expoptslbl.Layout.Row = 7;
            expoptslbl.Layout.Column = 4;
            expoptslbl.Text = '';

            % Create GridLayout3
            GridLayout3 = uigridlayout(GridLayout);
            GridLayout3.ColumnWidth = {'0.25x', '0.15x', 'fit', '0.15x', '0.25x'};
            GridLayout3.RowHeight = {'1x'};
            GridLayout3.RowSpacing = 0;
            GridLayout3.Padding = [0 10 0 5];
            GridLayout3.Layout.Row = 5;
            GridLayout3.Layout.Column = 1;

            % Create AcceptButton
            AcceptButton = uibutton(GridLayout3, 'push');
            AcceptButton.Layout.Row = 1;
            AcceptButton.Layout.Column = 2;
            AcceptButton.Text = 'Accept';

            % Create CancelButton
            CancelButton = uibutton(GridLayout3, 'push');
            CancelButton.Layout.Row = 1;
            CancelButton.Layout.Column = 4;
            CancelButton.Text = 'Cancel';

            % Create GridLayout4
            GridLayout4 = uigridlayout(GridLayout);
            GridLayout4.ColumnWidth = {'0.05x', 'fit', 'fit', 'fit', '0.05x'};
            GridLayout4.RowHeight = {'1x'};
            GridLayout4.Padding = [10 0 10 0];
            GridLayout4.Layout.Row = 2;
            GridLayout4.Layout.Column = 1;

            % Create selectallcb
            selectallcb = uicheckbox(GridLayout4);
            selectallcb.Text = 'Select all';
            selectallcb.Layout.Row = 1;
            selectallcb.Layout.Column = 2;

            % Create deselectallcb
            deselectallcb = uicheckbox(GridLayout4);
            deselectallcb.Text = 'Deselect all';
            deselectallcb.Layout.Row = 1;
            deselectallcb.Layout.Column = 4;

            % Create message
            message = uilabel(GridLayout);
            message.HorizontalAlignment = 'center';
            message.WordWrap = 'on';
            message.FontSize = 14;
            message.FontWeight = 'bold';
            message.Layout.Row = 1;
            message.Layout.Column = 1;
            message.Text = 'Select the settings to apply to your imported images.';

            CBs = {invtimgcb, morphcb, cropimgcb, fltnimgcb, detectedgcb, scaleimgcb, expoptscb};
            LBLs = {invtimglbl, morphlbl, cropimglbl, fltnimglbl, detectedglbl, scaleimglbl, expoptslbl};



            %%Defining functions
            invtimgcb.ValueChangedFcn = {@cbValueChanged,invtimglbl, CBs, selectallcb, deselectallcb};
            morphcb.ValueChangedFcn = {@cbValueChanged, morphlbl, CBs, selectallcb, deselectallcb};
            cropimgcb.ValueChangedFcn = {@cbValueChanged, cropimglbl, CBs, selectallcb, deselectallcb};
            fltnimgcb.ValueChangedFcn = {@cbValueChanged, fltnimglbl, CBs, selectallcb, deselectallcb};
            detectedgcb.ValueChangedFcn = {@cbValueChanged, detectedglbl, CBs, selectallcb, deselectallcb};
            scaleimgcb.ValueChangedFcn = {@cbValueChanged, scaleimglbl, CBs, selectallcb, deselectallcb};
            expoptscb.ValueChangedFcn = {@cbValueChanged, expoptslbl, CBs, selectallcb, deselectallcb};

            selectallcb.ValueChangedFcn = {@selectAllCBs, CBs, deselectallcb, activestates,LBLs};
            deselectallcb.ValueChangedFcn = {@deselectAllCBs, CBs, selectallcb, activestates, LBLs};

            CancelButton.ButtonPushedFcn = {@CancelClicked, optsFig, app};
            AcceptButton.ButtonPushedFcn = {@AcceptClicked, optsFig, app};

            checknotavailable(CBs, LBLs, activestates);

            waitfor(optsFig);

            function cbValueChanged(src, event, inputlbl, checkboxcell, slctAll, dslctAll)

                switch src.Value
                    case 0
                        %deactivated
                        inputlbl.Text = '';
                    case 1
                        %activated
                        inputlbl.Text = 'O.K.';
                        inputlbl.FontColor = [6 181 82]/255;
                end
                checknotallselected(src,event,checkboxcell, slctAll, dslctAll);
                checknotalldeselected(src,event,checkboxcell, slctAll, dslctAll);
            end

            function selectAllCBs(src, event, checkboxcell, dslctAll, activeStateArr, lablesArr)
                if ~(event.PreviousValue == 1)
                    idxs = activeStateArr == 1;
                    cellfun(@(x) set(x, 'Value', 1), checkboxcell(idxs));
                    cellfun(@(x) set(x, 'Text', 'O.K.'), lablesArr(idxs));
                    cellfun(@(x) set(x, 'FontColor', [6 181 82]/255), lablesArr(idxs));
                    dslctAll.Value = 0;
                    src.Enable = 'off';
                    dslctAll.Enable = 1;
                end
            end

            function deselectAllCBs(src, event, checkboxcell, slctAll, activeStateArr, lablesArr)
                if ~(event.PreviousValue == 1)
                    idxs = activeStateArr == 1;
                    cellfun(@(x) set(x, 'Value', 0), checkboxcell(idxs));
                    cellfun(@(x) set(x, 'Text', ''), lablesArr(idxs));
                    slctAll.Value = 0;
                    src.Enable = 'off';
                    slctAll.Enable = 1;
                end
            end

            function checknotallselected(src,event,checkboxcell, slctAll, dslctAll)

                if any(cellfun(@(x) isequal(x.Value, 0), checkboxcell))
                    slctAll.Value = 0;
                    slctAll.Enable = 'on';
                end

            end

            function checknotalldeselected(src,event,checkboxcell, slctAll, dslctAll)

                if any(cellfun(@(x) isequal(x.Value, 1), checkboxcell))
                    dslctAll.Value = 0;
                    dslctAll.Enable = 'on';
                end
            end

            function checknotavailable(checkboxcell, lablesArr, activeStateArr)
                idxs = find(activeStateArr == 0);
                cellfun(@(x) set(x, 'Enable', 'off'), checkboxcell(idxs));
                cellfun(@(x) set(x, 'Text', '(Not in file)'), lablesArr(idxs));
                cellfun(@(x) set(x, 'FontColor', [215 39 39]/255), lablesArr(idxs));

            end



            function CancelClicked(src, event, figin, app)
                delete(figin);
                disp('figure closed. Cancelled.');

            end

            function AcceptClicked(src, event, figin, app)

                app.userPrefActiveState.invertedImage = invtimgcb.Value;
                app.userPrefActiveState.imgProcessVals = morphcb.Value;
                app.userPrefActiveState.ROI = cropimgcb.Value;
                app.userPrefActiveState.imageFlattening = fltnimgcb.Value;
                app.userPrefActiveState.enhancedEdge = detectedgcb.Value;
                app.userPrefActiveState.scaleFactor = scaleimgcb.Value;
                app.userPrefActiveState.exportOpts = expoptscb.Value;

                delete(figin);

                disp('figure closed. Accepted.');

            end
        end



        function StartupInitialization(app)
            %
            % initializes the app at startup

            fileDIR = strsplit(mfilename('fullpath'),filesep);
            fileDIR =cell2mat(cellfun(@(x) [x filesep],fileDIR(1:end-1),'UniformOutput',false));
            addpath(genpath(fileDIR));
            app.strelDimensionalParams{1} = app.strelDim1;
            app.strelDimensionalParams{2} = app.strelDim2;
            app.strelShape = 'disk';
            app.morphStructElement = Createstrel(app,app.strelShape, app.strelDimensionalParams, app.strelShapeFamily);
            app.SliderVal2.Limits = [0 8];
            app.SliderVal2.MinorTicks = [0 4 6 8];
            app.SliderVal2.MajorTicks = [0 4 6 8];
            app.SliderVal1.Value = app.strelDim1;
            app.SliderVal2.Value = app.strelDim2;
            app.SliderVal3.Value = app.binarizingThreshold;
            app.TFieldVal1.Value = num2str(app.strelDim1);
            app.TFieldVal2.Value = num2str(app.strelDim2);
            app.TFieldVal3.Value = num2str(app.binarizingThreshold);
            placeHolderImg = Createmissingimg(app);
            app.SegPreviewFigure.ImageSource = placeHolderImg;
            app.exporgcb.Value = 1;
            app.expbwcb.Value = 1;
            app.exphighcb.Value = 1;
            InitializeExportPrefs(app);
            app.DropDownCalib.Items = {'px','µm', 'nm', 'mm', 'cm', 'm', 'pm', 'Å'};
        end
    end

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            %Modular
            StartupInitialization(app);
            ValidateMenuItem(app,'homeTab');
        end

        % Value changed function: ImageuniformitycorrectionIUCCheckBox
        function ImageuniformitycorrectionIUCCheckBoxValueChanged(app, event)
            %Modular
            app.imageFlatteningBoo = app.ImageuniformitycorrectionIUCCheckBox.Value;
        end

        % Value changed function: EnhancededgedetectionEEDCheckBox
        function EnhancededgedetectionEEDCheckBoxValueChanged(app, event)
            %Modular
            app.enhancedEdgeBoo = app.EnhancededgedetectionEEDCheckBox.Value;
        end

        % Value changed function: DropDownObjectShape
        function DropDownObjectShapeValueChanged(app, event)
            %Modular
            objectShape = app.DropDownObjectShape.Value;
            app.strelDim1 = 1; app.strelDim2 = 4; app.binarizingThreshold = 0.45;
            [app.strelShape, app.strelDimensionalParams] = Initializesliders(app, objectShape);
            app.morphStructElement = Createstrel(app,app.strelShape, app.strelDimensionalParams, app.strelShapeFamily);
            [processedimg, ~] = ProcessSingleImg(app,app.morphStructElement, app.segPreviewSpinnerCounter);
            app.SegTuningFigure.ImageSource = processedimg;
        end

        % Button pushed function: ButBrowseMain
        function ButBrowseMainButtonPushed(app, event)
            %Modular
            TempButtonEnable(app, event.Source, 'off');
            [~, pth, localFullFiles, index] = Browse(app,{'*.jpg;*.png;*.bmp;*.tiff', 'Image Files (*.jpg;*.png;*.bmp;*.tiff)'}, 'on');
            %Handle browsed file (MAIN)
            error = HandleBrowsedInputFiles(app, localFullFiles, index, event);
            Handleimportbuttonpermission(app,error);
            UpdateImportTabUI(app,app.fileNames,pth, error)
            focus(app.v10UIFigure);
        end

        % Value changing function: SliderVal2
        function SliderVal2ValueChanging(app, event)
            %Modular
            UpdateBySliderValue(app, event, 'strelDim2');
        end

        % Value changing function: SliderVal3
        function SliderVal3ValueChanging(app, event)
            %Modular
            UpdateBySliderValue(app, event, 'binarizingThreshold');
        end

        % Value changed function: TFieldVal2
        function TFieldVal2ValueChanged(app, event)
            %Modular
            app.SliderVal2.Value = str2double(app.TFieldVal2.Value);
        end

        % Value changed function: TFieldVal3
        function TFieldVal3ValueChanged(app, event)
            %Modular
            app.SliderVal3.Value = str2double(app.TFieldVal3.Value);
            SliderVal3ValueChanging(app, event);
        end

        % Button pushed function: NxtButStep1
        function NxtButStep1ButtonPushed(app, event)
            %Modular
            SwitchTab(app,app.(event.Source.Tag),app.TabGroup4.SelectedTab);
            ValidateMenuItem(app,app.TabGroup4.SelectedTab.Title);
        end

        % Value changed function: SegPreviewSpinner
        function SegPreviewSpinnerValueChanged(app, event)
            %Modular
            TempButtonEnable(app, event.Source, 'off');
            app.segPreviewSpinnerCounter = app.SegPreviewSpinner.Value;
            CheckCounterExtrema(app, app.segPreviewSpinnerCounter);
            app.interactiveImgLabels = [];
            filenm = GetDatastoreFilename(app, app.rawImgDatastore, app.segPreviewSpinnerCounter);
            Closefig(app, app.detachedSegPreviewFig);
            ToggleSwitch(app, app.ShowimageButton, 'off');
            % HERE WE SHOULD DO FAST CREATION OF INTERACTIVE FIGURE
            [~, locallyProcessedImg] = ProcessSingleImg(app,app.morphStructElement, app.segPreviewSpinnerCounter);
            [app.detachedSegPreviewFig, app.detachedSegPreviewAx, app.interactiveImg] = CreateInteractiveFig(app, locallyProcessedImg);
            ToggleSwitch(app, app.ShowimageButton, 'on');

            %-UI-Related
            % prevents glitch due to fast mouse-clicking
            if app.detachedSegPreviewFig.Number > 1; close(findobj('type','figure','number',2));end
            SegPreviewLabelHandler(app, app.ButObjectLabeling.Value);
            app.ButObjectLabeling.Enable = 'on';
            app.objNumLabel.Text = 'N/A';
            placeHolderImg = Createmissingimg(app);
            app.SegPreviewFigure.ImageSource = placeHolderImg;
            TempButtonEnable(app, event.Source, 'on');


        end

        % Value changed function: ButObjectLabeling
        function ButObjectLabelingValueChanged(app, event)
            %Modular
            SegPreviewLabelHandler(app, event.Value);
        end

        % Value changing function: SliderVal1
        function SliderVal1ValueChanging(app, event)
            %Modular
            UpdateBySliderValue(app, event, 'strelDim1');
        end

        % Value changed function: SegTuningSpinner
        function SegTuningSpinnerValueChanged(app, event)
            %Modular
            TempButtonEnable(app, event.Source, 'off');
            app.segPreviewSpinnerCounter = app.SegTuningSpinner.Value;
            CheckCounterExtrema(app, app.segPreviewSpinnerCounter);
            filenm = GetDatastoreFilename(app, app.rawImgDatastore, app.segPreviewSpinnerCounter);
            [processedimg, ~] = ProcessSingleImg(app,app.morphStructElement, app.segPreviewSpinnerCounter);
            tryCloseME(app, app.detachedSegTuningFig);
            existsState = CheckDetachedFigureExists(app,'detachedSegTuningFig');
            app.detachedSegTuningFig = DetachSegTuningFigure(app, app.detachedSegTuningFig, existsState);

            %-UI-Related
            app.FilenameLabelval.Text = filenm.imageText;
            app.FilenameLabelval.Tooltip= filenm.imageText;
            app.SegTuningFigure.ImageSource = processedimg;
            UpdatedetachedSegTuningFig(app);
            TempButtonEnable(app, event.Source, 'on');
        end

        % Close request function: v10UIFigure
        function v10UIFigureCloseRequest(app, event)
            %Modular
            close all
            CloseHandle(app, 'figure', 'cropFigure');
            delete(app.v10UIFigure);
            delete(app);
            clear global
            evalin('base', 'clear stats');
        end

        % Value changed function: RegionofInterestROICheckBox
        function RegionofInterestROICheckBoxValueChanged(app, event)
            %Modular
            RegionofInterestCheckBoxHandler(app, event);
            focus(app.v10UIFigure);
        end

        % Button pushed function: ButBrowseScale
        function ButBrowseScaleButtonPushed(app, event)
            %Modular
            [~,~,imgSelectionState] = getFilePathGeneral(app, app.ScaleImgTB, {'*.jpg;*.bmp;*.tiff', 'Image Files (*.jpg;*.bmp;*.tiff)'});
            if isequal(imgSelectionState, true); PrepareScaleCalibFigure(app);end
            focus(app.v10UIFigure);
        end

        % Button pushed function: ButBrwosePreferences
        function ButBrwosePreferencesButtonPushed(app, event)
            %Modular
            TempButtonEnable(app, event.Source, 'off');
            index = PreProcessbyFile(app, 'load');
            %UI-Related
            if ~isequal(index,0); [~] = PreProcessbyFile(app, 'updateUI');...
                    app.ButClearPreferences.Enable = 'on'; end
            TempButtonEnable(app, event.Source, 'on');
        end

        % Value changed function: TFieldVal1
        function TFieldVal1ValueChanged(app, event)

        end

        % Selection changed function: preProcessingSelection
        function preProcessingSelectionSelectionChanged(app, event)
            %Modular
            PreProcessSelectionHandler(app, event);
        end

        % Menu selected function: ImportMenu
        function ImportMenuSelected(app, event)
            %Modular
            SwitchTab(app,app.(event.Source.Tag),app.TabGroup4.SelectedTab);
            ValidateMenuItem(app,app.TabGroup4.SelectedTab.Title);
            focus(app.v10UIFigure);
        end

        % Menu selected function: PreprocessMenu
        function PreprocessMenuSelected(app, event)
            %Modular
            SwitchTab(app,app.(event.Source.Tag),app.TabGroup4.SelectedTab);
            ValidateMenuItem(app,app.TabGroup4.SelectedTab.Title);
            focus(app.v10UIFigure);
        end

        % Menu selected function: CalibrateMenu
        function CalibrateMenuSelected(app, event)
            %Modular
            SwitchTab(app,app.(event.Source.Tag),app.TabGroup4.SelectedTab);
            ValidateMenuItem(app,app.TabGroup4.SelectedTab.Title);
            focus(app.v10UIFigure);
        end

        % Menu selected function: SegmentMenu
        function SegmentMenuSelected(app, event)
            %Modular
            SwitchTab(app,app.(event.Source.Tag),app.TabGroup4.SelectedTab);
            ValidateMenuItem(app,app.TabGroup4.SelectedTab.Title);
            focus(app.v10UIFigure);
        end

        % Menu selected function: PreviewMenu
        function PreviewMenuSelected(app, event)
            %Modular
            SwitchTab(app,app.(event.Source.Tag),app.TabGroup4.SelectedTab);
            ValidateMenuItem(app,app.TabGroup4.SelectedTab.Title);
            focus(app.v10UIFigure);
        end

        % Menu selected function: ExportMenu
        function ExportMenuSelected(app, event)
            %Modular
            SwitchTab(app,app.(event.Source.Tag),app.TabGroup4.SelectedTab);
            ValidateMenuItem(app,app.TabGroup4.SelectedTab.Title);
            focus(app.v10UIFigure);
        end

        % Value changed function: exporgcb
        function exporgcbValueChanged(app, event)
            %Modular
            HandleExportCheckBoxes(app, event, app.exporgcb, 'exporg');
        end

        % Value changed function: expbwcb
        function expbwcbValueChanged(app, event)
            %Modular
            HandleExportCheckBoxes(app, event, app.expbwcb, 'expbw');
        end

        % Value changed function: exphighcb
        function exphighcbValueChanged(app, event)
            %Modular
            HandleExportCheckBoxes(app, event, app.exphighcb, 'exphigh');
        end

        % Value changed function: explblcb
        function explblcbValueChanged(app, event)
            %Modular
            HandleExportCheckBoxes(app, event, app.explblcb, 'explbl');
        end

        % Value changed function: expbwbrdrclrcb
        function expbwbrdrclrcbValueChanged(app, event)
            %Modular
            HandleExportCheckBoxes(app, event, app.expbwbrdrclrcb, 'expbwbrdrclr');
        end

        % Value changed function: mtlbcb
        function mtlbcbValueChanged(app, event)
            %Modular
            HandleExportCheckBoxes(app, event, app.mtlbcb, 'mtlb');
        end

        % Value changed function: selectallcb
        function selectallcbValueChanged(app, event)
            %Modular
            CBs = {app.exporgcb, app.expbwcb, app.exphighcb, app.explblcb, app.expbwbrdrclrcb, app.mtlbcb};
            SelectAllCBs(app, event.Source, event, CBs, app.deselectallcb);
        end

        % Value changed function: deselectallcb
        function deselectallcbValueChanged(app, event)
            %Modular
            CBs = {app.exporgcb, app.expbwcb, app.exphighcb, app.explblcb, app.expbwbrdrclrcb, app.mtlbcb};
            DeSelectAllCBs(app, event.Source, event, CBs, app.selectallcb);
        end

        % Button pushed function: NxtButStep4
        function NxtButStep4Pushed(app, event)
            %Modular
            SwitchTab(app,app.(event.Source.Tag),app.TabGroup4.SelectedTab);
            ApplySegmentationSequence(app);
            Closefig(app, app.detachedSegTuningFig);
            filenm = GetDatastoreFilename(app, app.rawImgDatastore, app.segPreviewSpinnerCounter);


            %CREATE REGION PROPS FOR FIRST FIGURE

            [app.detachedSegPreviewFig, app.detachedSegPreviewAx, app.interactiveImg] = CreateInteractiveFig(app, read(app.binarizedDatastore));
            ToggleSwitch(app, app.ShowimageButton, 'on');
            app.detachedSegPreviewFigPos = app.detachedSegPreviewFig.Position;
            ValidateMenuItem(app,app.TabGroup4.SelectedTab.Title);
            focus(app.v10UIFigure);
        end

        % Value changed function: invertSwitch
        function invertSwitchValueChanged(app, event)
            %Modular
            TempButtonEnable(app, event.Source, 'off');
            app.invertedImage = ~app.invertedImage;
            [processedimg, ~] = ProcessSingleImg(app,app.morphStructElement, app.segPreviewSpinnerCounter);
            %-UI-related
            app.SegTuningFigure.ImageSource = processedimg;
            UpdatedetachedSegTuningFig(app);
            TempButtonEnable(app, event.Source, 'on');
        end

        % Button pushed function: SaveButton
        function SaveButtonPushed(app, event)
            %Modular
            [segmentationDataTable, cancelState] = Datastoreextractor(app, app.segmentationDataStructs, app.cleanedDatstore);
            if cancelState == 1; return; end
            segmentationDataTable = Cleantable(app,segmentationDataTable);
            app.exportOptsBoo = AssignExportBoo(app);
            StoreAllPrefs(app);
            SaveOutput(app, segmentationDataTable);
        end

        % Button pushed function: NxtButStep2
        function NxtButStep2Pushed(app, event)
            %Modular
            SwitchTab(app,app.(event.Source.Tag),app.TabGroup4.SelectedTab);

            %Choose which import method to use based on user selection
            % ('manual' or 'file')
            PreprocessingMethod(app, app.preProcessMethod);
            [processedimg, ~] = ProcessSingleImg(app,app.morphStructElement, app.segPreviewSpinnerCounter);
            filenm = GetDatastoreFilename(app, app.rawImgDatastore, app.segPreviewSpinnerCounter);

            %UI-related
            app.SegTuningFigure.ImageSource = processedimg;
            app.FilenameLabelval.Text = filenm.imageText;
            app.FilenameLabelval.Tooltip = filenm.imageText;
            if not(isequal(app.inputDatastoreProperties.numFiles,1))
                ChangeUIState(app, 'enable', app.SegPreviewSpinner,...
                    app.SegTuningSpinner);
                app.SegPreviewSpinner.Limits(2) = app.inputDatastoreProperties.numFiles;
                app.SegTuningSpinner.Limits(2) = app.inputDatastoreProperties.numFiles;
            else
                ChangeUIState(app, 'disable', app.SegPreviewSpinner,...
                    app.SegTuningSpinner);
            end
            app.SliderVal1.Enable = 'on';
            ValidateMenuItem(app,app.TabGroup4.SelectedTab.Title);
        end

        % Button pushed function: NxtButStep3
        function NxtButStep3Pushed(app, event)
            %Modular
            SwitchTab(app,app.(event.Source.Tag),app.TabGroup4.SelectedTab);
            ValidateMenuItem(app,app.TabGroup4.SelectedTab.Title);
        end

        % Button pushed function: NxtButStep5
        function NxtButStep5Pushed(app, event)
            %Modular
            SwitchTab(app,app.(event.Source.Tag),app.TabGroup4.SelectedTab);
            Closefig(app, app.detachedSegPreviewFig);
            ValidateMenuItem(app,app.TabGroup4.SelectedTab.Title);
        end

        % Button pushed function: PreviousButton_14
        function PreviousButton_14Pushed(app, event)
            %Modular
            SwitchTab(app,app.(event.Source.Tag),app.TabGroup4.SelectedTab);
            ValidateMenuItem(app,app.TabGroup4.SelectedTab.Title);
        end

        % Button pushed function: PreviousButton_13
        function PreviousButton_13Pushed(app, event)
            %Modular
            SwitchTab(app,app.(event.Source.Tag),app.TabGroup4.SelectedTab);
            Closefig(app, app.detachedSegPreviewFig);
            ValidateMenuItem(app,app.TabGroup4.SelectedTab.Title);
        end

        % Button pushed function: PreviousButton_12
        function PreviousButton_12Pushed(app, event)
            %Modular
            SwitchTab(app,app.(event.Source.Tag),app.TabGroup4.SelectedTab);
            Closefig(app, app.detachedSegTuningFig);
            ValidateMenuItem(app,app.TabGroup4.SelectedTab.Title);
        end

        % Button pushed function: PreviousButton_11
        function PreviousButton_11Pushed(app, event)
            %Modular
            SwitchTab(app,app.(event.Source.Tag),app.TabGroup4.SelectedTab);
            ValidateMenuItem(app,app.TabGroup4.SelectedTab.Title);
        end

        % Button pushed function: PreviousButton_10
        function PreviousButton_10Pushed(app, event)
            %Modular
            SwitchTab(app,app.(event.Source.Tag),app.TabGroup4.SelectedTab);
            ValidateMenuItem(app,app.TabGroup4.SelectedTab.Title);
        end

        % Button pushed function: PreviousButton_9
        function PreviousButton_9Pushed(app, event)
            %Modular
            SwitchTab(app,app.(event.Source.Tag),app.TabGroup4.SelectedTab);
            ValidateMenuItem(app,app.TabGroup4.SelectedTab.Title);
        end

        % Value changed function: DropDownCalib
        function DropDownCalibValueChanged(app, event)
            %Modular
            % Determine if selection is 'pixels'
            h = findobj(app.UIscaleAxes, 'Tag', 'calibrationLine');
            if strcmp(app.DropDownCalib.Value, 'px')
                % Disable textbox
                app.efCalibInput.Value = h.Position(2,1)-h.Position(1,1);
                ChangeUIState(app, 'disable', app.efCalibInput);
                ChangeUIState(app, 'hide', h, app.pxLabel, app.UIscaleAxes,...
                    app.HTML13);
            else
                % Enable textbox
                ChangeUIState(app, 'enable', app.efCalibInput);
                ChangeUIState(app, 'show', h, app.pxLabel, app.UIscaleAxes,...
                    app.HTML13);
            end

            %update class fields
            UpdateScaleCalibTemporaryVars(app);
            %display value
            UpdateScaleCalibText(app);


            % RecalculateCalibrationFactor(app);
            CheckCalibConfirmAllow(app);

        end

        % Value changed function: efCalibInput
        function efCalibInputValueChanged(app, event)
            %Modular
            %update class fields
            UpdateScaleCalibTemporaryVars(app);
            %display value
            UpdateScaleCalibText(app);
            %Check if value is new, then allow calibration button
            CheckCalibConfirmAllow(app);

        end

        % Button pushed function: CalibConfirm
        function CalibConfirmButtonPushed(app, event)
            %Modular
            %Update UI
            ChangeUIState(app, 'enable', app.CalibConfirm, ...
                app.text2, app.text1, app.part3header, app.unitLengthLabel,...
                app.scaleConvertLabel);

            ChangeUIState(app, 'hide', app.CalibCnfrmHTML, ...
                app.CalibGuidePanel, app.HTML13);

            ChangeUIState(app, 'show', app.part3header, ...
                app.text1, app.text2, app.unitLengthLabel, app.scaleConvertLabel);

            %Set calibration values
            SetNewScaleCalibValues(app);

            ChangeUIState(app, 'disable', app.CalibConfirm);




        end

        % Button pushed function: STARTButton
        function STARTButtonPushed(app, event)
            %Modular
            SwitchTab(app,app.(event.Source.Tag),app.TabGroup4.SelectedTab);
            ValidateMenuItem(app,app.TabGroup4.SelectedTab.Title);
        end

        % Button pushed function: ButDeleteFilesStep1
        function ButDeleteFilesStep1ButtonPushed(app, event)
            %Modular
            ReinitializeImport(app);
        end

        % Value changed function: ShowimageButton
        function ShowimageButtonValueChanged(app, event)
            %Modular
            ExplodeImgSegmentPreview(app, event);
            %UPDATE UI
            switch event.Value
                case 0
                    ToggleSwitch(app, app.ShowimageButton, 'off'); %Case 0
                    ToggleSwitch(app, app.ButObjectLabeling, 'off'); %Case 0
                    app.ButObjectLabeling.Enable = 'off'; %Case 0
                case 1
                    ToggleSwitch(app, app.ShowimageButton, 'on') %Case 1
                    app.ShowimageButton.Value = 1;  %Case 1
                    app.ShowimageButton.BackgroundColor = [0.00,1.00,0.15]; %Case 1
                    app.ButObjectLabeling.Enable = 'on'; %Case 1
            end
        end

        % Button pushed function: ButClearPreferences
        function ButClearPreferencesButtonPushed(app, event)
            %Modular
            TempButtonEnable(app, event.Source, 'off');
            ReinitializePreproccessing(app);
            [~] = PreProcessbyFile(app, 'updateUI');
        end

        % Menu selected function: AboutMenu
        function AboutMenuSelected(app, event)
            %Modular
            SwitchTab(app,app.aboutTab,app.TabGroup4.SelectedTab);
            ValidateMenuItem(app,app.lastSelectedTab.Title);
            focus(app.v10UIFigure);
        end

        % Menu selected function: HomeMenu
        function HomeMenuSelected(app, event)
            %Modular
            SwitchTab(app,app.(event.Source.Tag),app.TabGroup4.SelectedTab);
            ValidateMenuItem(app,app.TabGroup4.SelectedTab.Title);
            focus(app.v10UIFigure);
        end

        % Image clicked function: SegTuningFigure
        function SegTuningFigureImageClicked(app, event)
            %Modular
            existsState = CheckDetachedFigureExists(app,'detachedSegTuningFig');
            app.detachedSegTuningFig = DetachSegTuningFigure(app, app.detachedSegTuningFig, existsState);
        end

        % Value changed function: ListBox_2
        function ListBox_2ValueChanged(app, event)
            PreviewImportedImg(app, app.ListBox_2.Value)
        end

        % Menu selected function: CopyMenu
        function CopyMenuSelected(app, event)
            clipboard('copy', app.citation.Text);
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Get the file path for locating images
            pathToMLAPP = fileparts(mfilename('fullpath'));

            % Create v10UIFigure and hide until all components are created
            app.v10UIFigure = uifigure('Visible', 'off');
            app.v10UIFigure.Color = [0.8902 0.8902 0.8902];
            app.v10UIFigure.Position = [100 100 1039 562];
            app.v10UIFigure.Name = 'v1.0';
            app.v10UIFigure.Resize = 'off';
            app.v10UIFigure.CloseRequestFcn = createCallbackFcn(app, @v10UIFigureCloseRequest, true);

            % Create HomeMenu
            app.HomeMenu = uimenu(app.v10UIFigure);
            app.HomeMenu.MenuSelectedFcn = createCallbackFcn(app, @HomeMenuSelected, true);
            app.HomeMenu.Text = 'Home';
            app.HomeMenu.Tag = 'homeTab';

            % Create ImportMenu
            app.ImportMenu = uimenu(app.v10UIFigure);
            app.ImportMenu.MenuSelectedFcn = createCallbackFcn(app, @ImportMenuSelected, true);
            app.ImportMenu.Text = '> Import ';
            app.ImportMenu.Tag = 'step1Tab';

            % Create PreprocessMenu
            app.PreprocessMenu = uimenu(app.v10UIFigure);
            app.PreprocessMenu.MenuSelectedFcn = createCallbackFcn(app, @PreprocessMenuSelected, true);
            app.PreprocessMenu.Text = '> Preprocess';
            app.PreprocessMenu.Tag = 'step2Tab';

            % Create CalibrateMenu
            app.CalibrateMenu = uimenu(app.v10UIFigure);
            app.CalibrateMenu.MenuSelectedFcn = createCallbackFcn(app, @CalibrateMenuSelected, true);
            app.CalibrateMenu.Text = '> Calibrate';
            app.CalibrateMenu.Tag = 'step3Tab';

            % Create SegmentMenu
            app.SegmentMenu = uimenu(app.v10UIFigure);
            app.SegmentMenu.MenuSelectedFcn = createCallbackFcn(app, @SegmentMenuSelected, true);
            app.SegmentMenu.Text = '> Segment';
            app.SegmentMenu.Tag = 'step4Tab';

            % Create PreviewMenu
            app.PreviewMenu = uimenu(app.v10UIFigure);
            app.PreviewMenu.MenuSelectedFcn = createCallbackFcn(app, @PreviewMenuSelected, true);
            app.PreviewMenu.Text = '> Preview ';
            app.PreviewMenu.Tag = 'step5Tab';

            % Create ExportMenu
            app.ExportMenu = uimenu(app.v10UIFigure);
            app.ExportMenu.MenuSelectedFcn = createCallbackFcn(app, @ExportMenuSelected, true);
            app.ExportMenu.Text = '> Export     ';
            app.ExportMenu.Tag = 'step6Tab';

            % Create AboutMenu
            app.AboutMenu = uimenu(app.v10UIFigure);
            app.AboutMenu.MenuSelectedFcn = createCallbackFcn(app, @AboutMenuSelected, true);
            app.AboutMenu.Text = 'About';
            app.AboutMenu.Tag = 'aboutTab';

            % Create STEP1Panel
            app.STEP1Panel = uipanel(app.v10UIFigure);
            app.STEP1Panel.Position = [1 4 1051 560];

            % Create TabGroup4
            app.TabGroup4 = uitabgroup(app.STEP1Panel);
            app.TabGroup4.Position = [1 0 1050 586];

            % Create homeTab
            app.homeTab = uitab(app.TabGroup4);
            app.homeTab.Title = 'homeTab';

            % Create Image
            app.Image = uiimage(app.homeTab);
            app.Image.ScaleMethod = 'scaledown';
            app.Image.BackgroundColor = [0.4941 0.1843 0.5569];
            app.Image.Position = [-5 89 1047 473];
            app.Image.ImageSource = fullfile(pathToMLAPP, 'images', 'HomeScreen5.png');

            % Create STARTButton
            app.STARTButton = uibutton(app.homeTab, 'push');
            app.STARTButton.ButtonPushedFcn = createCallbackFcn(app, @STARTButtonPushed, true);
            app.STARTButton.Tag = 'step1Tab';
            app.STARTButton.Position = [468 30 100 30];
            app.STARTButton.Text = 'START';

            % Create HTML2_11
            app.HTML2_11 = uihtml(app.homeTab);
            app.HTML2_11.HTMLSource = '<div style="width: 1037px; height: 1px; background-color: #BFBFBF;"></div>';
            app.HTML2_11.Position = [1 62 1037 28];

            % Create step1Tab
            app.step1Tab = uitab(app.TabGroup4);
            app.step1Tab.Title = 'step1Tab';

            % Create UIimportAxes
            app.UIimportAxes = uiaxes(app.step1Tab);
            app.UIimportAxes.AmbientLightColor = 'none';
            app.UIimportAxes.PlotBoxAspectRatio = [1.42721518987342 1 1];
            app.UIimportAxes.XColor = [0.6588 0.6588 0.6588];
            app.UIimportAxes.XTick = [];
            app.UIimportAxes.YColor = [0.6588 0.6588 0.6588];
            app.UIimportAxes.YTick = [];
            app.UIimportAxes.ZTick = [];
            app.UIimportAxes.BoxStyle = 'full';
            app.UIimportAxes.Color = [0.9412 0.9412 0.9412];
            app.UIimportAxes.GridColor = 'none';
            app.UIimportAxes.MinorGridColor = [0.149 0.149 0.149];
            app.UIimportAxes.Box = 'on';
            app.UIimportAxes.ColorOrder = [0 0.447 0.741;0.85 0.325 0.098;0.929 0.694 0.125;0.466 0.674 0.188;0.494 0.184 0.556;0.301 0.745 0.933;0.635 0.078 0.184;0.549019607843137 0.337254901960784 0.294117647058824;0.890196078431372 0.466666666666667 0.76078431372549;0.498039215686275 0.498039215686275 0.498039215686275;0.737254901960784 0.741176470588235 0.133333333333333;0.682352941176471 0.780392156862745 0.909803921568627;0.596078431372549 0.874509803921569 0.541176470588235;1 0.596078431372549 0.588235294117647;0.772549019607843 0.690196078431373 0.835294117647059;0.768627450980392 0.611764705882353 0.580392156862745;0.780392156862745 0.780392156862745 0.780392156862745;0.858823529411765 0.858823529411765 0.552941176470588;0.619607843137255 0.854901960784314 0.898039215686275;0.619047619047619 0.464566929133858 1;0 0.362204724409449 0.0952380952380952;0.253968253968254 0.118110236220472 0.714285714285714;0.634920634920635 0.480314960629921 0;0 0.669291338582677 0.571428571428571];
            app.UIimportAxes.FontSize = 10;
            app.UIimportAxes.Position = [538 129 472 349];

            % Create ImageimportLabel
            app.ImageimportLabel = uilabel(app.step1Tab);
            app.ImageimportLabel.FontSize = 18;
            app.ImageimportLabel.FontWeight = 'bold';
            app.ImageimportLabel.Position = [29 514 111 23];
            app.ImageimportLabel.Text = 'Image import';

            % Create ClickbelowtoloadimagesforprocessingLabel
            app.ClickbelowtoloadimagesforprocessingLabel = uilabel(app.step1Tab);
            app.ClickbelowtoloadimagesforprocessingLabel.FontWeight = 'bold';
            app.ClickbelowtoloadimagesforprocessingLabel.Position = [29 462 235 22];
            app.ClickbelowtoloadimagesforprocessingLabel.Text = 'Click below to load image(s) for processing';

            % Create ImportedimagesLabel
            app.ImportedimagesLabel = uilabel(app.step1Tab);
            app.ImportedimagesLabel.FontWeight = 'bold';
            app.ImportedimagesLabel.Position = [29 362 95 22];
            app.ImportedimagesLabel.Text = 'Imported images';

            % Create ListBox_2
            app.ListBox_2 = uilistbox(app.step1Tab);
            app.ListBox_2.Items = {'No files found'};
            app.ListBox_2.ValueChangedFcn = createCallbackFcn(app, @ListBox_2ValueChanged, true);
            app.ListBox_2.Position = [67 143 441 174];
            app.ListBox_2.Value = {};

            % Create ButBrowseMain
            app.ButBrowseMain = uibutton(app.step1Tab, 'push');
            app.ButBrowseMain.ButtonPushedFcn = createCallbackFcn(app, @ButBrowseMainButtonPushed, true);
            app.ButBrowseMain.FontName = 'Lato';
            app.ButBrowseMain.Position = [66 422 100 23];
            app.ButBrowseMain.Text = 'Browse';

            % Create NxtButStep1
            app.NxtButStep1 = uibutton(app.step1Tab, 'push');
            app.NxtButStep1.ButtonPushedFcn = createCallbackFcn(app, @NxtButStep1ButtonPushed, true);
            app.NxtButStep1.Tag = 'step2Tab';
            app.NxtButStep1.Enable = 'off';
            app.NxtButStep1.Tooltip = {'You must import images first'};
            app.NxtButStep1.Position = [909 30 100 30];
            app.NxtButStep1.Text = 'Next';

            % Create PathLabel
            app.PathLabel = uilabel(app.step1Tab);
            app.PathLabel.FontName = 'Lato';
            app.PathLabel.Position = [67 326 32 22];
            app.PathLabel.Text = 'Path:';

            % Create s1PthLbl
            app.s1PthLbl = uilabel(app.step1Tab);
            app.s1PthLbl.FontName = 'Lato';
            app.s1PthLbl.Position = [100 326 408 22];
            app.s1PthLbl.Text = '';

            % Create PreviousButton_9
            app.PreviousButton_9 = uibutton(app.step1Tab, 'push');
            app.PreviousButton_9.ButtonPushedFcn = createCallbackFcn(app, @PreviousButton_9Pushed, true);
            app.PreviousButton_9.Tag = 'homeTab';
            app.PreviousButton_9.Position = [30 30 100 30];
            app.PreviousButton_9.Text = 'Previous';

            % Create ButDeleteFilesStep1
            app.ButDeleteFilesStep1 = uibutton(app.step1Tab, 'push');
            app.ButDeleteFilesStep1.ButtonPushedFcn = createCallbackFcn(app, @ButDeleteFilesStep1ButtonPushed, true);
            app.ButDeleteFilesStep1.FontName = 'Lato';
            app.ButDeleteFilesStep1.FontColor = [0.8118 0.1961 0.1961];
            app.ButDeleteFilesStep1.Enable = 'off';
            app.ButDeleteFilesStep1.Position = [202 422 100 23];
            app.ButDeleteFilesStep1.Text = 'Delete files';

            % Create HTML2_5
            app.HTML2_5 = uihtml(app.step1Tab);
            app.HTML2_5.HTMLSource = '<div style="width: 1037px; height: 1px; background-color: #BFBFBF;"></div>';
            app.HTML2_5.Position = [1 62 1037 28];

            % Create HTML12_2
            app.HTML12_2 = uihtml(app.step1Tab);
            app.HTML12_2.HTMLSource = '<style>  .note {    color: #6c757d;    display: block; /* Starts on a new line */    margin-top: 10px; /* Adds space above the note */    font-style: italic; /* Optional: Makes it look more like a note */  }    .required {    color: #d35400;  }    .optional {    color: #6c757d;  }  </style><div style="position: relative; width: 100%; height: 100%; display: inline-block; text-align: center; overflow-y: hidden;">  <span id="tooltip-text" style="font-family: helvetica;text-align: center; font-size: 12px; cursor: help;">(Touch for guide)</span>  <div id="tooltip-popup" style="visibility: hidden; width: 645px; max-width: 100%; max-height: 50px; background-color: #f9f9f9; color: #333; font-family: helvetica; font-size: 12px; text-align: justify; border: 1px solid #ccc; padding: 10px; position: absolute; z-index: 1; word-wrap: break-word; line-height: 1.5; white-space: normal; top: 25px; left: 0px; overflow-y: auto; box-sizing: border-box; transition: opacity 0.5s ease;"> This  <span class="required">(required)</span> step is for importing your image file(s). To import files, click the <b>Browse</b> button and select one or more images. Allowed file types are <span style="color: blue;"><it>.jpg; .png; .bmp; .tiff</it></span>. Click <b>Next</b> to proceed. <span class="note">Note: images of different dimensions will be cropped to match the dimension of the smallest image.</span></div></div><script>  const tooltipText = document.getElementById("tooltip-text");  const tooltipPopup = document.getElementById("tooltip-popup");  let hideTimeout;  tooltipText.addEventListener("mouseover", function() {    clearTimeout(hideTimeout);    tooltipPopup.style.opacity = 1;    tooltipPopup.style.visibility = "visible";  });  tooltipPopup.addEventListener("mouseover", function() {    clearTimeout(hideTimeout);    tooltipPopup.style.visibility = "visible";  });  function hideTooltip() {    hideTimeout = setTimeout(() => {      tooltipPopup.style.opacity = 0;      setTimeout(() => {        tooltipPopup.style.visibility = "hidden";      }, 300);    }, 2000);  }  tooltipText.addEventListener("mouseout", hideTooltip);  tooltipPopup.addEventListener("mouseout", hideTooltip);</script>';
            app.HTML12_2.Position = [197 12 645 71];

            % Create step2Tab
            app.step2Tab = uitab(app.TabGroup4);
            app.step2Tab.Title = 'step2Tab';

            % Create Panel_10
            app.Panel_10 = uipanel(app.step2Tab);
            app.Panel_10.BorderWidth = 0;
            app.Panel_10.FontWeight = 'bold';
            app.Panel_10.Position = [288 302 721 176];

            % Create ImageuniformitycorrectionIUCCheckBox
            app.ImageuniformitycorrectionIUCCheckBox = uicheckbox(app.Panel_10);
            app.ImageuniformitycorrectionIUCCheckBox.ValueChangedFcn = createCallbackFcn(app, @ImageuniformitycorrectionIUCCheckBoxValueChanged, true);
            app.ImageuniformitycorrectionIUCCheckBox.Text = 'Image uniformity correction (IUC)';
            app.ImageuniformitycorrectionIUCCheckBox.FontName = 'Lato';
            app.ImageuniformitycorrectionIUCCheckBox.Position = [53 74 200 22];

            % Create EnhancededgedetectionEEDCheckBox
            app.EnhancededgedetectionEEDCheckBox = uicheckbox(app.Panel_10);
            app.EnhancededgedetectionEEDCheckBox.ValueChangedFcn = createCallbackFcn(app, @EnhancededgedetectionEEDCheckBoxValueChanged, true);
            app.EnhancededgedetectionEEDCheckBox.Text = 'Enhanced edge detection (EED)';
            app.EnhancededgedetectionEEDCheckBox.FontName = 'Lato';
            app.EnhancededgedetectionEEDCheckBox.Position = [53 41 186 22];

            % Create RegionofInterestROICheckBox
            app.RegionofInterestROICheckBox = uicheckbox(app.Panel_10);
            app.RegionofInterestROICheckBox.ValueChangedFcn = createCallbackFcn(app, @RegionofInterestROICheckBoxValueChanged, true);
            app.RegionofInterestROICheckBox.Text = 'Region of Interest (ROI)';
            app.RegionofInterestROICheckBox.FontName = 'Lato';
            app.RegionofInterestROICheckBox.Position = [53 108 146 22];

            % Create ManualselectionLabel
            app.ManualselectionLabel = uilabel(app.Panel_10);
            app.ManualselectionLabel.Position = [20 139 95 22];
            app.ManualselectionLabel.Text = 'Manual selection';

            % Create preProcessingSelection
            app.preProcessingSelection = uibuttongroup(app.step2Tab);
            app.preProcessingSelection.SelectionChangedFcn = createCallbackFcn(app, @preProcessingSelectionSelectionChanged, true);
            app.preProcessingSelection.BorderWidth = 0;
            app.preProcessingSelection.BackgroundColor = [0.9412 0.9412 0.9412];
            app.preProcessingSelection.FontWeight = 'bold';
            app.preProcessingSelection.Position = [65 369 203 76];

            % Create ManualselectionButton
            app.ManualselectionButton = uiradiobutton(app.preProcessingSelection);
            app.ManualselectionButton.Tag = 'manual';
            app.ManualselectionButton.Text = 'Manual selection';
            app.ManualselectionButton.Position = [1 55 112 22];
            app.ManualselectionButton.Value = true;

            % Create PreferencesfileuploadButton
            app.PreferencesfileuploadButton = uiradiobutton(app.preProcessingSelection);
            app.PreferencesfileuploadButton.Tag = 'file';
            app.PreferencesfileuploadButton.Text = 'Preferences file upload';
            app.PreferencesfileuploadButton.Position = [1 28 144 22];

            % Create ImagepreprocessingLabel
            app.ImagepreprocessingLabel = uilabel(app.step2Tab);
            app.ImagepreprocessingLabel.FontSize = 18;
            app.ImagepreprocessingLabel.FontWeight = 'bold';
            app.ImagepreprocessingLabel.Position = [29 514 173 23];
            app.ImagepreprocessingLabel.Text = 'Image preprocessing';

            % Create ChooseapreprocessingmethodLabel
            app.ChooseapreprocessingmethodLabel = uilabel(app.step2Tab);
            app.ChooseapreprocessingmethodLabel.FontWeight = 'bold';
            app.ChooseapreprocessingmethodLabel.Position = [29 462 182 22];
            app.ChooseapreprocessingmethodLabel.Text = 'Choose a pre-processing method';

            % Create HTML2
            app.HTML2 = uihtml(app.step2Tab);
            app.HTML2.HTMLSource = '<div style="width: 1px; height: 340px; background-color: #BFBFBF;"></div>';
            app.HTML2.Position = [285 100 31 378];

            % Create Panel_11
            app.Panel_11 = uipanel(app.step2Tab);
            app.Panel_11.BorderWidth = 0;
            app.Panel_11.Position = [287 129 721 174];

            % Create ButBrwosePreferences
            app.ButBrwosePreferences = uibutton(app.Panel_11, 'push');
            app.ButBrwosePreferences.ButtonPushedFcn = createCallbackFcn(app, @ButBrwosePreferencesButtonPushed, true);
            app.ButBrwosePreferences.FontName = 'Lato';
            app.ButBrwosePreferences.Enable = 'off';
            app.ButBrwosePreferences.Position = [55 102 100 23];
            app.ButBrwosePreferences.Text = 'Browse';

            % Create TFieldpreferences
            app.TFieldpreferences = uieditfield(app.Panel_11, 'text');
            app.TFieldpreferences.Editable = 'off';
            app.TFieldpreferences.FontName = 'Lato';
            app.TFieldpreferences.Enable = 'off';
            app.TFieldpreferences.Placeholder = 'Upload preferences file';
            app.TFieldpreferences.Position = [229 102 140 22];

            % Create ButClearPreferences
            app.ButClearPreferences = uibutton(app.Panel_11, 'push');
            app.ButClearPreferences.ButtonPushedFcn = createCallbackFcn(app, @ButClearPreferencesButtonPushed, true);
            app.ButClearPreferences.FontName = 'Lato';
            app.ButClearPreferences.FontSize = 8;
            app.ButClearPreferences.FontWeight = 'bold';
            app.ButClearPreferences.Enable = 'off';
            app.ButClearPreferences.Position = [164 103 42 22];
            app.ButClearPreferences.Text = 'CLEAR';

            % Create InvertimageLabel
            app.InvertimageLabel = uilabel(app.Panel_11);
            app.InvertimageLabel.HorizontalAlignment = 'right';
            app.InvertimageLabel.Enable = 'off';
            app.InvertimageLabel.Tooltip = {'Image inversion uses MATLAB''s ''imcompletement()'' '};
            app.InvertimageLabel.Position = [57 57 71 22];
            app.InvertimageLabel.Text = 'Invert image';

            % Create ROILabel
            app.ROILabel = uilabel(app.Panel_11);
            app.ROILabel.HorizontalAlignment = 'right';
            app.ROILabel.Enable = 'off';
            app.ROILabel.Tooltip = {'region of interest (ROI)'};
            app.ROILabel.Position = [102 31 26 22];
            app.ROILabel.Text = 'ROI';

            % Create EEDLabel
            app.EEDLabel = uilabel(app.Panel_11);
            app.EEDLabel.HorizontalAlignment = 'right';
            app.EEDLabel.Enable = 'off';
            app.EEDLabel.Tooltip = {'enhanced edge detection (EED) '};
            app.EEDLabel.Position = [324 57 30 22];
            app.EEDLabel.Text = 'EED';

            % Create IUCLabel
            app.IUCLabel = uilabel(app.Panel_11);
            app.IUCLabel.HorizontalAlignment = 'right';
            app.IUCLabel.Enable = 'off';
            app.IUCLabel.Tooltip = {'image uniformity correction (IUC) is a gaussian filter applied to all images'};
            app.IUCLabel.Position = [102 5 26 22];
            app.IUCLabel.Text = 'IUC';

            % Create MorphologicalLabel
            app.MorphologicalLabel = uilabel(app.Panel_11);
            app.MorphologicalLabel.HorizontalAlignment = 'right';
            app.MorphologicalLabel.Enable = 'off';
            app.MorphologicalLabel.Tooltip = {'The preferences for the morphological and threshholding operators used for the purpose of object segmentation'};
            app.MorphologicalLabel.Position = [274 4 80 22];
            app.MorphologicalLabel.Text = 'Morphological';

            % Create UnitscalingLabel
            app.UnitscalingLabel = uilabel(app.Panel_11);
            app.UnitscalingLabel.HorizontalAlignment = 'right';
            app.UnitscalingLabel.Enable = 'off';
            app.UnitscalingLabel.Tooltip = {'Unit scaling transforms output units from pixels to other length scale units (e.g., nm or μm)'};
            app.UnitscalingLabel.Position = [287 29 67 22];
            app.UnitscalingLabel.Text = 'Unit scaling';

            % Create ExportoptionsLabel
            app.ExportoptionsLabel = uilabel(app.Panel_11);
            app.ExportoptionsLabel.HorizontalAlignment = 'right';
            app.ExportoptionsLabel.Enable = 'off';
            app.ExportoptionsLabel.Tooltip = {'The export preferences'};
            app.ExportoptionsLabel.Position = [481 57 82 22];
            app.ExportoptionsLabel.Text = 'Export options';

            % Create PreferencesfileuploadLabel
            app.PreferencesfileuploadLabel = uilabel(app.Panel_11);
            app.PreferencesfileuploadLabel.Enable = 'off';
            app.PreferencesfileuploadLabel.Position = [21 139 127 22];
            app.PreferencesfileuploadLabel.Text = 'Preferences file upload';

            % Create s2html1
            app.s2html1 = uihtml(app.Panel_11);
            app.s2html1.HTMLSource = '</div></div>';
            app.s2html1.Tag = 's2html';
            app.s2html1.Position = [163 60 16 16];

            % Create s2html2
            app.s2html2 = uihtml(app.Panel_11);
            app.s2html2.HTMLSource = '</div></div>';
            app.s2html2.Tag = 's2html';
            app.s2html2.Position = [163 34 16 16];

            % Create s2html3
            app.s2html3 = uihtml(app.Panel_11);
            app.s2html3.HTMLSource = '</div></div>';
            app.s2html3.Tag = 's2html';
            app.s2html3.Position = [163 8 16 16];

            % Create s2html4
            app.s2html4 = uihtml(app.Panel_11);
            app.s2html4.HTMLSource = '</div></div>';
            app.s2html4.Tag = 's2html';
            app.s2html4.Position = [389 60 16 16];

            % Create s2html5
            app.s2html5 = uihtml(app.Panel_11);
            app.s2html5.HTMLSource = '</div></div>';
            app.s2html5.Tag = 's2html';
            app.s2html5.Position = [389 34 16 16];

            % Create s2html6
            app.s2html6 = uihtml(app.Panel_11);
            app.s2html6.HTMLSource = '</div></div>';
            app.s2html6.Tag = 's2html';
            app.s2html6.Position = [389 8 16 16];

            % Create s2html7
            app.s2html7 = uihtml(app.Panel_11);
            app.s2html7.HTMLSource = '</div></div>';
            app.s2html7.Tag = 's2html';
            app.s2html7.Position = [598 60 16 16];

            % Create PreviousButton_10
            app.PreviousButton_10 = uibutton(app.step2Tab, 'push');
            app.PreviousButton_10.ButtonPushedFcn = createCallbackFcn(app, @PreviousButton_10Pushed, true);
            app.PreviousButton_10.Tag = 'step1Tab';
            app.PreviousButton_10.Position = [30 30 100 30];
            app.PreviousButton_10.Text = 'Previous';

            % Create NxtButStep2
            app.NxtButStep2 = uibutton(app.step2Tab, 'push');
            app.NxtButStep2.ButtonPushedFcn = createCallbackFcn(app, @NxtButStep2Pushed, true);
            app.NxtButStep2.Tag = 'step3Tab';
            app.NxtButStep2.Position = [909 30 100 30];
            app.NxtButStep2.Text = 'Next';

            % Create HTML2_6
            app.HTML2_6 = uihtml(app.step2Tab);
            app.HTML2_6.HTMLSource = '<div style="width: 1037px; height: 1px; background-color: #BFBFBF;"></div>';
            app.HTML2_6.Position = [1 62 1037 28];

            % Create HTML14
            app.HTML14 = uihtml(app.step2Tab);
            app.HTML14.HTMLSource = '<style>  .note {    color: #6c757d;    display: block; /* Starts on a new line */    margin-top: 10px; /* Adds space above the note */    font-style: italic; /* Optional: Makes it look more like a note */  }    .required {    color: #d35400;  }    .optional {    color: #6c757d;  }  </style><div style="position: relative; width: 100%; height: 100%; display: inline-block; text-align: center; overflow-y: hidden;">  <span id="tooltip-text" style="font-family: helvetica;text-align: center; font-size: 12px; cursor: help;">(Touch for guide)</span>  <div id="tooltip-popup" style="visibility: hidden; width: 645px; max-width: 100%; max-height: 50px; background-color: #f9f9f9; color: #333; font-family: helvetica; font-size: 12px; text-align: justify; border: 1px solid #ccc; padding: 10px; position: absolute; z-index: 1; word-wrap: break-word; line-height: 1.5; white-space: normal; top: 25px; left: 0px; overflow-y: auto; box-sizing: border-box; transition: opacity 0.5s ease;"> This  <span class="optional">(optional)</span> step is for applying preprocessing operations to your image file(s). You can do so through <b>Manual selection</b> or <b>Preferences file upload</b>. If done manually, you can apply: <ol>  <li><b>Region of interest (ROI):</b> Allows you to focus all analysis on specific area of your image set.</li>  <li><b>Image uniformity correction (IUC):</b> Removes vignette artifact that arise from some microscopic images.  </li>  <li><b>Enhanced edge detection (EED):</b> Enhances the contrast of objects'' edges if object recognition is weak.  </li></ol>Alternatively, you may want to apply one or more conditions from a previously processed set, you can do so by uploading a <span style="color: blue;"><it>Preferences.mat</it></span> file. <span class="note">Note: Preference.mat is generated automatically after the <b>Export</b> step is completed.</span></div></div><script>  const tooltipText = document.getElementById("tooltip-text");  const tooltipPopup = document.getElementById("tooltip-popup");  let hideTimeout;  tooltipText.addEventListener("mouseover", function() {    clearTimeout(hideTimeout);    tooltipPopup.style.opacity = 1;    tooltipPopup.style.visibility = "visible";  });  tooltipPopup.addEventListener("mouseover", function() {    clearTimeout(hideTimeout);    tooltipPopup.style.visibility = "visible";  });  function hideTooltip() {    hideTimeout = setTimeout(() => {      tooltipPopup.style.opacity = 0;      setTimeout(() => {        tooltipPopup.style.visibility = "hidden";      }, 300);    }, 2000);  }  tooltipText.addEventListener("mouseout", hideTooltip);  tooltipPopup.addEventListener("mouseout", hideTooltip);</script>';
            app.HTML14.Position = [197 12 645 71];

            % Create step3Tab
            app.step3Tab = uitab(app.TabGroup4);
            app.step3Tab.Title = 'step3Tab';

            % Create UIscaleAxes
            app.UIscaleAxes = uiaxes(app.step3Tab);
            app.UIscaleAxes.AmbientLightColor = 'none';
            app.UIscaleAxes.XColor = [0.6588 0.6588 0.6588];
            app.UIscaleAxes.XTick = [];
            app.UIscaleAxes.YColor = [0.6588 0.6588 0.6588];
            app.UIscaleAxes.YTick = [];
            app.UIscaleAxes.ZTick = [];
            app.UIscaleAxes.BoxStyle = 'full';
            app.UIscaleAxes.Color = [0.9412 0.9412 0.9412];
            app.UIscaleAxes.GridColor = 'none';
            app.UIscaleAxes.MinorGridColor = [0.149 0.149 0.149];
            app.UIscaleAxes.Box = 'on';
            app.UIscaleAxes.ColorOrder = [0 0.447 0.741;0.85 0.325 0.098;0.929 0.694 0.125;0.466 0.674 0.188;0.494 0.184 0.556;0.301 0.745 0.933;0.635 0.078 0.184;0.549019607843137 0.337254901960784 0.294117647058824;0.890196078431372 0.466666666666667 0.76078431372549;0.498039215686275 0.498039215686275 0.498039215686275;0.737254901960784 0.741176470588235 0.133333333333333;0.682352941176471 0.780392156862745 0.909803921568627;0.596078431372549 0.874509803921569 0.541176470588235;1 0.596078431372549 0.588235294117647;0.772549019607843 0.690196078431373 0.835294117647059;0.768627450980392 0.611764705882353 0.580392156862745;0.780392156862745 0.780392156862745 0.780392156862745;0.858823529411765 0.858823529411765 0.552941176470588;0.619607843137255 0.854901960784314 0.898039215686275;0.619047619047619 0.464566929133858 1;0 0.362204724409449 0.0952380952380952;0.253968253968254 0.118110236220472 0.714285714285714;0.634920634920635 0.480314960629921 0;0 0.669291338582677 0.571428571428571];
            app.UIscaleAxes.FontSize = 10;
            app.UIscaleAxes.Position = [538 129 472 349];

            % Create UnitcalibrationLabel
            app.UnitcalibrationLabel = uilabel(app.step3Tab);
            app.UnitcalibrationLabel.FontSize = 18;
            app.UnitcalibrationLabel.FontWeight = 'bold';
            app.UnitcalibrationLabel.Position = [29 514 124 23];
            app.UnitcalibrationLabel.Text = 'Unit calibration';

            % Create BrowseyourcomputerforscaleimageLabel
            app.BrowseyourcomputerforscaleimageLabel = uilabel(app.step3Tab);
            app.BrowseyourcomputerforscaleimageLabel.FontWeight = 'bold';
            app.BrowseyourcomputerforscaleimageLabel.Position = [29 462 210 22];
            app.BrowseyourcomputerforscaleimageLabel.Text = 'Browse your computer for scale image';

            % Create ImagescalebarvalueandunitLabel
            app.ImagescalebarvalueandunitLabel = uilabel(app.step3Tab);
            app.ImagescalebarvalueandunitLabel.FontWeight = 'bold';
            app.ImagescalebarvalueandunitLabel.Enable = 'off';
            app.ImagescalebarvalueandunitLabel.Position = [30 362 168 22];
            app.ImagescalebarvalueandunitLabel.Text = 'Image scale bar value and unit';

            % Create DropDownCalib
            app.DropDownCalib = uidropdown(app.step3Tab);
            app.DropDownCalib.Items = {'px'};
            app.DropDownCalib.ValueChangedFcn = createCallbackFcn(app, @DropDownCalibValueChanged, true);
            app.DropDownCalib.Enable = 'off';
            app.DropDownCalib.BackgroundColor = [0.9608 0.9608 0.9608];
            app.DropDownCalib.Position = [291 324 65 22];
            app.DropDownCalib.Value = 'px';

            % Create efCalibInput
            app.efCalibInput = uieditfield(app.step3Tab, 'numeric');
            app.efCalibInput.ValueDisplayFormat = '%4.2f';
            app.efCalibInput.ValueChangedFcn = createCallbackFcn(app, @efCalibInputValueChanged, true);
            app.efCalibInput.Enable = 'off';
            app.efCalibInput.Position = [157 324 128 22];

            % Create CalibConfirm
            app.CalibConfirm = uibutton(app.step3Tab, 'push');
            app.CalibConfirm.ButtonPushedFcn = createCallbackFcn(app, @CalibConfirmButtonPushed, true);
            app.CalibConfirm.Enable = 'off';
            app.CalibConfirm.Position = [393 324 75 23];
            app.CalibConfirm.Text = 'Confirm';

            % Create part3header
            app.part3header = uilabel(app.step3Tab);
            app.part3header.FontWeight = 'bold';
            app.part3header.Enable = 'off';
            app.part3header.Position = [30 265 101 22];
            app.part3header.Text = 'Calibration results';

            % Create text2
            app.text2 = uilabel(app.step3Tab);
            app.text2.HorizontalAlignment = 'right';
            app.text2.FontName = 'Lato';
            app.text2.Enable = 'off';
            app.text2.Position = [65 202 82 22];
            app.text2.Text = 'Scale factor: ';

            % Create scaleConvertLabel
            app.scaleConvertLabel = uilabel(app.step3Tab);
            app.scaleConvertLabel.FontName = 'Lato';
            app.scaleConvertLabel.Enable = 'off';
            app.scaleConvertLabel.Position = [152 202 68 22];
            app.scaleConvertLabel.Text = '1';

            % Create text1
            app.text1 = uilabel(app.step3Tab);
            app.text1.HorizontalAlignment = 'right';
            app.text1.FontName = 'Lato';
            app.text1.Enable = 'off';
            app.text1.Position = [65 234 82 22];
            app.text1.Text = 'Unit of length:';

            % Create unitLengthLabel
            app.unitLengthLabel = uilabel(app.step3Tab);
            app.unitLengthLabel.FontName = 'Lato';
            app.unitLengthLabel.Enable = 'off';
            app.unitLengthLabel.Position = [152 234 78 22];
            app.unitLengthLabel.Text = 'Pixels';

            % Create ButBrowseScale
            app.ButBrowseScale = uibutton(app.step3Tab, 'push');
            app.ButBrowseScale.ButtonPushedFcn = createCallbackFcn(app, @ButBrowseScaleButtonPushed, true);
            app.ButBrowseScale.FontName = 'Lato';
            app.ButBrowseScale.Position = [273 422 100 23];
            app.ButBrowseScale.Text = 'Browse';

            % Create ButClearAdjustScale
            app.ButClearAdjustScale = uibutton(app.step3Tab, 'push');
            app.ButClearAdjustScale.FontName = 'Lato';
            app.ButClearAdjustScale.FontSize = 8;
            app.ButClearAdjustScale.FontWeight = 'bold';
            app.ButClearAdjustScale.Enable = 'off';
            app.ButClearAdjustScale.Visible = 'off';
            app.ButClearAdjustScale.Position = [65 105 42 22];
            app.ButClearAdjustScale.Text = 'RESET';

            % Create PreviousButton_11
            app.PreviousButton_11 = uibutton(app.step3Tab, 'push');
            app.PreviousButton_11.ButtonPushedFcn = createCallbackFcn(app, @PreviousButton_11Pushed, true);
            app.PreviousButton_11.Tag = 'step2Tab';
            app.PreviousButton_11.Position = [30 30 100 30];
            app.PreviousButton_11.Text = 'Previous';

            % Create NxtButStep3
            app.NxtButStep3 = uibutton(app.step3Tab, 'push');
            app.NxtButStep3.ButtonPushedFcn = createCallbackFcn(app, @NxtButStep3Pushed, true);
            app.NxtButStep3.Tag = 'step4Tab';
            app.NxtButStep3.Position = [909 30 100 30];
            app.NxtButStep3.Text = 'Next';

            % Create pxLabel
            app.pxLabel = uilabel(app.step3Tab);
            app.pxLabel.HorizontalAlignment = 'right';
            app.pxLabel.FontName = 'Lato';
            app.pxLabel.Enable = 'off';
            app.pxLabel.Position = [68 324 82 22];
            app.pxLabel.Text = ' px = ';

            % Create scaleValLabel
            app.scaleValLabel = uilabel(app.step3Tab);
            app.scaleValLabel.HorizontalAlignment = 'right';
            app.scaleValLabel.FontSize = 9;
            app.scaleValLabel.Visible = 'off';
            app.scaleValLabel.Position = [226 222 90 22];
            app.scaleValLabel.Text = 'scaleVal';

            % Create scaleValTempLabel
            app.scaleValTempLabel = uilabel(app.step3Tab);
            app.scaleValTempLabel.HorizontalAlignment = 'right';
            app.scaleValTempLabel.FontSize = 9;
            app.scaleValTempLabel.Visible = 'off';
            app.scaleValTempLabel.Position = [364 222 90 22];
            app.scaleValTempLabel.Text = 'scaleVal Temp';

            % Create scaleUnitsLabel
            app.scaleUnitsLabel = uilabel(app.step3Tab);
            app.scaleUnitsLabel.HorizontalAlignment = 'right';
            app.scaleUnitsLabel.FontSize = 9;
            app.scaleUnitsLabel.Visible = 'off';
            app.scaleUnitsLabel.Position = [269 201 47 22];
            app.scaleUnitsLabel.Text = 'scaleUnits';

            % Create scaleUnitsTempLabel
            app.scaleUnitsTempLabel = uilabel(app.step3Tab);
            app.scaleUnitsTempLabel.HorizontalAlignment = 'right';
            app.scaleUnitsTempLabel.FontSize = 9;
            app.scaleUnitsTempLabel.Visible = 'off';
            app.scaleUnitsTempLabel.Position = [386 201 68 22];
            app.scaleUnitsTempLabel.Text = 'scaleUnitsTemp';

            % Create PixelLineLengthLabel_2
            app.PixelLineLengthLabel_2 = uilabel(app.step3Tab);
            app.PixelLineLengthLabel_2.HorizontalAlignment = 'right';
            app.PixelLineLengthLabel_2.FontSize = 9;
            app.PixelLineLengthLabel_2.Visible = 'off';
            app.PixelLineLengthLabel_2.Position = [247 180 69 22];
            app.PixelLineLengthLabel_2.Text = 'PixelLineLength';

            % Create PixelLineLengthTempLabel_2
            app.PixelLineLengthTempLabel_2 = uilabel(app.step3Tab);
            app.PixelLineLengthTempLabel_2.HorizontalAlignment = 'right';
            app.PixelLineLengthTempLabel_2.FontSize = 9;
            app.PixelLineLengthTempLabel_2.Visible = 'off';
            app.PixelLineLengthTempLabel_2.Position = [363 180 91 22];
            app.PixelLineLengthTempLabel_2.Text = 'PixelLineLengthTemp';

            % Create LinePos1Label_2
            app.LinePos1Label_2 = uilabel(app.step3Tab);
            app.LinePos1Label_2.HorizontalAlignment = 'right';
            app.LinePos1Label_2.FontSize = 9;
            app.LinePos1Label_2.Visible = 'off';
            app.LinePos1Label_2.Position = [226 158 90 22];
            app.LinePos1Label_2.Text = 'LinePos(1)';

            % Create LinePos1TempLabel_2
            app.LinePos1TempLabel_2 = uilabel(app.step3Tab);
            app.LinePos1TempLabel_2.HorizontalAlignment = 'right';
            app.LinePos1TempLabel_2.FontSize = 9;
            app.LinePos1TempLabel_2.Visible = 'off';
            app.LinePos1TempLabel_2.Position = [384 158 70 22];
            app.LinePos1TempLabel_2.Text = 'LinePos(1)Temp';

            % Create ConvFactorLabel
            app.ConvFactorLabel = uilabel(app.step3Tab);
            app.ConvFactorLabel.HorizontalAlignment = 'right';
            app.ConvFactorLabel.FontSize = 9;
            app.ConvFactorLabel.Visible = 'off';
            app.ConvFactorLabel.Position = [226 136 90 22];
            app.ConvFactorLabel.Text = 'ConvFactor';

            % Create ConvFactorTempLabel
            app.ConvFactorTempLabel = uilabel(app.step3Tab);
            app.ConvFactorTempLabel.HorizontalAlignment = 'right';
            app.ConvFactorTempLabel.FontSize = 9;
            app.ConvFactorTempLabel.Visible = 'off';
            app.ConvFactorTempLabel.Position = [381 136 73 22];
            app.ConvFactorTempLabel.Text = 'ConvFactorTemp';

            % Create Label2_cft
            app.Label2_cft = uilabel(app.step3Tab);
            app.Label2_cft.FontSize = 9;
            app.Label2_cft.Visible = 'off';
            app.Label2_cft.Position = [462 136 40 22];
            app.Label2_cft.Text = '.';

            % Create Label2_cf
            app.Label2_cf = uilabel(app.step3Tab);
            app.Label2_cf.FontSize = 9;
            app.Label2_cf.Visible = 'off';
            app.Label2_cf.Position = [324 136 40 22];
            app.Label2_cf.Text = '.';

            % Create Label2_lpt
            app.Label2_lpt = uilabel(app.step3Tab);
            app.Label2_lpt.FontSize = 9;
            app.Label2_lpt.Visible = 'off';
            app.Label2_lpt.Position = [462 158 40 22];
            app.Label2_lpt.Text = '.';

            % Create Label2_lp
            app.Label2_lp = uilabel(app.step3Tab);
            app.Label2_lp.FontSize = 9;
            app.Label2_lp.Visible = 'off';
            app.Label2_lp.Position = [324 158 40 22];
            app.Label2_lp.Text = '.';

            % Create Label2_plt
            app.Label2_plt = uilabel(app.step3Tab);
            app.Label2_plt.FontSize = 9;
            app.Label2_plt.Visible = 'off';
            app.Label2_plt.Position = [462 180 40 22];
            app.Label2_plt.Text = '.';

            % Create Label2_pl
            app.Label2_pl = uilabel(app.step3Tab);
            app.Label2_pl.FontSize = 9;
            app.Label2_pl.Visible = 'off';
            app.Label2_pl.Position = [324 180 40 22];
            app.Label2_pl.Text = '.';

            % Create Label2_sut
            app.Label2_sut = uilabel(app.step3Tab);
            app.Label2_sut.FontSize = 9;
            app.Label2_sut.Visible = 'off';
            app.Label2_sut.Position = [462 201 40 22];
            app.Label2_sut.Text = '.';

            % Create Label2_su
            app.Label2_su = uilabel(app.step3Tab);
            app.Label2_su.FontSize = 9;
            app.Label2_su.Visible = 'off';
            app.Label2_su.Position = [324 201 40 22];
            app.Label2_su.Text = '.';

            % Create Label2_svt
            app.Label2_svt = uilabel(app.step3Tab);
            app.Label2_svt.FontSize = 9;
            app.Label2_svt.Visible = 'off';
            app.Label2_svt.Position = [462 222 40 22];
            app.Label2_svt.Text = '.';

            % Create Label2_sv
            app.Label2_sv = uilabel(app.step3Tab);
            app.Label2_sv.FontSize = 9;
            app.Label2_sv.Visible = 'off';
            app.Label2_sv.Position = [324 222 40 22];
            app.Label2_sv.Text = '.';

            % Create HTML2_4
            app.HTML2_4 = uihtml(app.step3Tab);
            app.HTML2_4.HTMLSource = '<div style="width: 1px; height: 412px; background-color: #BFBFBF;"></div>';
            app.HTML2_4.Position = [516 89 10 412];

            % Create ScaleImgTB
            app.ScaleImgTB = uieditfield(app.step3Tab, 'text');
            app.ScaleImgTB.Editable = 'off';
            app.ScaleImgTB.Position = [66 422 193 22];

            % Create CalibCnfrmHTML
            app.CalibCnfrmHTML = uihtml(app.step3Tab);
            app.CalibCnfrmHTML.HTMLSource = '<div style="width:16px; height:16px; background-color:#FEC73C; border-radius:50%; position:relative;">  <div style="width:2px; height:8px; background-color:white; position:absolute; top:2px; left:7px;"></div>  <div style="width:2px; height:2px; background-color:white; border-radius:50%; position:absolute; bottom:2px; left:7px;"></div></div>';
            app.CalibCnfrmHTML.Visible = 'off';
            app.CalibCnfrmHTML.Position = [475 324 22 20];

            % Create CalibGuidePanel
            app.CalibGuidePanel = uipanel(app.step3Tab);
            app.CalibGuidePanel.BorderType = 'none';
            app.CalibGuidePanel.Visible = 'off';
            app.CalibGuidePanel.Position = [555 466 446 79];

            % Create CalibArrowHTML
            app.CalibArrowHTML = uihtml(app.CalibGuidePanel);
            app.CalibArrowHTML.HTMLSource = '<!DOCTYPE html><html lang="en"><head>    <meta charset="UTF-8">    <meta name="viewport" content="width=device-width, initial-scale=1.0">    <title>Flashing Arrow</title>    <style>            .flashing-arrow {            font-size: 36px;            font-weight: bold;   }    </style></head><body>    <div class="flashing-arrow">⮮</div></body></html>';
            app.CalibArrowHTML.Tooltip = {''};
            app.CalibArrowHTML.Position = [4 0 30 56];

            % Create CalibFlashingHTML
            app.CalibFlashingHTML = uihtml(app.CalibGuidePanel);
            app.CalibFlashingHTML.Position = [29 -2 122 73];

            % Create ResizinglineLabel
            app.ResizinglineLabel = uilabel(app.CalibGuidePanel);
            app.ResizinglineLabel.FontSize = 10.5;
            app.ResizinglineLabel.Position = [157 28 70 22];
            app.ResizinglineLabel.Text = 'Resizing line: ';

            % Create HorizontalfixLabel
            app.HorizontalfixLabel = uilabel(app.CalibGuidePanel);
            app.HorizontalfixLabel.FontSize = 10.5;
            app.HorizontalfixLabel.Position = [157 7 69 22];
            app.HorizontalfixLabel.Text = 'Horizontal fix:';

            % Create MovinglineLabel
            app.MovinglineLabel = uilabel(app.CalibGuidePanel);
            app.MovinglineLabel.FontSize = 10.5;
            app.MovinglineLabel.Position = [157 48 63 22];
            app.MovinglineLabel.Text = 'Moving line: ';

            % Create HOLDLCLICKLabel_2
            app.HOLDLCLICKLabel_2 = uilabel(app.CalibGuidePanel);
            app.HOLDLCLICKLabel_2.FontSize = 10.5;
            app.HOLDLCLICKLabel_2.FontWeight = 'bold';
            app.HOLDLCLICKLabel_2.Position = [231 48 186 22];
            app.HOLDLCLICKLabel_2.Text = '        + HOLD L.CLICK';

            % Create HOLDLCLICKLabel
            app.HOLDLCLICKLabel = uilabel(app.CalibGuidePanel);
            app.HOLDLCLICKLabel.FontSize = 10.5;
            app.HOLDLCLICKLabel.FontWeight = 'bold';
            app.HOLDLCLICKLabel.Position = [231 28 186 22];
            app.HOLDLCLICKLabel.Text = '     + HOLD L.CLICK';

            % Create HOLDSHIFTKEYLabel
            app.HOLDSHIFTKEYLabel = uilabel(app.CalibGuidePanel);
            app.HOLDSHIFTKEYLabel.FontSize = 10.5;
            app.HOLDSHIFTKEYLabel.FontWeight = 'bold';
            app.HOLDSHIFTKEYLabel.Position = [231 7 186 22];
            app.HOLDSHIFTKEYLabel.Text = 'HOLD SHIFT KEY';

            % Create Label
            app.Label = uilabel(app.CalibGuidePanel);
            app.Label.FontSize = 15;
            app.Label.FontWeight = 'bold';
            app.Label.FontColor = [0 1 0];
            app.Label.Position = [232 46 62 22];
            app.Label.Text = '⧟';

            % Create Label_2
            app.Label_2 = uilabel(app.CalibGuidePanel);
            app.Label_2.FontSize = 10.5;
            app.Label_2.FontWeight = 'bold';
            app.Label_2.FontColor = [0 1 0];
            app.Label_2.Position = [231 25 63 22];
            app.Label_2.Text = '⬤ ';

            % Create HTML2_7
            app.HTML2_7 = uihtml(app.step3Tab);
            app.HTML2_7.HTMLSource = '<div style="width: 1037px; height: 1px; background-color: #BFBFBF;"></div>';
            app.HTML2_7.Position = [1 62 1037 28];

            % Create HTML13
            app.HTML13 = uihtml(app.step3Tab);
            app.HTML13.HTMLSource = '<!DOCTYPE html><html lang="en"><head>    <meta charset="UTF-8">    <meta name="viewport" content="width=device-width, initial-scale=1.0">    <title>Fading Text</title>    <style>        @keyframes fadeInOut {            0%, 100% { opacity: 0; }            50% { opacity: 1; }        }        .fade-text {            font-size: 10.5px; /* Adjust size as needed */            animation: fadeInOut 3s infinite; /* Adjust duration as needed */        }        /* Prevent scrolling */        html, body {            margin: 0;            padding: 0;            overflow: hidden;            height: 100%;        }    </style></head><body>    <div class="fade-text">(type value on your scale bar)</div></body></html>';
            app.HTML13.Visible = 'off';
            app.HTML13.Position = [157 293 128 26];

            % Create HTML15
            app.HTML15 = uihtml(app.step3Tab);
            app.HTML15.HTMLSource = '<style>  .note {    color: #6c757d;    display: block;    /* Starts on a new line */    margin-top: 10px;    /* Adds space above the note */    font-style: italic;    /* Optional: Makes it look more like a note */  }  .required {    color: #d35400;  }  .optional {    color: #6c757d;  }</style><div style="position: relative; width: 100%; height: 100%; display: inline-block; text-align: center; overflow-y: hidden;">  <span id="tooltip-text" style="font-family: helvetica;text-align: center; font-size: 12px; cursor: help;">(Touch for guide)</span>  <div id="tooltip-popup" style="visibility: hidden; width: 645px; max-width: 100%; max-height: 50px; background-color: #f9f9f9; color: #333; font-family: helvetica; font-size: 12px; text-align: justify; border: 1px solid #ccc; padding: 10px; position: absolute; z-index: 1; word-wrap: break-word; line-height: 1.5; white-space: normal; top: 25px; left: 0px; overflow-y: auto; box-sizing: border-box; transition: opacity 0.5s ease;"> This <span class="optional">(optional)</span> step is to <b>calibrate</b> the length scale of your images. To do so, follow these steps: <ol>      <li>        <b></b> Load an image with a scale bar using the <b>Browse</b> button.      </li>      <li>        <b></b> Select from the <b>drop down menu</b> the unit that matches the unit in your loaded image.      </li>      <li>        <b></b> In the <b>input box</b>, enter the same number that appears next to the scale bar in your loaded image.      </li>      <li>        <b></b> Move and drag the <b>green line</b> around to match it with the length of the scale bar in your loaded image      </li>      <li>        <b></b> Click <b>Confirm</b>. The unit of measurement is now calibrated.      </li>    </ol>    <span class="note">Note: You can zoom in using the scroll wheel to enhance the accuracy of matching the green line with your scale bar.</span>    <span class="note">Note: You can hold SHIFT to snap the line horizontally</span>    <span class="note">Note: If you proceed without calibration, the units will be in pixels.</span>  </div></div><script>  const tooltipText = document.getElementById("tooltip-text");  const tooltipPopup = document.getElementById("tooltip-popup");  let hideTimeout;  tooltipText.addEventListener("mouseover", function() {    clearTimeout(hideTimeout);    tooltipPopup.style.opacity = 1;    tooltipPopup.style.visibility = "visible";  });  tooltipPopup.addEventListener("mouseover", function() {    clearTimeout(hideTimeout);    tooltipPopup.style.visibility = "visible";  });  function hideTooltip() {    hideTimeout = setTimeout(() => {      tooltipPopup.style.opacity = 0;      setTimeout(() => {        tooltipPopup.style.visibility = "hidden";      }, 300);    }, 2000);  }  tooltipText.addEventListener("mouseout", hideTooltip);  tooltipPopup.addEventListener("mouseout", hideTooltip);</script>';
            app.HTML15.Position = [197 12 645 71];

            % Create step4Tab
            app.step4Tab = uitab(app.TabGroup4);
            app.step4Tab.Title = 'step4Tab';

            % Create UIAxes
            app.UIAxes = uiaxes(app.step4Tab);
            app.UIAxes.AmbientLightColor = 'none';
            app.UIAxes.PlotBoxAspectRatio = [1 1 1];
            app.UIAxes.GridLineWidth = 0.25;
            app.UIAxes.MinorGridLineWidth = 0.25;
            app.UIAxes.GridLineStyle = 'none';
            app.UIAxes.MinorGridLineStyle = 'none';
            app.UIAxes.XColor = [0 0 0];
            app.UIAxes.XTick = [];
            app.UIAxes.XTickLabel = '';
            app.UIAxes.YColor = [0 0 0];
            app.UIAxes.YTick = [];
            app.UIAxes.ZColor = 'none';
            app.UIAxes.BoxStyle = 'full';
            app.UIAxes.LineWidth = 0.1;
            app.UIAxes.Color = [0 0.9216 0];
            app.UIAxes.ClippingStyle = 'rectangle';
            app.UIAxes.GridColor = 'none';
            app.UIAxes.MinorGridColor = 'none';
            app.UIAxes.Box = 'on';
            app.UIAxes.ColorOrder = [0 0.447 0.741;0.85 0.325 0.098;0.929 0.694 0.125;0.466 0.674 0.188;0.494 0.184 0.556;0.301 0.745 0.933;0.635 0.078 0.184;0.549019607843137 0.337254901960784 0.294117647058824;0.890196078431372 0.466666666666667 0.76078431372549;0.498039215686275 0.498039215686275 0.498039215686275;0.737254901960784 0.741176470588235 0.133333333333333;0.682352941176471 0.780392156862745 0.909803921568627;0.596078431372549 0.874509803921569 0.541176470588235;1 0.596078431372549 0.588235294117647;0.772549019607843 0.690196078431373 0.835294117647059;0.768627450980392 0.611764705882353 0.580392156862745;0.780392156862745 0.780392156862745 0.780392156862745;0.858823529411765 0.858823529411765 0.552941176470588;0.619607843137255 0.854901960784314 0.898039215686275;0.619047619047619 0.464566929133858 1;0 0.362204724409449 0.0952380952380952;0.253968253968254 0.118110236220472 0.714285714285714;0.634920634920635 0.480314960629921 0;0 0.669291338582677 0.571428571428571];
            app.UIAxes.Clipping = 'off';
            app.UIAxes.Position = [667 475 32 32];

            % Create UIAxes_2
            app.UIAxes_2 = uiaxes(app.step4Tab);
            app.UIAxes_2.AmbientLightColor = 'none';
            app.UIAxes_2.PlotBoxAspectRatio = [1 1 1];
            app.UIAxes_2.GridLineWidth = 0.25;
            app.UIAxes_2.MinorGridLineWidth = 0.25;
            app.UIAxes_2.GridLineStyle = 'none';
            app.UIAxes_2.MinorGridLineStyle = 'none';
            app.UIAxes_2.XColor = [0 0 0];
            app.UIAxes_2.XTick = [];
            app.UIAxes_2.XTickLabel = '';
            app.UIAxes_2.YColor = [0 0 0];
            app.UIAxes_2.YTick = [];
            app.UIAxes_2.ZColor = 'none';
            app.UIAxes_2.BoxStyle = 'full';
            app.UIAxes_2.LineWidth = 0.1;
            app.UIAxes_2.Color = [1 0.5294 1];
            app.UIAxes_2.ClippingStyle = 'rectangle';
            app.UIAxes_2.MinorGridColor = 'none';
            app.UIAxes_2.Box = 'on';
            app.UIAxes_2.ColorOrder = [0 0.447 0.741;0.85 0.325 0.098;0.929 0.694 0.125;0.466 0.674 0.188;0.494 0.184 0.556;0.301 0.745 0.933;0.635 0.078 0.184;0.549019607843137 0.337254901960784 0.294117647058824;0.890196078431372 0.466666666666667 0.76078431372549;0.498039215686275 0.498039215686275 0.498039215686275;0.737254901960784 0.741176470588235 0.133333333333333;0.682352941176471 0.780392156862745 0.909803921568627;0.596078431372549 0.874509803921569 0.541176470588235;1 0.596078431372549 0.588235294117647;0.772549019607843 0.690196078431373 0.835294117647059;0.768627450980392 0.611764705882353 0.580392156862745;0.780392156862745 0.780392156862745 0.780392156862745;0.858823529411765 0.858823529411765 0.552941176470588;0.619607843137255 0.854901960784314 0.898039215686275;0.619047619047619 0.464566929133858 1;0 0.362204724409449 0.0952380952380952;0.253968253968254 0.118110236220472 0.714285714285714;0.634920634920635 0.480314960629921 0;0 0.669291338582677 0.571428571428571];
            app.UIAxes_2.Clipping = 'off';
            app.UIAxes_2.Position = [841 476 32 32];

            % Create SegmentationtuningLabel
            app.SegmentationtuningLabel = uilabel(app.step4Tab);
            app.SegmentationtuningLabel.FontSize = 18;
            app.SegmentationtuningLabel.FontWeight = 'bold';
            app.SegmentationtuningLabel.Position = [29 514 170 23];
            app.SegmentationtuningLabel.Text = 'Segmentation tuning';

            % Create BackgroundLabel
            app.BackgroundLabel = uilabel(app.step4Tab);
            app.BackgroundLabel.FontName = 'Lato';
            app.BackgroundLabel.FontSize = 10;
            app.BackgroundLabel.FontColor = [0.149 0.149 0.149];
            app.BackgroundLabel.Position = [654 505 58 22];
            app.BackgroundLabel.Text = 'Background';

            % Create ObjectsLabel
            app.ObjectsLabel = uilabel(app.step4Tab);
            app.ObjectsLabel.FontName = 'Lato';
            app.ObjectsLabel.FontSize = 10;
            app.ObjectsLabel.FontColor = [0.149 0.149 0.149];
            app.ObjectsLabel.Position = [839 506 45 22];
            app.ObjectsLabel.Text = 'Object(s)';

            % Create ImagenumberLabel
            app.ImagenumberLabel = uilabel(app.step4Tab);
            app.ImagenumberLabel.HorizontalAlignment = 'right';
            app.ImagenumberLabel.Position = [524 126 86 22];
            app.ImagenumberLabel.Text = 'Image number:';

            % Create SegTuningSpinner
            app.SegTuningSpinner = uispinner(app.step4Tab);
            app.SegTuningSpinner.Limits = [1 Inf];
            app.SegTuningSpinner.ValueChangedFcn = createCallbackFcn(app, @SegTuningSpinnerValueChanged, true);
            app.SegTuningSpinner.Position = [617 128 82 20];
            app.SegTuningSpinner.Value = 1;

            % Create FilenameLabel
            app.FilenameLabel = uilabel(app.step4Tab);
            app.FilenameLabel.Position = [718 126 61 22];
            app.FilenameLabel.Text = 'File name:';

            % Create FilenameLabelval
            app.FilenameLabelval = uilabel(app.step4Tab);
            app.FilenameLabelval.Position = [786 126 223 22];
            app.FilenameLabelval.Text = 'N/A';

            % Create SegTuningFigure
            app.SegTuningFigure = uiimage(app.step4Tab);
            app.SegTuningFigure.ImageClickedFcn = createCallbackFcn(app, @SegTuningFigureImageClicked, true);
            app.SegTuningFigure.Position = [529 177 480 290];

            % Create InvertblackwhiteLabel
            app.InvertblackwhiteLabel = uilabel(app.step4Tab);
            app.InvertblackwhiteLabel.FontWeight = 'bold';
            app.InvertblackwhiteLabel.Position = [29 462 109 22];
            app.InvertblackwhiteLabel.Text = 'Invert black & white';

            % Create invertSwitch
            app.invertSwitch = uiswitch(app.step4Tab, 'rocker');
            app.invertSwitch.Items = {'Normal', 'Inverted'};
            app.invertSwitch.Orientation = 'horizontal';
            app.invertSwitch.ValueChangedFcn = createCallbackFcn(app, @invertSwitchValueChanged, true);
            app.invertSwitch.Position = [111 427 45 20];
            app.invertSwitch.Value = 'Normal';

            % Create SegmentationtuningmorphologicalthersholdingparametersLabel
            app.SegmentationtuningmorphologicalthersholdingparametersLabel = uilabel(app.step4Tab);
            app.SegmentationtuningmorphologicalthersholdingparametersLabel.FontWeight = 'bold';
            app.SegmentationtuningmorphologicalthersholdingparametersLabel.Position = [29 380 350 22];
            app.SegmentationtuningmorphologicalthersholdingparametersLabel.Text = 'Segmentation tuning (morphological & thersholding parameters)';

            % Create DropDownObjectShape
            app.DropDownObjectShape = uidropdown(app.step4Tab);
            app.DropDownObjectShape.Items = {'disk (default)', 'diamond', 'octagon', 'line', 'rectangle', 'square'};
            app.DropDownObjectShape.ValueChangedFcn = createCallbackFcn(app, @DropDownObjectShapeValueChanged, true);
            app.DropDownObjectShape.FontName = 'Lato';
            app.DropDownObjectShape.Position = [155 349 113 22];
            app.DropDownObjectShape.Value = 'disk (default)';

            % Create ObjectshapeLabel
            app.ObjectshapeLabel = uilabel(app.step4Tab);
            app.ObjectshapeLabel.FontName = 'Lato';
            app.ObjectshapeLabel.Position = [66 349 76 22];
            app.ObjectshapeLabel.Text = 'Object shape';

            % Create Panel_8
            app.Panel_8 = uipanel(app.step4Tab);
            app.Panel_8.Position = [78 272 314 64];

            % Create TFieldVal1
            app.TFieldVal1 = uieditfield(app.step4Tab, 'text');
            app.TFieldVal1.ValueChangedFcn = createCallbackFcn(app, @TFieldVal1ValueChanged, true);
            app.TFieldVal1.HorizontalAlignment = 'center';
            app.TFieldVal1.FontName = 'Lato';
            app.TFieldVal1.Position = [352 314 40 22];
            app.TFieldVal1.Value = '0';

            % Create LblVal1
            app.LblVal1 = uilabel(app.step4Tab);
            app.LblVal1.VerticalAlignment = 'top';
            app.LblVal1.FontName = 'Lato';
            app.LblVal1.Position = [84 312 111 22];
            app.LblVal1.Text = 'Radius';

            % Create SliderVal1
            app.SliderVal1 = uislider(app.step4Tab);
            app.SliderVal1.Limits = [1 50];
            app.SliderVal1.ValueChangingFcn = createCallbackFcn(app, @SliderVal1ValueChanging, true);
            app.SliderVal1.FontName = 'Lato';
            app.SliderVal1.FontSize = 8;
            app.SliderVal1.FontColor = [0.3608 0.3882 0.4314];
            app.SliderVal1.Position = [93 307 283 3];
            app.SliderVal1.Value = 3;

            % Create Panel_7
            app.Panel_7 = uipanel(app.step4Tab);
            app.Panel_7.Position = [78 200 314 64];

            % Create TFieldVal2
            app.TFieldVal2 = uieditfield(app.step4Tab, 'text');
            app.TFieldVal2.ValueChangedFcn = createCallbackFcn(app, @TFieldVal2ValueChanged, true);
            app.TFieldVal2.HorizontalAlignment = 'center';
            app.TFieldVal2.FontName = 'Lato';
            app.TFieldVal2.Position = [352 242 40 22];
            app.TFieldVal2.Value = '0';

            % Create LblVal2
            app.LblVal2 = uilabel(app.step4Tab);
            app.LblVal2.VerticalAlignment = 'top';
            app.LblVal2.FontName = 'Lato';
            app.LblVal2.Position = [84 242 111 22];
            app.LblVal2.Text = 'Approximation';

            % Create SliderVal2
            app.SliderVal2 = uislider(app.step4Tab);
            app.SliderVal2.Limits = [0 50];
            app.SliderVal2.ValueChangingFcn = createCallbackFcn(app, @SliderVal2ValueChanging, true);
            app.SliderVal2.FontName = 'Lato';
            app.SliderVal2.FontSize = 8;
            app.SliderVal2.FontColor = [0.3608 0.3882 0.4314];
            app.SliderVal2.Position = [93 235 283 3];

            % Create Panel_6
            app.Panel_6 = uipanel(app.step4Tab);
            app.Panel_6.Position = [78 127 314 64];

            % Create TFieldVal3
            app.TFieldVal3 = uieditfield(app.step4Tab, 'text');
            app.TFieldVal3.ValueChangedFcn = createCallbackFcn(app, @TFieldVal3ValueChanged, true);
            app.TFieldVal3.HorizontalAlignment = 'center';
            app.TFieldVal3.FontName = 'Lato';
            app.TFieldVal3.Position = [352 169 40 22];
            app.TFieldVal3.Value = '0';

            % Create Lblval3
            app.Lblval3 = uilabel(app.step4Tab);
            app.Lblval3.VerticalAlignment = 'top';
            app.Lblval3.FontName = 'Lato';
            app.Lblval3.Position = [84 167 111 22];
            app.Lblval3.Text = 'B&W Threshold';

            % Create SliderVal3
            app.SliderVal3 = uislider(app.step4Tab);
            app.SliderVal3.Limits = [0 1];
            app.SliderVal3.ValueChangingFcn = createCallbackFcn(app, @SliderVal3ValueChanging, true);
            app.SliderVal3.FontName = 'Lato';
            app.SliderVal3.FontSize = 9;
            app.SliderVal3.FontColor = [0.3608 0.3882 0.4314];
            app.SliderVal3.Position = [93 162 283 3];

            % Create PreviousButton_12
            app.PreviousButton_12 = uibutton(app.step4Tab, 'push');
            app.PreviousButton_12.ButtonPushedFcn = createCallbackFcn(app, @PreviousButton_12Pushed, true);
            app.PreviousButton_12.Tag = 'step3Tab';
            app.PreviousButton_12.Position = [30 30 100 30];
            app.PreviousButton_12.Text = 'Previous';

            % Create NxtButStep4
            app.NxtButStep4 = uibutton(app.step4Tab, 'push');
            app.NxtButStep4.ButtonPushedFcn = createCallbackFcn(app, @NxtButStep4Pushed, true);
            app.NxtButStep4.Tag = 'step5Tab';
            app.NxtButStep4.Position = [909 30 100 30];
            app.NxtButStep4.Text = 'Next';

            % Create HTML2_8
            app.HTML2_8 = uihtml(app.step4Tab);
            app.HTML2_8.HTMLSource = '<div style="width: 1037px; height: 1px; background-color: #BFBFBF;"></div>';
            app.HTML2_8.Position = [1 62 1037 28];

            % Create HTML12_5
            app.HTML12_5 = uihtml(app.step4Tab);
            app.HTML12_5.HTMLSource = '<style>  .note {    color: #6c757d;    display: block; /* Starts on a new line */    margin-top: 10px; /* Adds space above the note */    font-style: italic; /* Optional: Makes it look more like a note */  }    .required {    color: #d35400;  }    .optional {    color: #6c757d;  }  </style><div style="position: relative; width: 100%; height: 100%; display: inline-block; text-align: center; overflow-y: hidden;">  <span id="tooltip-text" style="font-family: helvetica;text-align: center; font-size: 12px; cursor: help;">(Touch for guide)</span>  <div id="tooltip-popup" style="visibility: hidden; width: 645px; max-width: 100%; max-height: 50px; background-color: #f9f9f9; color: #333; font-family: helvetica; font-size: 12px; text-align: justify; border: 1px solid #ccc; padding: 10px; position: absolute; z-index: 1; word-wrap: break-word; line-height: 1.5; white-space: normal; top: 25px; left: 0px; overflow-y: auto; box-sizing: border-box; transition: opacity 0.5s ease;"> This  <span class="required">(required)</span> step is to <b>tune object segmentation</b>. Tuning should be done such that the objects appear <b><span style="color: magenta;">magenta</span></b> whereas the background appears <b><span style="color: green;">green</span></b>. To do so, follow the steps below:  <ol>  <li><b>Invert black & white:</b> Depending on your image, it may be necessary to invert the image by toggling from <b>Normal</b> to <b>Inverted</b>, as one will be better for segmenting darker objects whereas the other is better for segmenting brighter objects.</li>  <li><b>Segmentation tuning:</b> </li><ol type="i">  <li><b>Object shape:</b> Using the drop down menu, select the shape that is the closest match to the object of your interest</li>  <li><b>Morphological sliders:</b> Depending on the chosen shape, adjust the first two sliders to fine-tune the size of the morpholigical operation </li>  <li><b>B&W Threshold slider:</b> The B&W threshold is adjusted to separate the background from objects</li>  </ol></ol><span class="note">Note: You often find that it is best to alternate between the morpholigical sliders and the B&W thresholding slider to arrive at the best result.</span><span class="note">Note: If segmentation is done correctly, objects will be conspicuously separated from the background.</span><span class="note">Note: You can click on the preview image to enlarge if the details are not well seen.</span><span class="note">Note: You can see the segmentation result on other images by changing the value of the <b>spinner</b> under the preview image</span></div></div><script>  const tooltipText = document.getElementById("tooltip-text");  const tooltipPopup = document.getElementById("tooltip-popup");  let hideTimeout;  tooltipText.addEventListener("mouseover", function() {    clearTimeout(hideTimeout);    tooltipPopup.style.opacity = 1;    tooltipPopup.style.visibility = "visible";  });  tooltipPopup.addEventListener("mouseover", function() {    clearTimeout(hideTimeout);    tooltipPopup.style.visibility = "visible";  });  function hideTooltip() {    hideTimeout = setTimeout(() => {      tooltipPopup.style.opacity = 0;      setTimeout(() => {        tooltipPopup.style.visibility = "hidden";      }, 300);    }, 2000);  }  tooltipText.addEventListener("mouseout", hideTooltip);  tooltipPopup.addEventListener("mouseout", hideTooltip);</script>';
            app.HTML12_5.Position = [197 12 645 71];

            % Create step5Tab
            app.step5Tab = uitab(app.TabGroup4);
            app.step5Tab.Title = 'step5Tab';

            % Create SegmentationpreviewLabel
            app.SegmentationpreviewLabel = uilabel(app.step5Tab);
            app.SegmentationpreviewLabel.FontSize = 18;
            app.SegmentationpreviewLabel.FontWeight = 'bold';
            app.SegmentationpreviewLabel.Position = [29 514 182 23];
            app.SegmentationpreviewLabel.Text = 'Segmentation preview';

            % Create PropertiesofselectedobjectLabel
            app.PropertiesofselectedobjectLabel = uilabel(app.step5Tab);
            app.PropertiesofselectedobjectLabel.FontWeight = 'bold';
            app.PropertiesofselectedobjectLabel.Position = [29 462 157 22];
            app.PropertiesofselectedobjectLabel.Text = 'Properties of selected object';

            % Create TextArea_60
            app.TextArea_60 = uitextarea(app.step5Tab);
            app.TextArea_60.Position = [529 174 481 286];

            % Create SegPreviewFigure
            app.SegPreviewFigure = uiimage(app.step5Tab);
            app.SegPreviewFigure.BackgroundColor = [0 0 0];
            app.SegPreviewFigure.Position = [529 177 480 280];

            % Create objNumLabel
            app.objNumLabel = uilabel(app.step5Tab);
            app.objNumLabel.FontName = 'Lato';
            app.objNumLabel.Position = [585 463 264 22];
            app.objNumLabel.Text = 'N/A';

            % Create objNumLabel_2
            app.objNumLabel_2 = uilabel(app.step5Tab);
            app.objNumLabel_2.HorizontalAlignment = 'right';
            app.objNumLabel_2.FontName = 'Lato';
            app.objNumLabel_2.Position = [525 463 50 22];
            app.objNumLabel_2.Text = 'Object #';

            % Create ImagenumberSpinnerLabel
            app.ImagenumberSpinnerLabel = uilabel(app.step5Tab);
            app.ImagenumberSpinnerLabel.HorizontalAlignment = 'right';
            app.ImagenumberSpinnerLabel.FontName = 'Lato';
            app.ImagenumberSpinnerLabel.FontWeight = 'bold';
            app.ImagenumberSpinnerLabel.Position = [523 128 82 22];
            app.ImagenumberSpinnerLabel.Text = 'Image number';

            % Create SegPreviewSpinner
            app.SegPreviewSpinner = uispinner(app.step5Tab);
            app.SegPreviewSpinner.Limits = [1 Inf];
            app.SegPreviewSpinner.ValueChangedFcn = createCallbackFcn(app, @SegPreviewSpinnerValueChanged, true);
            app.SegPreviewSpinner.HorizontalAlignment = 'left';
            app.SegPreviewSpinner.FontName = 'Lato';
            app.SegPreviewSpinner.FontWeight = 'bold';
            app.SegPreviewSpinner.Position = [613 129 85 20];
            app.SegPreviewSpinner.Value = 1;

            % Create ButObjectLabeling
            app.ButObjectLabeling = uibutton(app.step5Tab, 'state');
            app.ButObjectLabeling.ValueChangedFcn = createCallbackFcn(app, @ButObjectLabelingValueChanged, true);
            app.ButObjectLabeling.Text = 'Show labels';
            app.ButObjectLabeling.Position = [796 127 100 23];

            % Create FilledareaLabel
            app.FilledareaLabel = uilabel(app.step5Tab);
            app.FilledareaLabel.HorizontalAlignment = 'right';
            app.FilledareaLabel.FontAngle = 'italic';
            app.FilledareaLabel.Position = [99 403 61 22];
            app.FilledareaLabel.Text = 'Filled area';

            % Create MajoraxislengthLabel
            app.MajoraxislengthLabel = uilabel(app.step5Tab);
            app.MajoraxislengthLabel.HorizontalAlignment = 'right';
            app.MajoraxislengthLabel.FontAngle = 'italic';
            app.MajoraxislengthLabel.Position = [64 377 96 22];
            app.MajoraxislengthLabel.Text = 'Major axis length';

            % Create OrientationLabel
            app.OrientationLabel = uilabel(app.step5Tab);
            app.OrientationLabel.HorizontalAlignment = 'right';
            app.OrientationLabel.FontAngle = 'italic';
            app.OrientationLabel.Position = [96 327 64 22];
            app.OrientationLabel.Text = 'Orientation';

            % Create MinoraxislengthLabel
            app.MinoraxislengthLabel = uilabel(app.step5Tab);
            app.MinoraxislengthLabel.HorizontalAlignment = 'right';
            app.MinoraxislengthLabel.FontAngle = 'italic';
            app.MinoraxislengthLabel.Position = [64 352 96 22];
            app.MinoraxislengthLabel.Text = 'Minor axis length';

            % Create CentroidXposLabel
            app.CentroidXposLabel = uilabel(app.step5Tab);
            app.CentroidXposLabel.HorizontalAlignment = 'right';
            app.CentroidXposLabel.FontAngle = 'italic';
            app.CentroidXposLabel.Position = [75 277 85 22];
            app.CentroidXposLabel.Text = 'Centroid X-pos';

            % Create EccentricityLabel
            app.EccentricityLabel = uilabel(app.step5Tab);
            app.EccentricityLabel.HorizontalAlignment = 'right';
            app.EccentricityLabel.FontAngle = 'italic';
            app.EccentricityLabel.Position = [93 302 67 22];
            app.EccentricityLabel.Text = 'Eccentricity';

            % Create Filledareaprev
            app.Filledareaprev = uilabel(app.step5Tab);
            app.Filledareaprev.Position = [175 403 96 22];

            % Create Majoraxislengthprev
            app.Majoraxislengthprev = uilabel(app.step5Tab);
            app.Majoraxislengthprev.Position = [175 377 96 22];

            % Create Minoraxislengthprev
            app.Minoraxislengthprev = uilabel(app.step5Tab);
            app.Minoraxislengthprev.Position = [175 352 96 22];

            % Create Orientationprev
            app.Orientationprev = uilabel(app.step5Tab);
            app.Orientationprev.Position = [175 327 96 22];

            % Create Eccentricityprev
            app.Eccentricityprev = uilabel(app.step5Tab);
            app.Eccentricityprev.Position = [175 302 96 22];

            % Create CentroidXposprev
            app.CentroidXposprev = uilabel(app.step5Tab);
            app.CentroidXposprev.Position = [175 277 96 22];

            % Create CentroidYposLabel
            app.CentroidYposLabel = uilabel(app.step5Tab);
            app.CentroidYposLabel.HorizontalAlignment = 'right';
            app.CentroidYposLabel.FontAngle = 'italic';
            app.CentroidYposLabel.Position = [78 252 82 22];
            app.CentroidYposLabel.Text = 'Centroid Y-pos';

            % Create CentroidYposprev
            app.CentroidYposprev = uilabel(app.step5Tab);
            app.CentroidYposprev.Position = [175 252 96 22];

            % Create Convexareaprev
            app.Convexareaprev = uilabel(app.step5Tab);
            app.Convexareaprev.Position = [175 227 98 22];

            % Create ConvexareaLabel
            app.ConvexareaLabel = uilabel(app.step5Tab);
            app.ConvexareaLabel.HorizontalAlignment = 'right';
            app.ConvexareaLabel.FontAngle = 'italic';
            app.ConvexareaLabel.Position = [88 227 72 22];
            app.ConvexareaLabel.Text = 'Convex area';

            % Create AreaLabel
            app.AreaLabel = uilabel(app.step5Tab);
            app.AreaLabel.HorizontalAlignment = 'right';
            app.AreaLabel.FontAngle = 'italic';
            app.AreaLabel.Position = [130 429 30 22];
            app.AreaLabel.Text = 'Area';

            % Create Areaprev
            app.Areaprev = uilabel(app.step5Tab);
            app.Areaprev.Position = [175 429 96 22];

            % Create Circularityprev
            app.Circularityprev = uilabel(app.step5Tab);
            app.Circularityprev.Position = [404 429 98 22];

            % Create Solidityprev
            app.Solidityprev = uilabel(app.step5Tab);
            app.Solidityprev.Position = [404 403 98 22];

            % Create Equivdiameterprev
            app.Equivdiameterprev = uilabel(app.step5Tab);
            app.Equivdiameterprev.Position = [404 377 98 22];

            % Create CircularityLabel
            app.CircularityLabel = uilabel(app.step5Tab);
            app.CircularityLabel.HorizontalAlignment = 'right';
            app.CircularityLabel.FontAngle = 'italic';
            app.CircularityLabel.Position = [330 429 59 22];
            app.CircularityLabel.Text = 'Circularity';

            % Create SolidityLabel
            app.SolidityLabel = uilabel(app.step5Tab);
            app.SolidityLabel.HorizontalAlignment = 'right';
            app.SolidityLabel.FontAngle = 'italic';
            app.SolidityLabel.Position = [345 403 44 22];
            app.SolidityLabel.Text = 'Solidity';

            % Create EquivdiameterLabel
            app.EquivdiameterLabel = uilabel(app.step5Tab);
            app.EquivdiameterLabel.HorizontalAlignment = 'right';
            app.EquivdiameterLabel.FontAngle = 'italic';
            app.EquivdiameterLabel.Position = [302 377 87 22];
            app.EquivdiameterLabel.Text = 'Equiv. diameter';

            % Create Eulernumberprev
            app.Eulernumberprev = uilabel(app.step5Tab);
            app.Eulernumberprev.Position = [404 352 98 22];

            % Create EulernumberLabel
            app.EulernumberLabel = uilabel(app.step5Tab);
            app.EulernumberLabel.HorizontalAlignment = 'right';
            app.EulernumberLabel.FontAngle = 'italic';
            app.EulernumberLabel.Position = [312 352 77 22];
            app.EulernumberLabel.Text = 'Euler number';

            % Create Extentprev
            app.Extentprev = uilabel(app.step5Tab);
            app.Extentprev.Position = [404 327 98 22];

            % Create ExtentLabel
            app.ExtentLabel = uilabel(app.step5Tab);
            app.ExtentLabel.HorizontalAlignment = 'right';
            app.ExtentLabel.FontAngle = 'italic';
            app.ExtentLabel.Position = [350 327 39 22];
            app.ExtentLabel.Text = 'Extent';

            % Create Perimeterprev
            app.Perimeterprev = uilabel(app.step5Tab);
            app.Perimeterprev.Position = [404 302 98 22];

            % Create PerimeterLabel
            app.PerimeterLabel = uilabel(app.step5Tab);
            app.PerimeterLabel.HorizontalAlignment = 'right';
            app.PerimeterLabel.FontAngle = 'italic';
            app.PerimeterLabel.Position = [332 302 57 22];
            app.PerimeterLabel.Text = 'Perimeter';

            % Create PreviousButton_13
            app.PreviousButton_13 = uibutton(app.step5Tab, 'push');
            app.PreviousButton_13.ButtonPushedFcn = createCallbackFcn(app, @PreviousButton_13Pushed, true);
            app.PreviousButton_13.Tag = 'step4Tab';
            app.PreviousButton_13.Position = [30 30 100 30];
            app.PreviousButton_13.Text = 'Previous';

            % Create NxtButStep5
            app.NxtButStep5 = uibutton(app.step5Tab, 'push');
            app.NxtButStep5.ButtonPushedFcn = createCallbackFcn(app, @NxtButStep5Pushed, true);
            app.NxtButStep5.Tag = 'step6Tab';
            app.NxtButStep5.Position = [909 30 100 30];
            app.NxtButStep5.Text = 'Next';

            % Create ShowimageButton
            app.ShowimageButton = uibutton(app.step5Tab, 'state');
            app.ShowimageButton.ValueChangedFcn = createCallbackFcn(app, @ShowimageButtonValueChanged, true);
            app.ShowimageButton.Text = 'Show image';
            app.ShowimageButton.Position = [909 127 100 23];
            app.ShowimageButton.Value = true;

            % Create HTML2_9
            app.HTML2_9 = uihtml(app.step5Tab);
            app.HTML2_9.HTMLSource = '<div style="width: 1037px; height: 1px; background-color: #BFBFBF;"></div>';
            app.HTML2_9.Position = [1 62 1037 28];

            % Create HTML12_6
            app.HTML12_6 = uihtml(app.step5Tab);
            app.HTML12_6.HTMLSource = '<style>  .note {    color: #6c757d;    display: block;    /* Starts on a new line */    margin-top: 10px;    /* Adds space above the note */    font-style: italic;    /* Optional: Makes it look more like a note */  }  .required {    color: #d35400;  }  .optional {    color: #6c757d;  }</style><div style="position: relative; width: 100%; height: 100%; display: inline-block; text-align: center; overflow-y: hidden;">  <span id="tooltip-text" style="font-family: helvetica;text-align: center; font-size: 12px; cursor: help;">(Touch for guide)</span>  <div id="tooltip-popup" style="visibility: hidden; width: 645px; max-width: 100%; max-height: 50px; background-color: #f9f9f9; color: #333; font-family: helvetica; font-size: 12px; text-align: justify; border: 1px solid #ccc; padding: 10px; position: absolute; z-index: 1; word-wrap: break-word; line-height: 1.5; white-space: normal; top: 25px; left: 0px; overflow-y: auto; box-sizing: border-box; transition: opacity 0.5s ease;"> This <span class="optional">(optional)</span> step is to <b>preview</b> the results of the segmentation. You can analyze indiviual objects by clicking on them to reveal their properties. When finished, click <b>Next</b>.      <span class="note">Note: You can swap through different images via the spinner under the preview image.</span>    <span class="note">Note: You can click on <b>Show labels</b> to show the label corresponding to each object</span>    <span class="note">Note: To reopen the figure, you can click on <b>Show image</b></span>  </div></div><script>  const tooltipText = document.getElementById("tooltip-text");  const tooltipPopup = document.getElementById("tooltip-popup");  let hideTimeout;  tooltipText.addEventListener("mouseover", function() {    clearTimeout(hideTimeout);    tooltipPopup.style.opacity = 1;    tooltipPopup.style.visibility = "visible";  });  tooltipPopup.addEventListener("mouseover", function() {    clearTimeout(hideTimeout);    tooltipPopup.style.visibility = "visible";  });  function hideTooltip() {    hideTimeout = setTimeout(() => {      tooltipPopup.style.opacity = 0;      setTimeout(() => {        tooltipPopup.style.visibility = "hidden";      }, 300);    }, 2000);  }  tooltipText.addEventListener("mouseout", hideTooltip);  tooltipPopup.addEventListener("mouseout", hideTooltip);</script>';
            app.HTML12_6.Position = [197 12 645 71];

            % Create step6Tab
            app.step6Tab = uitab(app.TabGroup4);
            app.step6Tab.Title = 'step6Tab';

            % Create ExportoptionsLabel_2
            app.ExportoptionsLabel_2 = uilabel(app.step6Tab);
            app.ExportoptionsLabel_2.FontSize = 18;
            app.ExportoptionsLabel_2.FontWeight = 'bold';
            app.ExportoptionsLabel_2.Position = [29 514 121 23];
            app.ExportoptionsLabel_2.Text = 'Export options';

            % Create SelectfiletypesyouwanttoexportLabel
            app.SelectfiletypesyouwanttoexportLabel = uilabel(app.step6Tab);
            app.SelectfiletypesyouwanttoexportLabel.FontWeight = 'bold';
            app.SelectfiletypesyouwanttoexportLabel.Position = [29 462 191 22];
            app.SelectfiletypesyouwanttoexportLabel.Text = 'Select file types you want to export';

            % Create HTML2_2
            app.HTML2_2 = uihtml(app.step6Tab);
            app.HTML2_2.HTMLSource = '<div style="width: 371px; height: 1px; background-color: #BFBFBF;"></div>';
            app.HTML2_2.Position = [68 419 371 1];

            % Create exporgcb
            app.exporgcb = uicheckbox(app.step6Tab);
            app.exporgcb.ValueChangedFcn = createCallbackFcn(app, @exporgcbValueChanged, true);
            app.exporgcb.Text = 'Original images';
            app.exporgcb.WordWrap = 'on';
            app.exporgcb.Position = [66 369 185 35];

            % Create expbwcb
            app.expbwcb = uicheckbox(app.step6Tab);
            app.expbwcb.ValueChangedFcn = createCallbackFcn(app, @expbwcbValueChanged, true);
            app.expbwcb.Text = 'Binarized images';
            app.expbwcb.WordWrap = 'on';
            app.expbwcb.Position = [66 325 185 35];

            % Create exphighcb
            app.exphighcb = uicheckbox(app.step6Tab);
            app.exphighcb.ValueChangedFcn = createCallbackFcn(app, @exphighcbValueChanged, true);
            app.exphighcb.Text = 'Color-highlighted images';
            app.exphighcb.WordWrap = 'on';
            app.exphighcb.Position = [66 282 185 35];

            % Create explblcb
            app.explblcb = uicheckbox(app.step6Tab);
            app.explblcb.ValueChangedFcn = createCallbackFcn(app, @explblcbValueChanged, true);
            app.explblcb.Text = 'Labelled-objects images';
            app.explblcb.WordWrap = 'on';
            app.explblcb.Position = [265 369 185 35];

            % Create expbwbrdrclrcb
            app.expbwbrdrclrcb = uicheckbox(app.step6Tab);
            app.expbwbrdrclrcb.ValueChangedFcn = createCallbackFcn(app, @expbwbrdrclrcbValueChanged, true);
            app.expbwbrdrclrcb.Text = 'Binarized images, excluding border-touching objects';
            app.expbwbrdrclrcb.WordWrap = 'on';
            app.expbwbrdrclrcb.Position = [265 325 185 35];

            % Create mtlbcb
            app.mtlbcb = uicheckbox(app.step6Tab);
            app.mtlbcb.ValueChangedFcn = createCallbackFcn(app, @mtlbcbValueChanged, true);
            app.mtlbcb.Text = 'MATLAB workspace variable';
            app.mtlbcb.WordWrap = 'on';
            app.mtlbcb.Position = [265 282 185 35];

            % Create deselectallcb
            app.deselectallcb = uicheckbox(app.step6Tab);
            app.deselectallcb.ValueChangedFcn = createCallbackFcn(app, @deselectallcbValueChanged, true);
            app.deselectallcb.Text = 'Deselect all';
            app.deselectallcb.Position = [359 422 84 22];

            % Create selectallcb
            app.selectallcb = uicheckbox(app.step6Tab);
            app.selectallcb.ValueChangedFcn = createCallbackFcn(app, @selectallcbValueChanged, true);
            app.selectallcb.Text = 'Select all';
            app.selectallcb.Position = [271 422 71 22];

            % Create HTML2_3
            app.HTML2_3 = uihtml(app.step6Tab);
            app.HTML2_3.HTMLSource = '<div style="width: 1px; height: 20px; background-color: #BFBFBF;"></div>';
            app.HTML2_3.Position = [350 423 1 20];

            % Create PreviousButton_14
            app.PreviousButton_14 = uibutton(app.step6Tab, 'push');
            app.PreviousButton_14.ButtonPushedFcn = createCallbackFcn(app, @PreviousButton_14Pushed, true);
            app.PreviousButton_14.Tag = 'step5Tab';
            app.PreviousButton_14.Position = [30 30 100 30];
            app.PreviousButton_14.Text = 'Previous';

            % Create HTML2_10
            app.HTML2_10 = uihtml(app.step6Tab);
            app.HTML2_10.HTMLSource = '<div style="width: 1037px; height: 1px; background-color: #BFBFBF;"></div>';
            app.HTML2_10.Position = [1 62 1037 28];

            % Create SaveButton
            app.SaveButton = uibutton(app.step6Tab, 'push');
            app.SaveButton.ButtonPushedFcn = createCallbackFcn(app, @SaveButtonPushed, true);
            app.SaveButton.Position = [909 30 100 30];
            app.SaveButton.Text = 'Save';

            % Create savedLabel
            app.savedLabel = uilabel(app.step6Tab);
            app.savedLabel.FontAngle = 'italic';
            app.savedLabel.FontColor = [0.1294 0.6314 0.051];
            app.savedLabel.Visible = 'off';
            app.savedLabel.Position = [938 61 44 22];
            app.savedLabel.Text = '(saved)';

            % Create HTML16
            app.HTML16 = uihtml(app.step6Tab);
            app.HTML16.HTMLSource = '<style>  .note {    color: #6c757d;    display: block;    /* Starts on a new line */    margin-top: 10px;    /* Adds space above the note */    font-style: italic;    /* Optional: Makes it look more like a note */  }  .required {    color: #d35400;  }  .optional {    color: #6c757d;  }</style><div style="position: relative; width: 100%; height: 100%; display: inline-block; text-align: center; overflow-y: hidden;">  <span id="tooltip-text" style="font-family: helvetica;text-align: center; font-size: 12px; cursor: help;">(Touch for guide)</span>  <div id="tooltip-popup" style="visibility: hidden; width: 645px; max-width: 100%; max-height: 50px; background-color: #f9f9f9; color: #333; font-family: helvetica; font-size: 12px; text-align: justify; border: 1px solid #ccc; padding: 10px; position: absolute; z-index: 1; word-wrap: break-word; line-height: 1.5; white-space: normal; top: 25px; left: 0px; overflow-y: auto; box-sizing: border-box; transition: opacity 0.5s ease;"> This <span class="optional">(optional)</span> step is to <b>select export options</b>. After selecting the options, click <b>Save</b> to export your data. A <b>data.csv</b> will be automatically saved after this step is completed. This file tabulates all the data to allow statistical analyses with any other software (e.g., Excel, MATLAB, R, etc.).<br>  The export options are:<ul><li><b>Original images:</b> Saves the original (raw) images.</li>  <li><b>Binarized images:</b> Saves the binarized images.</li>  <li><b>Color-highlighted images:</b> Saves the segmentation preview images (i.e., color-highlighted images)</li>  <li><b>Labelled-object images:</b> Saves a binarized, labelled version of images.</li>  <li><b>Binarized images, excluding border-touching objects:</b> Saves a binarized version of images whose objects do not touch the border (any border-touching object will disappear)</li>  <li><b>MATLAB workspace variable:</b> This is a workspace variable that contains all the object properties which can be loaded & further analyzed using MATLAB</li></ul>  <span class="note">Note: The <b>labelled-objects images</b> is computationally intensive, especially if your images contain a lot of objects.</span>    <span class="note">Note: A <span style="color: blue;"><b>Preferences.mat</b></span> file that contains all the parameters applied (preprocessing, scale calibration, segmentation parameters, export options) is automatically saved with the work package. This file can be loaded later in the <b>Preprocessing</b> step and the user can apply the same (or a selection) of those parameters to a different set of images.</span>  </div></div><script>  const tooltipText = document.getElementById("tooltip-text");  const tooltipPopup = document.getElementById("tooltip-popup");  let hideTimeout;  tooltipText.addEventListener("mouseover", function() {    clearTimeout(hideTimeout);    tooltipPopup.style.opacity = 1;    tooltipPopup.style.visibility = "visible";  });  tooltipPopup.addEventListener("mouseover", function() {    clearTimeout(hideTimeout);    tooltipPopup.style.visibility = "visible";  });  function hideTooltip() {    hideTimeout = setTimeout(() => {      tooltipPopup.style.opacity = 0;      setTimeout(() => {        tooltipPopup.style.visibility = "hidden";      }, 300);    }, 2000);  }  tooltipText.addEventListener("mouseout", hideTooltip);  tooltipPopup.addEventListener("mouseout", hideTooltip);</script>';
            app.HTML16.Position = [197 12 645 71];

            % Create aboutTab
            app.aboutTab = uitab(app.TabGroup4);
            app.aboutTab.Title = 'aboutTab';

            % Create AboutLabel
            app.AboutLabel = uilabel(app.aboutTab);
            app.AboutLabel.FontSize = 18;
            app.AboutLabel.FontWeight = 'bold';
            app.AboutLabel.Position = [29 514 52 23];
            app.AboutLabel.Text = 'About';

            % Create PleaserefertotheoriginallypublishedworkLabel
            app.PleaserefertotheoriginallypublishedworkLabel = uilabel(app.aboutTab);
            app.PleaserefertotheoriginallypublishedworkLabel.FontWeight = 'bold';
            app.PleaserefertotheoriginallypublishedworkLabel.Position = [29 462 242 22];
            app.PleaserefertotheoriginallypublishedworkLabel.Text = 'Please refer to the originally published work:';

            % Create MohanadBahshwanAllRightsReservedLabel
            app.MohanadBahshwanAllRightsReservedLabel = uilabel(app.aboutTab);
            app.MohanadBahshwanAllRightsReservedLabel.Position = [742 21 271 22];
            app.MohanadBahshwanAllRightsReservedLabel.Text = '© 2025 Mohanad Bahshwan. All Rights Reserved';

            % Create citation
            app.citation = uihyperlink(app.aboutTab);
            app.citation.URL = 'https://google.com';
            app.citation.Position = [48 426 303 22];
            app.citation.Text = 'A.B,  "ipsum lorem ...........................", 2024, XYZ, p-2-2';

            % Create Label_3
            app.Label_3 = uilabel(app.v10UIFigure);
            app.Label_3.Position = [-269 562 82 22];
            app.Label_3.Text = '0,91,1034,470';

            % Create CopyContextMenu
            app.CopyContextMenu = uicontextmenu(app.v10UIFigure);

            % Create CopyMenu
            app.CopyMenu = uimenu(app.CopyContextMenu);
            app.CopyMenu.MenuSelectedFcn = createCallbackFcn(app, @CopyMenuSelected, true);
            app.CopyMenu.Accelerator = 'c';
            app.CopyMenu.Text = 'Copy';
            
            % Assign app.CopyContextMenu
            app.citation.ContextMenu = app.CopyContextMenu;

            % Show the figure after all components are created
            app.v10UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = RAPID_v1_OpenSourceCode

            runningApp = getRunningApp(app);

            % Check for running singleton app
            if isempty(runningApp)

                % Create UIFigure and components
                createComponents(app)

                % Register the app with App Designer
                registerApp(app, app.v10UIFigure)

                % Execute the startup function
                runStartupFcn(app, @startupFcn)
            else

                % Focus the running singleton app
                figure(runningApp.v10UIFigure)

                app = runningApp;
            end

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.v10UIFigure)
        end
    end
end