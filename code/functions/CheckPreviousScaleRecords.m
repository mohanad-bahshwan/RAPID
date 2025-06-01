function CheckPreviousScaleRecords(app,~, txtStatic, txtField, lineHndle,dropDown,~)
            %
            % Checks for existing scale calibration records and updates the calibration setup accordingly.
            %
            % If no previous calibration exists, it initializes the scale data with the current line position and default units.
            % If a previous calibration exists, it restores the saved scale values, line position, and updates UI elements.
            % It also ensures the calibration line is within image boundaries and enables user input if needed.
            %
            % Inputs:
            %   app        - The app object containing properties and UI components.
            %   txtStatic  - Static text label displaying the pixel-to-unit scale.
            %   txtField   - Editable text field for user input of scale value.
            %   lineHndle  - Handle to the calibration line on the image.
            %   dropDown   - Dropdown menu for selecting the scale unit.

            %Pull scale values from global variable
            dataColl = app.scaleDataCollection;
            switch dataColl.firstTime
                case 1
                    disp('no previous scale value exists. (WRITE MODE)')
                    dataColl.acceptBoo = 0;
                    %Initialize data
                    length2 = lineHndle.Position(2,1)-lineHndle.Position(1,1);
                    dataColl.scaleValTemporary = length2;
                    dataColl.scaleUnitsTemporary = 'px';
                    dataColl.linePositionTemporary = lineHndle.Position;
                    dataColl.pixelLineLengthTemporary = length2;
                    dataColl.conversionFactorTemporary = length2/length2;

                    %update class fields
                    dataColl.scaleVal = dataColl.scaleValTemporary;
                    dataColl.scaleUnits = dataColl.scaleUnitsTemporary;
                    dataColl.linePosition = dataColl.linePositionTemporary;
                    dataColl.pixelLineLength = dataColl.pixelLineLengthTemporary;
                    dataColl.conversionFactor = dataColl.conversionFactorTemporary;



                    %Set firstTime to false
                    dataColl.firstTime = 0;
                case 0
                    A = imread(app.ScaleImgTB.Value);%DONE
                    disp('a previous scale value already exists (OVERWRITE MODE)');
                    dataColl.acceptBoo = 0;
                    dataColl.scaleValTemporary = dataColl.scaleVal;
                    dataColl.scaleUnitsTemporary = dataColl.scaleUnits;
                    dataColl.linePositionTemporary = dataColl.linePosition;
                    dataColl.pixelLineLengthTemporary = dataColl.pixelLineLength;
                    dataColl.conversionFactorTemporary = str2double(dataColl.scaleValTemporary)/dataColl.pixelLineLengthTemporary;


                    txtStatic.Text = [num2str(dataColl.pixelLineLength, '%4.2f') ' px ='];
                    txtField.Value = dataColl.scaleValTemporary;
                    dropDown.Value = dataColl.scaleUnitsTemporary;

                    if (dataColl.linePositionTemporary(1) > size(A,2)+10) || ...
                            (dataColl.linePositionTemporary(2) > size(A,2)+10) || ...
                            (dataColl.linePositionTemporary(3) > size(A,1)+10) || ...
                            (dataColl.linePositionTemporary(4) > size(A,1)+10)
                    else
                        lineHndle.Position = dataColl.linePositionTemporary;
                    end

                    if ~strcmp(dataColl.scaleUnits,'px'); txtField.Enable = 'on'; end

            end
            app.scaleDataCollection = dataColl;

        end