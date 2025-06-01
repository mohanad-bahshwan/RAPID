function ChangeUIState(~, state, varargin)
            %
            % ChangeUIState updates the state of specified UI components in the app
            %
            % Inputs:
            % app -  The app instance (App Designer object)
            % state -  The desired state ('enable', 'disable', 'show', 'hide')
            % varargin -  List of components whose state will be changed

            % Determine the property and value based on the state
            switch lower(state)
                case 'enable'
                    property = 'Enable';
                    value = 'on';
                case 'disable'
                    property = 'Enable';
                    value = 'off';
                case 'show'
                    property = 'Visible';
                    value = 'on';
                case 'hide'
                    property = 'Visible';
                    value = 'off';
                otherwise
                    error('Invalid state. Use ''enable'', ''disable'', ''show'', or ''hide''.');
            end

            % Loop through the components and apply the state
            for i = 1:numel(varargin)
                component = varargin{i};
                if isprop(component, property) % Ensure the component has the property
                    component.(property) = value;
                else
                    warning('Component %d does not have property ''%s''. Skipped.', i, property);
                end
            end
        end