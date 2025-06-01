        function CloseHandle(~, type, tagName)
            %
            % Closes and deletes a UI component if it exists.
            % Inputs:
            %   type    - String specifying the component type (e.g., 'figure', 'uipanel').
            %   tagName - String specifying the tag assigned to the component.

            handle = findall(0,'type',type,'tag',tagName);
            if ~isempty(handle)
                delete(handle);
                return
            end

        end