function PreprocessingMethod(app, choice)
            %
            % Selects the pre-processing method based on user choice.
            %
            % Inputs:
            %   choice - String specifying the pre-processing method ('manual' or 'file').
            %
            if strcmp(choice, 'manual')
                % Pre-processing will be based on manual selection
                % No need to do anything here

            elseif strcmp(choice, 'file')
                % Pre-processing will be based on file import
                %Use function to enable import options via 'input file'
                [~] = PreProcessbyFile(app, 'process');


            end
        end