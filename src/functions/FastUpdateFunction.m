        function previewIMG = FastUpdateFunction(app, SE, inputIMG)
            %
            % Performs a quick segmentation sequence for a single input
            % image that was extracted from the datastore for the sake of
            % previewing the segmentation process
            % INPUTS:
            %   SE: Structuring element
            %   inputIMG: (pre-processed) single image to be processed
            grayScaleIMG = im2gray(inputIMG);

            switch app.invertedImage
                case true
                    grayScaleIMG = imcomplement(grayScaleIMG);
                case false
                    % do nothing
            end
            openedIMG = imopen(grayScaleIMG, SE);



            BWIMG = imbinarize(openedIMG, app.binarizingThreshold);
            %Below 'if statement' only activates if 'ENHANCED EDGE DETECTION is ON'
            if app.enhancedEdgeBoo == 1; BWIMG = ImageEnhanceEdge(app, BWIMG); end

            previewIMG = imfuse(grayScaleIMG,BWIMG, 'falsecolor');

        end