        function Handleimportbuttonpermission(app,error)
            %
            %Enables or disables the 'next' button depending on the input
            %INPUTS:
            %error: a boolean (0 or 1)
            if not(error)
                app.NxtButStep1.Enable = 'on';
                app.NxtButStep1.Tooltip = '';
            else
                app.NxtButStep1.Enable = 'off';
                app.NxtButStep1.Tooltip = 'You must import images first';
            end
        end