        function SegPreviewLabelHandler(app, EnableLabels)
            %
            % Checks if labelling exists and visible, exists but hidden,
            % or has not been created previously and subsequently creates it
            % INPUTS:
            % EnableLabels: A boolean (0: disabled; 1: enabled) for labeling

            % User requests disabling labels
            if EnableLabels == 0
                ToggleSwitch(app, app.ButObjectLabeling, 'off')
                arrayfun(@(x) set(x, 'Visible', 'off'), app.interactiveImgLabels);
            else
                % User requests enabling labels
                ToggleSwitch(app, app.ButObjectLabeling, 'on')
                % Labels exist but in a hidden state, then make them visible
                if not(isempty(app.interactiveImgLabels)) && isvalid(app.interactiveImgLabels(1))
                    arrayfun(@(x) set(x, 'Visible', 'on'), app.interactiveImgLabels);
                else
                    % Labels dont exist, then create them
                    FastObjectLabel(app,app.interactiveImg.CData);
                end

            end
        end