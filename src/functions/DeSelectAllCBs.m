        function DeSelectAllCBs(app,src, event, checkboxcell, slctAll)
            %
            % Deselects all checkboxes in a given set and updates related UI elements and preferences.
            %
            % Inputs:
            %   src        - The source checkbox triggering the deselection.
            %   event      - The event data associated with the checkbox change.
            %   checkboxcell - Cell array containing the checkboxes to be deselected.
            %   slctAll    - The "select all" checkbox.
            if ~(event.PreviousValue == 1)
                cellfun(@(x) set(x, 'Value', 0), checkboxcell);
                slctAll.Value = 0;
                src.Enable = 'off';
                slctAll.Enable = 1;
                % UPDATE VALUES
                app.userPrefExportState.exporg = double(app.exporgcb.Value);
                app.userPrefExportState.expbw = double(app.expbwcb.Value);
                app.userPrefExportState.exphigh = double(app.exphighcb.Value);
                app.userPrefExportState.explbl = double(app.explblcb.Value);
                app.userPrefExportState.expbwbrdrclr = double(app.mtlbcb.Value);
                app.userPrefExportState.mtlb = double(app.expbwbrdrclrcb.Value);
            end
        end