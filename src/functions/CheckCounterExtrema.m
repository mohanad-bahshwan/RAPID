        function counter = CheckCounterExtrema(app, counter)
            %
            % Adjusts the counter value to ensure it remains within valid bounds.
            %
            % INPUTS:
            %   app      - Reference to the app instance, used to access properties.
            %   counter  - Current counter value to be checked and adjusted.
            %
            % OUTPUTS:
            %   counter  - Adjusted counter value, constrained to the range [1, numFiles],
            %              where numFiles is the total number of files in the input datastore.
            if (counter < 1)
                counter = 1;
            elseif (counter > app.inputDatastoreProperties.numFiles)
                counter = app.inputDatastoreProperties.numFiles;
            end

        end