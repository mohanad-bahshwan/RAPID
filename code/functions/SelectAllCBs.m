        function SelectAllCBs(app,src, event, checkboxcell, dslctAll)
            %
            % Selects all checkboxes in a given set and updates related UI elements and preferences.
            %
            % Inputs:
            %   src        - The source checkbox triggering the selection.
            %   event      - The event data associated with the checkbox change.
            %   checkboxcell - Cell array containing the checkboxes to be selected.
            %   dslctAll   - The "deselect all" checkbox.
            if ~(event.PreviousValue == 1)
                cellfun(@(x) set(x, 'Value', 1), checkboxcell);
                dslctAll.Value = 0;
                src.Enable = 'off';
                dslctAll.Enable = 1;

                % UPDATE VALUES
                app.userPrefExportState.exporg = double(app.exporgcb.Value);
                app.userPrefExportState.expbw = double(app.expbwcb.Value);
                app.userPrefExportState.exphigh = double(app.exphighcb.Value);
                app.userPrefExportState.explbl = double(app.explblcb.Value);
                app.userPrefExportState.expbwbrdrclr = double(app.mtlbcb.Value);
                app.userPrefExportState.mtlb = double(app.expbwbrdrclrcb.Value);
            end
        end