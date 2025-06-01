        function CloseDetachedFigure(app, inputFig)
            %
            %Deletes the detached figure
            %INPUTS:
            %inputFig: The figure handle to be deleted
            disp('you attempted to close the figure!');
            if ~isempty(ishandle(inputFig)); app.detachedSegTuningFigData.Position = inputFig.Position;end
            delete(inputFig);
        end