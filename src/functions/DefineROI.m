function  DefineROI(app)
            %
            % Displays an interactive image cropping UI for selecting a region of interest (ROI)
            % and applying it to images in the datastore.

            % - Loads the first image from the cleaned datastore for preview.
            % - Creates a UI figure with a grid layout for the image display and control buttons.
            % - Displays the image with an adjustable rectangle (ROI) for cropping.
            % - Provides a spinner to navigate between images and buttons to confirm or cancel the crop.
            % - On 'Crop', saves the ROI and closes the figure.
            % - On 'Cancel', discards changes and closes the figure.

            % Inputs:
            %   app.cleanedDatstore               - Datastore containing images to crop.
            %   app.inputDatastoreProperties.numFiles - Total number of images in the datastore.
            %   app.rawImgDatastore               - Original image datastore.
            %   app.cropROI                       - Variable to store the selected ROI.
            %
            previewDS = app.cleanedDatstore;
            ROIUIFig = uifigure();
            ROIUIFig.AutoResizeChildren = 'off';
            ROIUIFig.Tag = 'cropFigure';
            %Create GridLayout
            GridLayout = uigridlayout(ROIUIFig);
            GridLayout.ColumnWidth = {32,'1x',32};
            GridLayout.RowHeight = {ROIUIFig.Position(4)*0.85,ROIUIFig.Position(4)*.10,'1x'};
            GridLayout.ColumnSpacing = 0;
            GridLayout.RowSpacing = 0;
            GridLayout.Padding = [0 0 0 10];
            GridLayout.Scrollable = 'off';
            GridLayout.Tag = 'GridLayout';

            % Create upperPanel
            upperPanel = uipanel(GridLayout);
            upperPanel.Layout.Row = 1;
            upperPanel.Layout.Column = 2;
            upperPanel.Scrollable = 'off';
            upperPanel.AutoResizeChildren = 'off';
            % Create Tree
            imgAxes = uiaxes(upperPanel);
            %imgAxes.View = [0 -90];
            imgAxes.View = [0 90];
            imgAxes.YDir = 'reverse';
            imgAxes.Units = 'normalized';
            imgAxes.XAxis.TickLabels = '';
            imgAxes.YAxis.TickLabels = '';
            imgAxes.XAxis.Visible = 'off';
            imgAxes.YAxis.Visible = 'off';
            imgAxes.Color = 'none';
            hold (imgAxes,'on')
            myImg = read(previewDS);
            shownImg=image(imgAxes, 'CData', myImg);
            imgAxes.Position = [0 0 1 1];
            ROIUIFig.SizeChangedFcn = @Pnlszchanged;
            ROIUIFig.CloseRequestFcn = @Windowclosed;
            imgSize = upperPanel.Position;
            cropBox = drawrectangle(imgAxes, 'Position',[imgSize(3)*0.2,imgSize(4)*0.2,imgSize(3)*0.8,imgSize(4)*0.8],'Label','Region of interest','Color','g');
            cropBox.Deletable = 0;
            cropBox.LabelAlpha = .35;
            addlistener(cropBox,'MovingROI',@Allevents)
            cropROITemp = cropBox.Position;


            % Create lowerPanel
            lowerPanel = uipanel(GridLayout);
            lowerPanel.Layout.Row = 2;
            lowerPanel.Layout.Column = 2;
            lowerPanel.Scrollable = 'off';
            lowerPanel.AutoResizeChildren = 'off';


            %Create GridLayout
            %GridLayout2 = [];
            GridLayout2 = uigridlayout(lowerPanel);
            GridLayout2.ColumnWidth = {22,'1x',10,'1x',10,'1x',22};
            GridLayout2.RowHeight = {'1x'};
            GridLayout2.ColumnSpacing = 0;
            GridLayout2.RowSpacing = 0;
            GridLayout2.Padding = [10 10 10 10];
            GridLayout2.Scrollable = 'off';

            cropSpinner = uispinner(GridLayout2);
            cropSpinner.Layout.Column = 2;
            cropSpinner.Limits = [1, app.inputDatastoreProperties.numFiles];
            cropSpinner.Value= 1;
            cropSpinner.ValueChangingFcn = @ImgSpinnerChanged;
            cancelBut = uibutton(GridLayout2, 'Text', 'Cancel');
            cancelBut.Layout.Column = 4;
            cancelBut.ButtonPushedFcn = @CancelButtonPushed;
            confirmBut = uibutton(GridLayout2, 'Text', 'Crop');
            confirmBut.Layout.Column = 6;
            confirmBut.ButtonPushedFcn = @CropButtonPushed;

            waitfor(ROIUIFig) % stop executing furthercode until this figure is closed

            function Pnlszchanged(src, ~)
                %   Updates layout on figure resize.
                disp(src.Position);
                handle=findobj(src.Children, 'Tag', 'GridLayout');
                handle.RowHeight = {src.Position(4)*0.85,ROIUIFig.Position(4)*.10,'1x'};
                %disp(event);
            end

            function Windowclosed(~, ~)
                %Handles figure closure, resets datastore, and clears ROI.
                cropROITemp = [];
                CloseHandle(app, 'figure', 'cropFigure');
                reset(app.cleanedDatstore);
            end

            function Allevents(~,evt)
                %Updates ROI position during movement.
                evname = evt.EventName;
                switch(evname)
                    case{'MovingROI'}
                        %disp(['ROI moving current position: ' mat2str(evt.CurrentPosition)]);
                    case{'ROIMoved'}
                        %disp(['ROI moved current position: ' mat2str(evt.CurrentPosition)]);
                end
                cropROITemp = evt.CurrentPosition;
                assignin('base','tempROI',cropROITemp);
            end

            function CancelButtonPushed (~, ~)
                %Cancels cropping, resets datastore, and closes the figure.
                disp('cancel pressed');
                cropROITemp = [];
                CloseHandle(app, 'figure', 'cropFigure');
                reset(app.cleanedDatstore);
                assignin('base','tempROI',cropROITemp);
                assignin('base','newROI',app.cropROI);
            end

            function CropButtonPushed (~, ~)
                %Saves the selected ROI and closes the figure.
                disp('crop pressed');
                app.cropROI = cropROITemp;
                reset(app.cleanedDatstore);
                CloseHandle(app, 'figure', 'cropFigure');
                disp(['newROI: ' mat2str(app.cropROI)]);
                assignin('base','newROI',app.cropROI);
            end

            function ImgSpinnerChanged (~, evt)
                %Updates the displayed image based on spinner selection.
                cropSpinner.Enable = 'off';
                cropCounter = evt.Value;
                disp(['new stored value: ' num2str(cropCounter)]);
                CheckCounterExtrema(app, cropCounter);
                loadedImg = readimage(app.rawImgDatastore,cropCounter); % read specific image from datastore
                loadedImg = imcrop(loadedImg,[0 0 app.inputDatastoreProperties.minCol app.inputDatastoreProperties.minRow]);
                shownImg.CData = loadedImg; % read specific image from datastore
                cropSpinner.Enable = 'on';
            end






        end