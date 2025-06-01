        function tooSoonBoo = CheckTimeDiff(app, mseconds)
            %
            % Checks if the changed value of the slider was triggerred too
            % soon (which leads to high CPU usage). If the value is changed
            % too soon, the app skips image processing.
            % INPUT:
            %   mseconds: integer value (in milliseconds)
            t = { app.prevTimeStamp
                char(datetime('Now', 'Format', 'HH:mm:ss.SSS'))};
            if milliseconds(diff(duration(t,'inputformat','hh:mm:ss.SSS'))) < mseconds
                % If timeDiff is less than 'mseconds' milliseconds, SKIP
                tooSoonBoo = true;
            else
                tooSoonBoo = false;
            end
        end