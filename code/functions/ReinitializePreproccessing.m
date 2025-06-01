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