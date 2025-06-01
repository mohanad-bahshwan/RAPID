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