function [fig, ax, interactiveImg] = CreateInteractiveFig(app, img)
            %
            % creates an interactive figure to display an image and handles
            % clicks on objects. The clicked object will be islolated &
            % displayed in the main app. The user is then able to extract
            % useful information about this particular object

            d = uiprogressdlg(app.v10UIFigure,'Title','Loading binarized image','Indeterminate','on');

            %Checks if figure had a previously stored position
            if not(isempty(app.detachedSegPreviewFigPos))
                %Figure was opened previously, load it in the same position
                fig = figure('WindowButtonDownFcn', @(src,event)Clickscanner(app, app.detachedSegPreviewFig), 'Position', app.detachedSegPreviewFigPos);
            else
                %Figure was not created previously, load it in arbitrary
                %position
                fig = figure('WindowButtonDownFcn', @(src,event)Clickscanner(app, app.detachedSegPreviewFig));
            end
            %UI-related
            fig.Visible = 'off';
            set(fig, 'DeleteFcn', @(src,event)tryCloseIF(app, app.detachedSegPreviewFig));
            ax = axes(fig);
            hold off
            interactiveImg = imshow(img, 'Parent',ax);
            app.interactiveImgData = SplitBorderStats(app, img);
            set(fig, 'Pointer', 'crosshair');
            set(fig, 'Tag', 'detachedSegPreviewFig');
            ax.Title.String = 'Click on any object to examine it';
            filenm = GetDatastoreFilename(app, app.rawImgDatastore, app.segPreviewSpinnerCounter);
            ax.XLabel.String = filenm.fullPathText;
            if not(isempty(app.detachedSegPreviewFigPos)); fig.Position = app.detachedSegPreviewFigPos;end
            fig.Visible = 'on';
            close(d);

            function tryCloseIF(app, fig)
                try
                    CloseInteractiveFigure(app, fig);
                catch ME
                    if strcmp(ME.identifier, 'MATLAB:class:InvalidHandle')
                        disp('Figure object was invalid or already deleted.');
                    else
                        disp('we are ere');
                        rethrow(ME);
                    end
                end
            end

        end