function RegionofInterestCheckBoxHandler(app, event)
            %
            % Handles the Region of Interest (ROI) checkbox toggle.
            % Opens the ROI selection window when enabled and resets the ROI if disabled.
            % Displays a progress dialog prompting the user to close the ROI window before proceeding.
            %
            % Inputs:
            %   event - Event data from the ROI checkbox interaction.
            %
            handle = findall(0,'type','figure','tag','cropFigure');
            if ~isempty(handle)
                delete(handle);
                reset(app.cleanedDatstore);
                return
            end
            value = app.RegionofInterestROICheckBox.Value;
            app.cropBoo = value;


            dispWarning = uiprogressdlg(app.v10UIFigure,'Title','Waiting for user action', ...
                'Message', 'You must close the Region of interest (ROI) window to continue using the app.', 'Indeterminate','on');
            if ~isempty(fieldnames(app.inputDatastoreProperties))
                switch value
                    case true
                        DefineROI(app);
                    case false
                        % do nothing
                        app.cropROI = [];
                end
            else
                % No image is loaded, do nothing

            end
            if isempty(app.cropROI)
                event.Source.Value = 0;
                app.cropBoo = 0;
            end
            close(dispWarning);
        end