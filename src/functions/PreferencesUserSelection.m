function PreferencesUserSelection(app, activestates)
            %
            % Displays a preferences window for user selection.
            % Users can select or deselect various processing options that were previously saved in a preferences file.
            %
            % Inputs:
            %   app          - The app object containing user preferences and UI components.
            %   activestates - Structure containing the preferences available for the user (active/inactive).
            %
            originalActiveStates = activestates;
            activestates = structfun(@(x) double(x), activestates)';

            %% --------
            % Create the underlying components
            optsFig = uifigure;

            optsFig.Position(3) = 377;
            optsFig.Position(4) = 336;
            Tpanel = uipanel(optsFig,  'Units', 'Normalized', 'Position', [0 0 1 1], 'BorderType', 'none');
            optsFig.Resize = 'off';

            % Create GridLayout
            GridLayout = uigridlayout(Tpanel);
            GridLayout.ColumnWidth = {'1x'};
            GridLayout.RowHeight = {'0.25x', '0.1x', '0.1x', '0.85x', '0.2x'};
            GridLayout.Padding = [0 0 0 0];

            % Create UIAxes
            UIAxes = uiaxes(GridLayout);
            UIAxes.Toolbar.Visible = 'off';
            UIAxes.AmbientLightColor = 'none';
            UIAxes.XColor = [0.8 0.8 0.8];
            UIAxes.XTick = 0;
            UIAxes.XTickLabel = ' ';
            UIAxes.YTick = [];
            UIAxes.ZTick = [];
            UIAxes.Color = 'none';
            UIAxes.Layout.Row = 3;
            UIAxes.Layout.Column = 1;

            % Create GridLayout2
            GridLayout2 = uigridlayout(GridLayout);
            GridLayout2.ColumnWidth = {'0.1x', 'fit', 'fit', 'fit', '0.1x'};
            GridLayout2.RowHeight = {'1x', '1x', '1x', '1x', '1x', '1x'};
            GridLayout2.Padding = [10 10 10 0];
            GridLayout2.Layout.Row = 4;
            GridLayout2.Layout.Column = 1;

            % Create invtimgcb
            invtimgcb = uicheckbox(GridLayout2);
            invtimgcb.Text = 'Invert image';
            invtimgcb.Layout.Row = 1;
            invtimgcb.Layout.Column = 2;

            % Create morphcb
            morphcb = uicheckbox(GridLayout2);
            morphcb.Text = 'Morpholigical opts.';
            morphcb.Layout.Row = 2;
            morphcb.Layout.Column = 2;

            % Create cropimgcb
            cropimgcb = uicheckbox(GridLayout2);
            cropimgcb.Text = 'Crop image';
            cropimgcb.Layout.Row = 3;
            cropimgcb.Layout.Column = 2;

            % Create fltnimgcb
            fltnimgcb = uicheckbox(GridLayout2);
            fltnimgcb.Text = 'Flatten image';
            fltnimgcb.Layout.Row = 4;
            fltnimgcb.Layout.Column = 2;

            % Create detectedgcb
            detectedgcb = uicheckbox(GridLayout2);
            detectedgcb.Text = 'Detect edges';
            detectedgcb.Layout.Row = 5;
            detectedgcb.Layout.Column = 2;

            % Create scaleimgcb
            scaleimgcb = uicheckbox(GridLayout2);
            scaleimgcb.Text = 'Scale image';
            scaleimgcb.Layout.Row = 6;
            scaleimgcb.Layout.Column = 2;

            % Create exportoptscb
            expoptscb = uicheckbox(GridLayout2);
            expoptscb.Text = 'Export options';
            expoptscb.Layout.Row = 7;
            expoptscb.Layout.Column = 2;


            % Create invtimglbl
            invtimglbl = uilabel(GridLayout2);
            invtimglbl.HorizontalAlignment = 'center';
            invtimglbl.FontAngle = 'italic';
            invtimglbl.FontColor = [0.502 0.502 0.502];
            invtimglbl.Layout.Row = 1;
            invtimglbl.Layout.Column = 4;
            invtimglbl.Text = '';

            % Create morphlbl
            morphlbl = uilabel(GridLayout2);
            morphlbl.HorizontalAlignment = 'center';
            morphlbl.FontAngle = 'italic';
            morphlbl.FontColor = [0.502 0.502 0.502];
            morphlbl.Layout.Row = 2;
            morphlbl.Layout.Column = 4;
            morphlbl.Text = '';

            % Create cropimglbl
            cropimglbl = uilabel(GridLayout2);
            cropimglbl.HorizontalAlignment = 'center';
            cropimglbl.FontAngle = 'italic';
            cropimglbl.FontColor = [0.502 0.502 0.502];
            cropimglbl.Layout.Row = 3;
            cropimglbl.Layout.Column = 4;
            cropimglbl.Text = '';

            % Create fltnimglbl
            fltnimglbl = uilabel(GridLayout2);
            fltnimglbl.HorizontalAlignment = 'center';
            fltnimglbl.FontAngle = 'italic';
            fltnimglbl.FontColor = [0.502 0.502 0.502];
            fltnimglbl.Layout.Row = 4;
            fltnimglbl.Layout.Column = 4;
            fltnimglbl.Text = '';

            % Create detectedglbl
            detectedglbl = uilabel(GridLayout2);
            detectedglbl.HorizontalAlignment = 'center';
            detectedglbl.FontAngle = 'italic';
            detectedglbl.FontColor = [0.502 0.502 0.502];
            detectedglbl.Layout.Row = 5;
            detectedglbl.Layout.Column = 4;
            detectedglbl.Text = '';

            % Create scaleimglbl
            scaleimglbl = uilabel(GridLayout2);
            scaleimglbl.HorizontalAlignment = 'center';
            scaleimglbl.FontAngle = 'italic';
            scaleimglbl.FontColor = [0.502 0.502 0.502];
            scaleimglbl.Layout.Row = 6;
            scaleimglbl.Layout.Column = 4;
            scaleimglbl.Text = '';

            % Create exportoptslbl
            expoptslbl = uilabel(GridLayout2);
            expoptslbl.HorizontalAlignment = 'center';
            expoptslbl.FontAngle = 'italic';
            expoptslbl.FontColor = [0.502 0.502 0.502];
            expoptslbl.Layout.Row = 7;
            expoptslbl.Layout.Column = 4;
            expoptslbl.Text = '';

            % Create GridLayout3
            GridLayout3 = uigridlayout(GridLayout);
            GridLayout3.ColumnWidth = {'0.25x', '0.15x', 'fit', '0.15x', '0.25x'};
            GridLayout3.RowHeight = {'1x'};
            GridLayout3.RowSpacing = 0;
            GridLayout3.Padding = [0 10 0 5];
            GridLayout3.Layout.Row = 5;
            GridLayout3.Layout.Column = 1;

            % Create AcceptButton
            AcceptButton = uibutton(GridLayout3, 'push');
            AcceptButton.Layout.Row = 1;
            AcceptButton.Layout.Column = 2;
            AcceptButton.Text = 'Accept';

            % Create CancelButton
            CancelButton = uibutton(GridLayout3, 'push');
            CancelButton.Layout.Row = 1;
            CancelButton.Layout.Column = 4;
            CancelButton.Text = 'Cancel';

            % Create GridLayout4
            GridLayout4 = uigridlayout(GridLayout);
            GridLayout4.ColumnWidth = {'0.05x', 'fit', 'fit', 'fit', '0.05x'};
            GridLayout4.RowHeight = {'1x'};
            GridLayout4.Padding = [10 0 10 0];
            GridLayout4.Layout.Row = 2;
            GridLayout4.Layout.Column = 1;

            % Create selectallcb
            selectallcb = uicheckbox(GridLayout4);
            selectallcb.Text = 'Select all';
            selectallcb.Layout.Row = 1;
            selectallcb.Layout.Column = 2;

            % Create deselectallcb
            deselectallcb = uicheckbox(GridLayout4);
            deselectallcb.Text = 'Deselect all';
            deselectallcb.Layout.Row = 1;
            deselectallcb.Layout.Column = 4;

            % Create message
            message = uilabel(GridLayout);
            message.HorizontalAlignment = 'center';
            message.WordWrap = 'on';
            message.FontSize = 14;
            message.FontWeight = 'bold';
            message.Layout.Row = 1;
            message.Layout.Column = 1;
            message.Text = 'Select the settings to apply to your imported images.';

            CBs = {invtimgcb, morphcb, cropimgcb, fltnimgcb, detectedgcb, scaleimgcb, expoptscb};
            LBLs = {invtimglbl, morphlbl, cropimglbl, fltnimglbl, detectedglbl, scaleimglbl, expoptslbl};



            %%Defining functions
            invtimgcb.ValueChangedFcn = {@cbValueChanged,invtimglbl, CBs, selectallcb, deselectallcb};
            morphcb.ValueChangedFcn = {@cbValueChanged, morphlbl, CBs, selectallcb, deselectallcb};
            cropimgcb.ValueChangedFcn = {@cbValueChanged, cropimglbl, CBs, selectallcb, deselectallcb};
            fltnimgcb.ValueChangedFcn = {@cbValueChanged, fltnimglbl, CBs, selectallcb, deselectallcb};
            detectedgcb.ValueChangedFcn = {@cbValueChanged, detectedglbl, CBs, selectallcb, deselectallcb};
            scaleimgcb.ValueChangedFcn = {@cbValueChanged, scaleimglbl, CBs, selectallcb, deselectallcb};
            expoptscb.ValueChangedFcn = {@cbValueChanged, expoptslbl, CBs, selectallcb, deselectallcb};

            selectallcb.ValueChangedFcn = {@selectAllCBs, CBs, deselectallcb, activestates,LBLs};
            deselectallcb.ValueChangedFcn = {@deselectAllCBs, CBs, selectallcb, activestates, LBLs};

            CancelButton.ButtonPushedFcn = {@CancelClicked, optsFig, app};
            AcceptButton.ButtonPushedFcn = {@AcceptClicked, optsFig, app};

            checknotavailable(CBs, LBLs, activestates);

            waitfor(optsFig);

            function cbValueChanged(src, event, inputlbl, checkboxcell, slctAll, dslctAll)

                switch src.Value
                    case 0
                        %deactivated
                        inputlbl.Text = '';
                    case 1
                        %activated
                        inputlbl.Text = 'O.K.';
                        inputlbl.FontColor = [6 181 82]/255;
                end
                checknotallselected(src,event,checkboxcell, slctAll, dslctAll);
                checknotalldeselected(src,event,checkboxcell, slctAll, dslctAll);
            end

            function selectAllCBs(src, event, checkboxcell, dslctAll, activeStateArr, lablesArr)
                if ~(event.PreviousValue == 1)
                    idxs = activeStateArr == 1;
                    cellfun(@(x) set(x, 'Value', 1), checkboxcell(idxs));
                    cellfun(@(x) set(x, 'Text', 'O.K.'), lablesArr(idxs));
                    cellfun(@(x) set(x, 'FontColor', [6 181 82]/255), lablesArr(idxs));
                    dslctAll.Value = 0;
                    src.Enable = 'off';
                    dslctAll.Enable = 1;
                end
            end

            function deselectAllCBs(src, event, checkboxcell, slctAll, activeStateArr, lablesArr)
                if ~(event.PreviousValue == 1)
                    idxs = activeStateArr == 1;
                    cellfun(@(x) set(x, 'Value', 0), checkboxcell(idxs));
                    cellfun(@(x) set(x, 'Text', ''), lablesArr(idxs));
                    slctAll.Value = 0;
                    src.Enable = 'off';
                    slctAll.Enable = 1;
                end
            end

            function checknotallselected(src,event,checkboxcell, slctAll, dslctAll)

                if any(cellfun(@(x) isequal(x.Value, 0), checkboxcell))
                    slctAll.Value = 0;
                    slctAll.Enable = 'on';
                end

            end

            function checknotalldeselected(src,event,checkboxcell, slctAll, dslctAll)

                if any(cellfun(@(x) isequal(x.Value, 1), checkboxcell))
                    dslctAll.Value = 0;
                    dslctAll.Enable = 'on';
                end
            end

            function checknotavailable(checkboxcell, lablesArr, activeStateArr)
                idxs = find(activeStateArr == 0);
                cellfun(@(x) set(x, 'Enable', 'off'), checkboxcell(idxs));
                cellfun(@(x) set(x, 'Text', '(Not in file)'), lablesArr(idxs));
                cellfun(@(x) set(x, 'FontColor', [215 39 39]/255), lablesArr(idxs));

            end



            function CancelClicked(src, event, figin, app)
                delete(figin);
                disp('figure closed. Cancelled.');

            end

            function AcceptClicked(src, event, figin, app)

                app.userPrefActiveState.invertedImage = invtimgcb.Value;
                app.userPrefActiveState.imgProcessVals = morphcb.Value;
                app.userPrefActiveState.ROI = cropimgcb.Value;
                app.userPrefActiveState.imageFlattening = fltnimgcb.Value;
                app.userPrefActiveState.enhancedEdge = detectedgcb.Value;
                app.userPrefActiveState.scaleFactor = scaleimgcb.Value;
                app.userPrefActiveState.exportOpts = expoptscb.Value;

                delete(figin);

                disp('figure closed. Accepted.');

            end
        end