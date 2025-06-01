        function [selectedDir, imgsDir] = SelectOutputDir(~)
            %
            % Prompts the user to select or create an output directory for saving results.
            % Creates subfolders for 'Images' and 'Preferences' within the selected directory.
            % Outputs:
            %   selectedDir - Full path to the newly created work package directory.
            %   imgsDir     - Full path to the 'Images' subdirectory.
            FolderName = cell2mat(inputdlg('Give your data a name:','Output folder name', [1 50],{'results'}));
            % Check error
            if isequal(FolderName,[])
                msgbox('unable to save!')
                selectedDir = 'error';
                imgsDir = 'error';
                return
            else
                % Prepare directories
                selectedDir = uigetdir('','Choose where to save your output data');
                mkdir(selectedDir, FolderName)
                selectedDir = fullfile(selectedDir,FolderName);
                mkdir(selectedDir, 'Images'); % Create images directory
                imgsDir = fullfile(selectedDir,'Images');
                mkdir(selectedDir, 'Preferences'); % Create Preferences directory
            end

        end