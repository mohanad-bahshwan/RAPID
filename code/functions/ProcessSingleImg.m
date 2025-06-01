        function [imgpreview, imgbw]= ProcessSingleImg(app, SE, imgNumber)
            %
            % Reads and processes a single image from the datastore for preview purposes,
            % and applies optional preprocessing if necessary.
            %
            % INPUTS:
            %   app        - Reference to the app instance, used to access properties and configurations.
            %   SE         - Structuring element for morphological operations.
            %   imgNumber  - Index of the image to process from the datastore.
            %
            % OUTPUTS:
            %   imgpreview - Processed preview image combining grayscale and binary representations.
            %   imgbw      - Binary image after applying preprocessing steps and binarization.
            %
            app.extractedDatastoreImage = readimage(app.rawImgDatastore,imgNumber);
            %Below 'if statement' only activates if 'Region of interest (CROP) is ON'
            if app.cropBoo == 1 ; app.extractedDatastoreImage = imcrop(app.extractedDatastoreImage, app.cropROI); end
            %Below 'if statement' only activates if 'ImageFlattening is ON'
            if app.imageFlatteningBoo == 1; app.extractedDatastoreImage = imflatfield(app.extractedDatastoreImage,25); end
            imggs = im2gray(app.extractedDatastoreImage);
            if app.invertedImage; imggs = imcomplement(imggs);end
            imgop = imopen(imggs, SE);
            imgbw = imbinarize(imgop, app.binarizingThreshold);
            %Below 'if statement' only activates if 'ENHANCED EDGE DETECTION is ON'
            if app.enhancedEdgeBoo == 1; imgbw = ImageEnhanceEdge(app, imgbw); end
            imgpreview = imfuse(imggs,imgbw,'falsecolor');
        end