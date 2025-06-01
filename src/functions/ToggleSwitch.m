        function ToggleSwitch(~, button, state)
            %
            % Toggles the switch button's state and appearance based on the input state.
            %
            % Inputs:
            %   button - UI component representing the switch button.
            %   state  - String indicating the desired state ('on' or 'off').
            %
            switch state
                case 'off'
                    button.Value = 0;
                    button.BackgroundColor = [0.96,0.96,0.96];
                case 'on'
                    button.Value = 1;
                    button.BackgroundColor = [0.00,1.00,0.15];
            end

        end