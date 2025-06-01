        function outputStructuringElement = Createstrel(app,shape, sizeParameters, shapeFamily)
            %
            % This function creates the structuring element based on certain input parameters
            %
            % INPUTS:
            %   shape: char array that defins the shape (e.g., 'rectangle',
            %   'diamond', 'square', etc.)
            %   sizeParameters: 1x2-cell containing the two size parameters
            %   for the input shape
            %   shapeFamily: integer between 1 or 2, depending on the number
            % of vars the shape takes

            shape = AvoidShapeError(app,shape);
            if (shapeFamily ~= 1)
                % 2-parameter strels
                if strcmp(shape,'rectangle')
                    outputStructuringElement = strel(shape, [double(uint8(sizeParameters{1})) double(uint8(sizeParameters{2}))]);
                else
                    outputStructuringElement = strel(shape, double(uint8(sizeParameters{1})), double(uint8(sizeParameters{2})));
                end

            else
                % 1-parameter strels
                outputStructuringElement = strel(shape, double(uint8(sizeParameters{1})));

            end

        end