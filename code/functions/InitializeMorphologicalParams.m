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