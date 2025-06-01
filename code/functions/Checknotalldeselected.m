        function Checknotalldeselected(~,~,~,checkboxcell, ~, dslctAll)
            %
            % Checks if any checkbox in a given set is selected, and if so, updates the "deselect all" checkbox
            % to be unchecked and enabled.
            %
            % Inputs:
            %   checkboxcell - Cell array containing the checkboxes to be checked.
            %   dslctAll     - The "deselect all" checkbox.

            if any(cellfun(@(x) isequal(x.Value, 1), checkboxcell))
                dslctAll.Value = 0;
                dslctAll.Enable = 'on';
            end
        end