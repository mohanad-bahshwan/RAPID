        function UpdatedetachedSegTuningFig(app)
            %
            % Check if the detached preview figure of segmentation tuning step exists
            % If it doesn't exist or is not a valid handle, skip drawing it
            if isempty(app.detachedSegTuningFig) || ~ishandle(app.detachedSegTuningFig)
                % Figure doesnt exist, so skip drawing it
            else
                % Figure exists, redraw
                hold on
                imshow(app.SegTuningFigure.ImageSource);

            end


        end