        function ExplodeImgSegmentPreview(app, previewBoo)
            %
            % This function either closes or opens the segmented image preview based on the preview toggle state.
            %
            % Inputs:
            %   previewBoo - Toggle control indicating whether to show (1) or hide (0) the preview.
            %
            switch previewBoo.Value
                case 0
                    h = findobj(app.detachedSegPreviewFig, 'Tag', 'detachedSegPreviewFig');
                    CloseInteractiveFigure(app, h);
                case 1
                    [~, locallyProcessedImg] = ProcessSingleImg(app,app.morphStructElement, app.segPreviewSpinnerCounter);
                    [app.detachedSegPreviewFig, app.detachedSegPreviewAx, app.interactiveImg] = CreateInteractiveFig(app, locallyProcessedImg);

            end
        end