      function GetDetachedFigPos(app, src, ~, toggler)
            %
            %Assigns the position array of the figure to the global
            %property to memorize the figure's location. This will only do
            %so if the 'Toggler' value is 1.
            %INPUTS:
            %Toggler '0' if no previous position exists
            %Toggler '1' if previous position exists
            %src: source figure hangle
            if toggler == 0
                app.detachedSegTuningFigData.Position = src.Position;
            else
                app.detachedSegTuningFigData.Position = src.Position;

            end

            %display(['Updated pos to: ' num2str(src.Position)]);
        end