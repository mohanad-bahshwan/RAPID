        function Checknotallselected(~,~,~,checkboxcell, slctAll, ~)
            %
            % Checks if any checkbox in a given set is not selected, and if so, updates the "select all" checkbox
            % to be unchecked and enabled.
            %
            % Inputs:
            %   checkboxcell - Cell array containing the checkboxes to be checked.
            %   slctAll      - The "select all" checkbox.
            if any(cellfun(@(x) isequal(x.Value, 0), checkboxcell))
                slctAll.Value = 0;
                slctAll.Enable = 'on';
            end
        end