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