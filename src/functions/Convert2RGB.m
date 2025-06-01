        function imgRGB = Convert2RGB(~,imgIn)
            %
            % Converts image from grayscale/BW to RGB
            %INPUTS:
            %imgIn: input image (BW, grayscale, or RGB)
            [~, ~, numberOfColorChannels] = size(imgIn);
            % Check if imagedatastore is grayscale/BW (channels == 1)
            if numberOfColorChannels == 1
                % if yes, then convert to RGB
                imgRGB = cat(3, imgIn, imgIn, imgIn);
            else
                % dont do anything
                imgRGB = imgIn;
            end
        end