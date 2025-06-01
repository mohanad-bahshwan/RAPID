function UpdateImportTabUI(app,fileName, path, error)
            %
            % Updates the Import tab UI based on the provided file information.
            % If no error occurred, updates the list box with file names and the path label.
            %
            % Inputs:
            %   fileName - Name(s) of the imported file(s).
            %   path - Directory path where the file(s) are located.
            %   error - Boolean indicating whether an error occurred during the import.
            %
            if not(error)
                if ~ iscell(fileName)
                    app.ListBox_2.Items = {fileName};
                    PreviewImportedImg(app, app.fileNames);
                else
                    app.ListBox_2.Items = fileName;


                end
                app.s1PthLbl.Text = path;
                app.s1PthLbl.Tooltip = path;


            end

        end