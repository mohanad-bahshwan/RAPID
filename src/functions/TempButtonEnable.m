        function TempButtonEnable(~, button, state)
            %
            % Enables or disables the given button based on the specified state.
            %
            % Inputs:
            %   button - UI component representing the button to be enabled or disabled.
            %   state  - String indicating the desired state ('on' or 'off').
            %

            button.Enable = state;
        end