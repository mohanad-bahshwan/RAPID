        function outputImage = Createmissingimg(app)
            % Creates a placeholder image to prompt the user to click an
            % image
            A = zeros(238,388);
            position = [52 97];
            text_str = 'Click on any object to examine it';
            box_color = [0 1 0];
            outputImage = insertText(A,position,text_str,'FontSize',18,'BoxColor',...
                box_color,'BoxOpacity',0.55,'TextColor','white');
        end