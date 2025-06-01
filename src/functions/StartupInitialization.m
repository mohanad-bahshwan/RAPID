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