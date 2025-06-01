        function CloseInteractiveFigure(app, hSource)
            % Closes the interactive figure
            % INPUT:
            %   hSource: handle source for the interactive figure
            %
            disp('you attempted to close the figure!');
            app.detachedSegPreviewFigPos = hSource.Position;
            ToggleSwitch(app, app.ShowimageButton, 'off');
            ToggleSwitch(app, app.ButObjectLabeling, 'off');
            app.ButObjectLabeling.Enable = 'off';
            Closefig(app, hSource);
        end