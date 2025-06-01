function updatedValue = HandleSpecialSliders(~,sliderValue,SE, sliderType)
            %
            % Adjusts slider values based on the specified structuring element and slider type.
            %   - For 'disk': Adjusts slider values to discrete levels (0, 4, 6, or 8) unless the slider type is 'strelDim1'.
            %   - For 'octagon': Rounds the slider value up to the nearest multiple of 3.
            %   - For other structuring elements: Returns the slider value unchanged.
            % INPUTS:
            %   sliderValue - Current value of the slider to be processed.
            %   SE          - Structuring element shape ('disk', 'octagon', or other).
            %   sliderType  - Type of slider ('strelDim1' or other).
            %
            % OUTPUTS:
            %   updatedValue - Adjusted slider value based on specific rules for the structuring element.

            switch SE
                case 'disk'
                    if not(strcmp(sliderType, 'strelDim1'))
                        if (sliderValue>=0) && (sliderValue<=2)
                            updatedValue = 0;
                        elseif (sliderValue>2) && (sliderValue <= 4.5)
                            updatedValue = 4;
                        elseif (sliderValue > 4.5) && (sliderValue <= 6.5)
                            updatedValue = 6;
                        else
                            updatedValue = 8;
                        end
                    else
                        updatedValue = sliderValue;
                    end
                case 'octagon'
                    if rem(sliderValue,3) > 0
                        updatedValue = sliderValue + (3 - rem(sliderValue,3));
                    else
                        updatedValue = sliderValue;
                    end

                otherwise
                    updatedValue = sliderValue;
            end
        end