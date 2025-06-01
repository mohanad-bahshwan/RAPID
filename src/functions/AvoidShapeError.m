        function shape = AvoidShapeError(~,shape)
            %
            % Prevents error if shape 'disk' is selected due to 'default'
            % text being written in the dropdown field
            %
            % Inputs:
            %   shape - the shape of the morphological operator

            if strcmp(shape, 'disk (default)')
                shape = 'disk';
            else
                % do nothing
            end
        end