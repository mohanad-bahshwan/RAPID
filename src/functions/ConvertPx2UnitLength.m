        function structContainer = ConvertPx2UnitLength(~, structContainer, convFactor)
            %
            % Converts pixel-based measurements in a structure array to specified unit lengths.
            % Inputs:
            %   structContainer - Structure array containing image region properties.
            %   convFactor      - Conversion factor from pixels to the desired unit.
            % Outputs:
            %   structContainer - Updated structure array with converted measurements.


            %V Convert Area
            structContainer = cell2mat(arrayfun(@(x) setfield(x, 'Area', x.Area * (convFactor^2)),structContainer, 'UniformOutput', false));
            %V Convert Perimeter
            structContainer = cell2mat(arrayfun(@(x) setfield(x, 'Perimeter', x.Perimeter * convFactor),structContainer, 'UniformOutput', false));
            %V Convert MajorAxisLength
            structContainer = cell2mat(arrayfun(@(x) setfield(x, 'MajorAxisLength', x.MajorAxisLength * convFactor),structContainer, 'UniformOutput', false));
            %V Convert MinorAxisLength
            structContainer = cell2mat(arrayfun(@(x) setfield(x, 'MinorAxisLength', x.MinorAxisLength * convFactor),structContainer, 'UniformOutput', false));
            %V Convert FilledArea
            structContainer = cell2mat(arrayfun(@(x) setfield(x, 'FilledArea', x.FilledArea * (convFactor^2)),structContainer, 'UniformOutput', false));
            %V Convert EquivDiameter
            structContainer = cell2mat(arrayfun(@(x) setfield(x, 'EquivDiameter', x.EquivDiameter * convFactor),structContainer, 'UniformOutput', false));
            %V Convert Centroid_X
            structContainer = cell2mat(arrayfun(@(x) setfield(x, 'Centroid_x_pixels', x.Centroid(1)),structContainer, 'UniformOutput', false));
            %V Convert Centroid_Y
            structContainer = cell2mat(arrayfun(@(x) setfield(x, 'Centroid_y_pixels', x.Centroid(2)),structContainer, 'UniformOutput', false));
            %V Convert Centroid_X
            structContainer = cell2mat(arrayfun(@(x) setfield(x, 'Centroid_x', x.Centroid(1) * convFactor),structContainer, 'UniformOutput', false));
            %V Convert Centroid_Y
            structContainer = cell2mat(arrayfun(@(x) setfield(x, 'Centroid_y', x.Centroid(2) * convFactor),structContainer, 'UniformOutput', false));
            %V Convert ConvexArea
            structContainer = cell2mat(arrayfun(@(x) setfield(x, 'ConvexArea', x.ConvexArea * (convFactor^2)),structContainer, 'UniformOutput', false));
            %V Convert BoundingBox
            structContainer = cell2mat(arrayfun(@(x) setfield(x, 'BoundingBox', x.BoundingBox * convFactor),structContainer, 'UniformOutput', false));
        end