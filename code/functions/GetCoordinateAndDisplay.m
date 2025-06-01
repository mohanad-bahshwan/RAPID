function GetCoordinateAndDisplay(app, imgIn)
            %
            % Gets the mouse position where use has clicked, then matches
            %that coordinate with the object underneath to isolate it and
            %display it accordingly.
            %INPUTS:
            %imgIn: input image

            mousePos = get(app.detachedSegPreviewAx,'CurrentPoint');
            mouseX   = mousePos(1,1);
            mouseY   = mousePos(1,2);
            disp(['X: ' num2str(mouseX)]);
            disp(['Y: ' num2str(mouseY)]);


            %Isolate the object from the rest of the group
            BWFull = imgIn;
            BWFullStruct = app.interactiveImgData;
            [BW2, ~] = bwselect(BWFull,mouseX,mouseY,8);

            %Selection is valid?
            if not(any(BW2(:) > 0))
                % Invalid -> DONT DISPLAY
            else
                % Valid -> Display v

                %UI--
                disp(['object number: ' num2str(app.selectedObjID)])
                BW2FullStruct = regionprops('struct', BW2, {'Centroid', 'BoundingBox'});
                bbox = BW2FullStruct.BoundingBox;
                bbox(3) = bbox(3)*1.1;
                bbox(4) = bbox(4)*1.1;
                bbox(1) = bbox(1)-(bbox(3)*0.05);
                bbox(2) = bbox(2)-(bbox(4)*0.05);
                if isgraphics(app.selectionBoundingBox)
                    delete(app.selectionBoundingBox)
                end
                app.selectionBoundingBox = rectangle(app.detachedSegPreviewAx, 'Position', BW2FullStruct.BoundingBox, 'edgecolor', 'g', 'lineWidth', 3);

                BW3 = 255 * repmat(uint8(BW2), 1, 1, 3);
                BW3 = imcrop(BW3, bbox);
                app.SegPreviewFigure.ImageSource = BW3;
                %--UI

                %Search the full BW image to determine the object's ID based on its coordinate
                app.selectedObjID = find(arrayfun(@(xx) isequal(xx.Centroid(:,1), BW2FullStruct.Centroid(:,1)), BWFullStruct), 1);

                app.objNumLabel.Text = [num2str(app.selectedObjID) ' (of ' num2str(size(BWFullStruct,1)) ' total objects)'];
                BW3Props = regionprops('struct', im2bw(BW3), {'Area','FilledArea','MajorAxisLength', ...
                    'MinorAxisLength', 'Orientation', 'Eccentricity', 'Centroid', 'ConvexArea', 'Circularity',...
                    'Solidity', 'Circularity', 'EquivDiameter', 'EulerNumber','Extent','Perimeter'});
                %Separate the X & Y from the 'Centroid' property
                BW3Props.Centroid_X = BWFullStruct(app.selectedObjID).Centroid(1);
                BW3Props.Centroid_Y = BWFullStruct(app.selectedObjID).Centroid(2);
                BW3Props = rmfield(BW3Props, 'Centroid');
                BW3Props = UnitConversionBWProps(app, BW3Props); % Perform unit conversion


                %UI-RELATED
                formatSpec = '%.2f';
                %% ACTUAL DATA

                %column 1
                app.Areaprev.Text = [num2str(BW3Props.Area) ' ' app.units];
                app.Filledareaprev.Text = [num2str(BW3Props.FilledArea) ' ' app.units];
                app.Majoraxislengthprev.Text = [num2str(BW3Props.MajorAxisLength,formatSpec) ' ' app.units];
                app.Minoraxislengthprev.Text = [num2str(BW3Props.MinorAxisLength,formatSpec) ' ' app.units];
                app.Orientationprev.Text = [num2str(BW3Props.Orientation) '°'];
                app.Eccentricityprev.Text = [num2str(BW3Props.Eccentricity,formatSpec)];
                app.CentroidXposprev.Text = [num2str(BW3Props.Centroid_X,formatSpec) ' ' app.units];
                app.CentroidYposprev.Text = [num2str(BW3Props.Centroid_Y,formatSpec) ' ' app.units];
                %column 2
                app.Convexareaprev.Text = [num2str(BW3Props.ConvexArea) ' ' app.units];
                app.Circularityprev.Text = [num2str(BW3Props.Circularity,formatSpec)];
                app.Solidityprev.Text = [num2str(BW3Props.Solidity,formatSpec)];
                app.Equivdiameterprev.Text = [num2str(BW3Props.EquivDiameter,formatSpec) ' ' app.units];
                app.Eulernumberprev.Text = [num2str(BW3Props.EulerNumber,formatSpec)];
                app.Extentprev.Text = [num2str(BW3Props.Extent,formatSpec) ' ' app.units '²' '/' app.units '²'];
                app.Perimeterprev.Text = [num2str(BW3Props.Perimeter,formatSpec) ' ' app.units];

                %% Tooltip
                %column 1
                app.Areaprev.Tooltip = [num2str(BW3Props.Area) ' ' app.units];
                app.Filledareaprev.Tooltip = [num2str(BW3Props.FilledArea) ' ' app.units];
                app.Majoraxislengthprev.Tooltip = [num2str(BW3Props.MajorAxisLength,formatSpec) ' ' app.units];
                app.Minoraxislengthprev.Tooltip = [num2str(BW3Props.MinorAxisLength,formatSpec) ' ' app.units];
                app.Orientationprev.Tooltip = [num2str(BW3Props.Orientation) '°'];
                app.Eccentricityprev.Tooltip = [num2str(BW3Props.Eccentricity,formatSpec)];
                app.CentroidXposprev.Tooltip = [num2str(BW3Props.Centroid_X,formatSpec) ' ' app.units];
                app.CentroidYposprev.Tooltip = [num2str(BW3Props.Centroid_Y,formatSpec) ' ' app.units];
                %column 2
                app.Convexareaprev.Tooltip = [num2str(BW3Props.ConvexArea) ' ' app.units];
                app.Circularityprev.Tooltip = [num2str(BW3Props.Circularity,formatSpec)];
                app.Solidityprev.Tooltip = [num2str(BW3Props.Solidity,formatSpec)];
                app.Equivdiameterprev.Tooltip = [num2str(BW3Props.EquivDiameter,formatSpec) ' ' app.units];
                app.Eulernumberprev.Tooltip = [num2str(BW3Props.EulerNumber,formatSpec)];
                app.Extentprev.Tooltip = [num2str(BW3Props.Extent,formatSpec) ' ' app.units '²' '/' app.units '²'];
                app.Perimeterprev.Tooltip = [num2str(BW3Props.Perimeter,formatSpec) ' ' app.units];
            end

        end