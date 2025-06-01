        function existsState = CheckDetachedFigureExists(~,tag)
            %
            % Checks if detached figure already exists or not
            state = ~isempty(findobj('Tag', tag));
            switch state
                case false % Exists
                    existsState = false;
                case true  % Destroyed
                    existsState = true;
            end
        end