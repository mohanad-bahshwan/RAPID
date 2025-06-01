        function Clickscanner(app, hObj)
            %
            % Handles mouse clicks on the interactive image or figure elements.
            %
            % INPUTS:
            %   app  - The application object containing required properties and methods.
            %   hObj - The object that was clicked, typically part of the interactive figure.
            %
            %hObj = hittest(app.detachedSegPreviewFig);
            switch hittest(hObj)
                %figure background is clicked
                case app.detachedSegPreviewFig
                    % Do nothing
                    %interactive image is clicked
                case app.interactiveImg
                    %Display the object
                    GetCoordinateAndDisplay(app, app.interactiveImg.CData);
                otherwise
                    switch hittest(hObj).Type
                        %text element over the figure is clicked
                        case 'text'
                            GetCoordinateAndDisplay(app, app.interactiveImg.CData);
                            disp('text clicked');
                        otherwise
                            % do nothing
                    end
            end


        end