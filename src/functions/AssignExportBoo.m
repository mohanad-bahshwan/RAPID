        function exportBoo = AssignExportBoo(app)
            % This function checks the values of multiple checkboxes in the UI and assigns a boolean indicating whether
            % default or custom export options should be applied based on the user's selections.
            %
            % Inputs:
            %   None
            %
            % Outputs:
            %   exportBoo - Boolean indicating whether custom export options (1) or default options (0) should be used.
            %
            if ((app.exporgcb.Value == 1) && (app.expbwcb.Value == 1) && (app.exphighcb.Value == 1)...
                    && (app.explblcb.Value == 0) && (app.expbwbrdrclrcb.Value == 0) && (app.mtlbcb.Value == 0))
                exportBoo = 0; % (Default export options, no special requirement)
            else
                exportBoo = 1; % (Custom export options, special requirements)
            end


        end