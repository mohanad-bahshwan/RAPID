        function lbledImgs = CreatelbledImgs(app,bwimg,data)
            %
            % Creates labeled images by annotating objects (identified in 'data') on a binary image.
            % boundaries are drawn around object centroids with corresponding object IDs displayed.
            % Inputs:
            %   bwimg - Binary image to be annotated.
            %   data  - Struct containing object properties such as Centroid, MajorAxisLength, and ObjectID.
            % Outputs:
            %   lbledImgs - Image with annotated boundaries and object IDs.
            coloredbw = 255 * repmat(uint8(bwimg), 1, 1, 3);
            xypos=[data.Centroid_x_pixels; data.Centroid_y_pixels]';
            radii = ((arrayfun(@(x) x.MajorAxisLength, data)')/2);
            xyposradii = [xypos radii/app.unitConvFactor];
            strcell = arrayfun(@(x) num2str(x.ObjectID'), data, 'UniformOutput', false);
            lbledImgs=insertObjectAnnotation(coloredbw, "circle", xyposradii, strcell, 'LineWidth', 1, 'Color', 'magenta', 'FontSize', 16, 'TextBoxOpacity', 0.35);

        end