        function [fileName,pathName, status] = getFilePathGeneral(~, TargetTextField, FileExtensionConfig)
            %
            % Prompts the user to select a file and updates the target text field with the selected file's path.
            % INPUTS:
            %   ~                   - (unused) placeholder for app
            %   TargetTextField      - UI component (e.g., text field) to display the file path.
            %   FileExtensionConfig  - File extension filter (e.g., '*.txt') for file selection.
            %
            % OUTPUTS:
            %   fileName             - Name of the selected file.
            %   pathName             - Path to the selected file.
            %   status               - Status indicator (1 if a file is selected, 0 if canceled).
            [fileName,pathName,status] = uigetfile(FileExtensionConfig,'Select a file',...
                'MultiSelect', 'off');
            if isequal(status,0) && isequal(fileName,0)
                % Do nothing
            elseif isequal(status,1)
                TargetTextField.Value = [pathName fileName];
            end
        end