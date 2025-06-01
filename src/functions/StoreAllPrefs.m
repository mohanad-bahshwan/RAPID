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