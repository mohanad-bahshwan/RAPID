function HandleExportCheckBoxes(app,event, checkbox, exportState)
            %
            % Updates the export state based on checkbox interaction.
            %
            % Inputs:
            %   event       - Event data from the checkbox interaction.
            %   checkbox    - Checkbox UI component that was interacted with.
            %   exportState - String specifying the export option to update.
            %
            app.userPrefExportState.(exportState) = double(checkbox.Value);
            CBs = {app.exporgcb, app.expbwcb, app.exphighcb, app.explblcb, app.expbwbrdrclrcb, app.mtlbcb};
            Checknotallselected(app, event.Source,event,CBs, app.selectallcb, app.deselectallcb);
            Checknotalldeselected(app, event.Source,event,CBs, app.selectallcb, app.deselectallcb);
        end