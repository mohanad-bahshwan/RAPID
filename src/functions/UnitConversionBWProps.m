        function BWprop = UnitConversionBWProps(app, BWprop)
            %
            % Converts individual image BW properties (BWprop) from pixels to specified unit lengths.
            % Inputs:
            %   BWprop - Structure containing binary image properties (Area, Perimeter, etc.).
            % Outputs:
            %   BWprop - Updated structure with measurements converted using the app's conversion factor.
            cfctr = app.unitConvFactor;
            BWprop.Area = BWprop.Area*(cfctr^2);
            BWprop.FilledArea = BWprop.FilledArea*(cfctr^2);
            BWprop.MajorAxisLength = BWprop.MajorAxisLength*cfctr;
            BWprop.MinorAxisLength = BWprop.MinorAxisLength*cfctr;
            BWprop.Centroid_X = BWprop.Centroid_X*cfctr;
            BWprop.Centroid_Y = BWprop.Centroid_Y*cfctr;
            BWprop.ConvexArea = BWprop.ConvexArea*(cfctr^2);
            BWprop.EquivDiameter = BWprop.EquivDiameter*cfctr;
            BWprop.Perimeter = BWprop.Perimeter*cfctr;
        end