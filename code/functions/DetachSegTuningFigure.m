function [varargout] = DetachSegTuningFigure(app, detachedFigure, figureOpenedBoo)
            %
            % Manages the creation and detachment of the segmentation tuning figure.
            % If the figure is not already open, creates a new figure and displays the tuning image.
            % If the figure is already open, ensures it is not recreated.
            %
            % Inputs:
            %   detachedFigure - Handle of the previously opened detached figure (if any).
            %   figureOpenedBoo - Boolean indicating whether the figure is currently open (1) or not (0).
            %
            % Outputs:
            %   detachedFigure - The handle to the newly opened or existing detached figure.
            %
            switch figureOpenedBoo
                case 0
                    if isempty(detachedFigure) || ~ishandle(detachedFigure)
                        %Condition if a figure was previously opened
                        if ~isempty(app.detachedSegTuningFigData)
                            detachedFigure = figure('SizeChangedFcn', {@app.GetDetachedFigPos,1}, 'Position', app.detachedSegTuningFigData.Position);
                            set(detachedFigure, 'Tag', 'detachedSegTuningFig');
                            set(detachedFigure, 'DeleteFcn', @(src,event)tryCloseME(app, detachedFigure));
                            %Condition if no previous figure was ever opened
                        else
                            detachedFigure = figure('SizeChangedFcn', {@app.GetDetachedFigPos,0});
                            set(detachedFigure, 'DeleteFcn', @(src,event)tryCloseME(app, detachedFigure));
                            set(detachedFigure, 'Tag', 'detachedSegTuningFig');
                        end
                        AxesH = axes(detachedFigure);
                        drawnow;
                        InSet = get(AxesH, 'TightInset');
                        set(AxesH, 'Position', [InSet(1:2), 1-InSet(1)-InSet(3), 1-InSet(2)-InSet(4)]);
                        cla reset;

                        imshow(app.SegTuningFigure.ImageSource, 'Parent', AxesH, Border="loose", InitialMagnification=100);
                        set(detachedFigure, 'Position', app.detachedSegTuningFigData.Position);
                        varargout{1} = detachedFigure;
                    else
                        % do nothing (figure already exists)
                        varargout{1} = [];
                    end
                case 1
                    % do nothing (figure is currently opened)
                    varargout{1} = app.detachedSegTuningFig;
            end
        end