        function UpdateExportOptsCBs(app)
            %
            % This function sets the values of the export options checkboxes to match the user's previous preferences
            %
            app.exporgcb.Value = app.userPrefExportState.exporg;
            app.expbwcb.Value = app.userPrefExportState.expbw;
            app.exphighcb.Value = app.userPrefExportState.exphigh;
            app.explblcb.Value = app.userPrefExportState.explbl;
            app.expbwbrdrclrcb.Value = app.userPrefExportState.expbwbrdrclr;
            app.mtlbcb.Value = app.userPrefExportState.mtlb;

        end