 function [objectShape, vals] = Initializesliders(app, objectShape, varargin)
            %
            % Initializes the morphological UI-sliders based on some
            %arbitrary shape input (and optionally an additional size
            %and threshhold parameters for that shape)
            % INPUTS:
            %objectShape: char array ('disk', 'square',
            %'diamond','octagon','line','rectangle','','','','','','')
            %varargin{1}: main size parameter
            %varargin{2}: additional size parameter (for specific shapes
            %only)
            %varargin{3}: threshholding value

            vals = [];
            if strcmp(objectShape, 'disk'); objectShape = 'disk (default)';end

            switch objectShape
                %---------------1 value1
                case 'square'
                    container = {[1 50], [0 1], 'off', 'off', 'off', ...
                        'Edge length', '', 0:0.1:1, 0:0.02:1};
                    vals{1} = 1;
                    vals{2} = 0;
                    app.strelShapeFamily = 1;
                case 'diamond'
                    container = {[1 50], [0 1], 'off', 'off', 'off', ...
                        'Radius', '', 0:0.1:1, 0:0.02:1};
                    vals{1} = 1;
                    vals{2} = 0;
                    app.strelShapeFamily = 1;
                case 'octagon'
                    container = {[1 50], [0 1], 'off', 'off', 'off', ...
                        'Radius', '', 0:0.1:1, 0:0.02:1};
                    vals{1} = 3;
                    vals{2} = 0;
                    app.strelShapeFamily = 1;

                    %---------------2 values
                case 'disk (default)'
                    container = {[1 50], [0 8], 'on', 'on', 'on', ...
                        'Radius', 'Approximation', [0 4 6 8], [0 4 6 8]};
                    vals{1} = 1;
                    vals{2} = 4;
                    app.strelShapeFamily = 2;
                case 'line'
                    container = {[1 50], [0 180], 'on', 'on', 'on', ...
                        'Length', 'Angle (degrees)', 0:15:180, 0:5:180};
                    vals{1} = 1;
                    vals{2} = 0;
                    app.strelShapeFamily = 2;
                case 'rectangle'
                    container = {[1 50], [0 50], 'on', 'on', 'on', ...
                        'Height', 'Width', 0:5:50, 0:1:50};
                    vals{1} = 1;
                    vals{2} = 4;
                    app.strelShapeFamily = 2;


            end
            app.SliderVal1.MajorTicks = 0:5:50;
            app.SliderVal1.MinorTicks = 0:1:50;
            app.SliderVal3.Value = 0.45;

            % This if statement takes care of previous preferences; If there
            % are previous preferences, then the script below takes those
            % previous preferences into account
            if ~(isempty(varargin))

                if (app.strelShapeFamily == 1)
                    % previous preferences has a shape with 1 size parameter
                    vals{1} = varargin{1};
                    vals{2} = 0;
                    app.SliderVal2.Value = vals{2};
                    app.SliderVal3.Value = varargin{3};
                else
                    % previous preferences has a shape with 2 size parameters
                    vals{1} = varargin{1};
                    vals{2} = varargin{2};
                    app.SliderVal3.Value = varargin{3};
                end
            else
                % normal initialization (no previous preferences)
            end

            %UI-related
            app.SliderVal1.Value = vals{1};
            app.TFieldVal1.Value = num2str(vals{1});
            if size(vals,2) > 1
                app.SliderVal1.Limits = container{1};
                app.SliderVal2.Limits = container{2};
                app.SliderVal2.Visible = container{3};
                app.TFieldVal2.Visible = container{4};
                app.LblVal2.Visible = container{5};
                app.LblVal2.Text = container{7};
                app.SliderVal2.Value = vals{2};
                app.TFieldVal2.Value = num2str(vals{2});

            end
            app.TFieldVal3.Value = num2str(app.SliderVal3.Value);
            app.SliderVal1.Limits = container{1};
            app.SliderVal2.Limits = container{2};
            app.SliderVal2.Visible = container{3};
            app.TFieldVal2.Visible = container{4};
            app.LblVal2.Visible = container{5};
            app.LblVal1.Text = container{6};
            app.LblVal2.Text = container{7};
            app.SliderVal2.MajorTicks = container{8};
            app.SliderVal2.MinorTicks = container{9};
        end