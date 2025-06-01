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