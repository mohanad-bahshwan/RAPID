 function Tout = Cleantable(app, Tin)
            %
            % Cleans the outputTable for for the sake of user comprehension
            % of the output table. Also performs re-arrangements of some vars
            %
            %INPUT:
            %Tin: The input table to be cleaned
            %OUTPUT:
            %Tout: The cleaned output table

            Unit = app.units;
            Tin = removevars(Tin,{'ConvexHull',...
                'ConvexImage', 'Image', 'FilledImage', 'Extrema',...
                'PixelIdxList', 'PixelList'});
            Tin.BoundingBox_x = Tin.BoundingBox(:,1);
            Tin.BoundingBox_y = Tin.BoundingBox(:,2);
            Tin.BoundingBox_w = Tin.BoundingBox(:,3);
            Tin.BoundingBox_h = Tin.BoundingBox(:,4);
            Tin.Centroid_x_pixels = Tin.Centroid(:,1);
            Tin.Centroid_y_pixels = Tin.Centroid(:,2);
            Tin = removevars(Tin,{'BoundingBox',...
                'Centroid'});
            Tin.Unit = repmat(Unit,size(Tin,1),1);
            Tin = movevars(Tin,'Unit','Before','Area');
            Tin = movevars(Tin,'FileName','Before','Area');
            Tin = movevars(Tin,'ImageID','Before','Area');
            Tin = movevars(Tin,'ObjectID','Before','Area');
            Tin = movevars(Tin,'BorderObject','Before','Area');
            Tin = movevars(Tin,'FilledArea','After','Area');
            Tin = movevars(Tin,'Centroid_x','After','Perimeter');
            Tin = movevars(Tin,'Centroid_y','After','Centroid_x');
            Tin = movevars(Tin,'Centroid_x_pixels','After','Centroid_y');
            Tin = movevars(Tin,'Centroid_y_pixels','After','Centroid_x_pixels');

            if any(strcmp(Tin.Unit,"µm"))
                % fix micrometer formatting for output purposes
                Tin.Unit = repmat('um',size(Tin.Unit,1),1);
            end

            if any(strcmp(Tin.Unit,"Å"))
                % fix angstrom formatting for output purposes
                Tin.Unit = repmat('A',size(Tin.Unit,1),1);
            end

            Tout = Tin;
        end