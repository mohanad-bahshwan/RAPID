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