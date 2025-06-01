function PreProcessSelectionHandler(app, event)
            %
            % Handles user selection between manual and file-based preprocessing methods.
            % Prompts for confirmation before switching methods and resets preprocessing parameters accordingly.
            % Enables or disables relevant UI panels based on the selected method.
            %
            % Inputs:
            %   event - Event data from the selection interaction.
            %
            selection = uiconfirm(app.v10UIFigure, 'Switching will erase any previously set operations. Continue?', 'warning', 'Icon', 'warning');
            switch selection
                case 'Cancel' % CANCELED
                    if strcmp(event.NewValue.Tag, 'manual')
                        app.PreferencesfileuploadButton.Value = 1;
                    else
                        app.ManualselectionButton.Value = 1;
                    end
                case 'OK' % CONFIRMED
                    %two choices, 'manual' or 'file'
                    app.preProcessMethod = event.NewValue.Tag;

                    %--RESET ALL PARAMETERS (GLOBAL RESET)
                    InitializePreProcessingParams(app)
                    InitializeMorphologicalParams(app)
                    InitializeScaleParams(app)
                    InitializeExportPrefs(app)


                    %find indicies of HTML icons
                    htmlidxs = cell2mat(arrayfun(@(x) find(findobj(app.Panel_11.Children, 'Tag', 's2html') == x), app.Panel_11.Children, 'UniformOutput', false));
                    %size of Panel children (including HTML icons)
                    sz = 1:size(app.Panel_11.Children,1);
                    sz = sz';

                    %manual import options method is chosen
                    if strcmp(event.NewValue.Tag, 'manual')
                        % enable 2a, disable 2b
                        set(app.Panel_10.Children, 'Enable', 'on');
                        set(app.Panel_11.Children(setdiff(sz, htmlidxs)), 'Enable', 'off');
                        app.Panel_10.FontWeight = "bold";
                        app.Panel_11.FontWeight = "normal";
                        UpdateIconStatus(app, {app.s2html1, app.s2html2, app.s2html3, app.s2html4, app.s2html5, app.s2html6, app.s2html7}, -1);

                        %file import options method is chosen
                    else
                        % enable 2b, disable 2a
                        set(app.Panel_10.Children, 'Enable', 'off');
                        set(app.Panel_11.Children(setdiff(sz, htmlidxs)), 'Enable', 'on');
                        app.Panel_10.FontWeight = "normal";
                        app.Panel_11.FontWeight = "bold";


                    end
            end
        end