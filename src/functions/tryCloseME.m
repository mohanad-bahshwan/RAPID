function tryCloseME(app, fig)
            %
            % Attempts to close a detached figure and handles any errors that occur during the process.
            % If the figure handle is invalid or deleted, a message is displayed. Otherwise, the error is rethrown.
            %
            % Inputs:
            %   fig - Handle to the figure to be closed.
            %
            try
                CloseDetachedFigure(app, fig);
            catch ME
                if strcmp(ME.identifier, 'MATLAB:class:InvalidHandle')
                    disp('Figure object was invalid or already deleted.');
                else
                    rethrow(ME);
                end
            end
        end