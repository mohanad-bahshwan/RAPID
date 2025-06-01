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