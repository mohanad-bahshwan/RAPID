        function PrepareScaleCalibFigure(app)
            %
            % This function initializes and prepares the scale calibration figure

            % Enable the dropdown for calibration options
            app.DropDownCalib.Enable = 'on';

            % Read and display the calibration image
            A = imread(app.ScaleImgTB.Value);%DONE
            imshow(A, 'Parent', app.UIscaleAxes);
            imgsz = size(A);
            set(app.UIscaleAxes, 'xlim', [0 imgsz(2)]);
            set(app.UIscaleAxes, 'ylim', [0 imgsz(1)]);

            % Draw a green calibration line at a predefined position
            h = drawline(app.UIscaleAxes,'tag', 'calibrationLine','Color', 'g', 'Position',[imgsz(2)*0.75 imgsz(1)*0.8; imgsz(2)*0.90 imgsz(1)*0.8], 'LineWidth', 4, 'MarkerSize', 9);

            % Define interactive features for the line (pointer behavior)
            linepointerBehavior.enterFcn =@(hfig, cpp)set(h, ...
                'LineWidth', 1);
            linepointerBehavior.traverseFcn = [];
            linepointerBehavior.exitFcn = ...
                @(hfig, cpp)set(h, ...
                'color', 'g', 'LineWidth', 4);

            % Define pointer behavior when interacting with the figure
            figpointerBehavior.enterFcn =[];
            figpointerBehavior.traverseFcn = [];
            figpointerBehavior.exitFcn = ...
                @(hfig, cpp)set(app.v10UIFigure, ...
                'Pointer', 'arrow');

            % Apply the pointer behavior settings
            iptSetPointerBehavior(h, linepointerBehavior);
            iptSetPointerBehavior(app.v10UIFigure, figpointerBehavior);
            iptPointerManager(app.v10UIFigure, 'enable');

            % Make the calibration line non-deletable and initially hidden
            h.Deletable = 0;
            h.Visible = 'off';

            % Set properties of the axes for scale calibration
            app.UIscaleAxes.LineWidth = 0.5;
            app.UIscaleAxes.Visible = 'on';
            app.UIscaleAxes.XAxis.Color = [0.66 0.66 0.66];
            app.UIscaleAxes.YAxis.Color = [0.66 0.66 0.66];
            app.pxLabel.Visible = 'off';
            app.ImagescalebarvalueandunitLabel.Visible = 'on';
            app.pxLabel.Visible = 'on';
            app.CalibConfirm.Visible = 'on';
            app.efCalibInput.Visible = 'on';
            app.DropDownCalib.Visible = 'on';
            length = h.Position(2,1)-h.Position(1,1);
            app.efCalibInput.Value = length;
            app.pxLabel.Text = [num2str(app.efCalibInput.Value, '%4.2f') ' px = '];
            addlistener(h, 'MovingROI', @(src, event)LineMovingFcn(src, event, app.scaleDataCollection, app.pxLabel, app.efCalibInput, app));

            CheckPreviousScaleRecords(app,app.scaleDataCollection, app.pxLabel, app.efCalibInput, h, app.DropDownCalib, app.CalibConfirm);

            function LineMovingFcn(~,evt, ~, ~, txtField, app)

                %Calculate length (based on horizontal length)
                length1 = evt.CurrentPosition(2,1)-evt.CurrentPosition(1,1);

                %Display value
                disp(length1);
                UpdateScaleCalibText(app)

                % Checks if textfield is disabled (to update it)
                if ~(txtField.Enable == 'on'), txtField.Value = length1; end

                %update class fields
                UpdateScaleCalibTemporaryVars(app);
                %display value
                UpdateScaleCalibText(app);

                % RecalculateCalibrationFactor(app);
                CheckCalibConfirmAllow(app);

            end


            app.ImagescalebarvalueandunitLabel.Enable = 'on';
            app.pxLabel.Enable = 'on';

        end