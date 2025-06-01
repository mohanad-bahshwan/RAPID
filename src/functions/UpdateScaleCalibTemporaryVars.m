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