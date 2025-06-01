        function outputImg = ImageEnhanceEdge(~, imgIN)
            %
            % Enhances the edges of a binary image using morphological operations.
            % Inputs:
            %   imgIN - Binary input image to be enhanced.
            % Outputs:
            %   eeImg - Edge-enhanced binary image.
            se90 = strel('line',3,90);
            se0 = strel('line',3,0);
            eg1 = imdilate(imgIN,[se90 se0]);
            eg2 = bwmorph(eg1, 'bridge', 40);
            eg2 = imfill(eg2, 'holes');
            eg3 = imdilate(eg2,[se90 se0]);
            eg3 = bwmorph(eg3, 'bridge', 40);
            eg3 = imfill(eg3, 'holes');
            outputImg = eg3;

        end