        function ReinitializeImport(app)
            %
            % This function clears the relevant data structures, resets the
            % file list, and disables certain UI elements related to the
            % import step
            app.cleanedDatstore = [];
            app.inputDatastoreProperties = [];
            app.fileNames = [];
            app.ListBox_2.Items = {};
            app.s1PthLbl.Text = '';
            app.s1PthLbl.Tooltip = '';
            app.rawImgDatastore = [];
            app.ButBrowseMain.Enable = 'on';
            app.ButDeleteFilesStep1.Enable = 'off';
            app.NxtButStep1.Enable = 'off';
            app.NxtButStep1.Tooltip = 'You must import images first';
            app.ListBox_2.Items = {'No files found'};
            app.UIimportAxes.Children.CData =[];
            app.UIimportAxes.PlotBoxAspectRatio = [1.4272151898734178 1 1];
            app.UIimportAxes.Visible = 'on';
        end