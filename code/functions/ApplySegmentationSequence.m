function ApplySegmentationSequence(app)
            %
            % This function performs the complete sequence requried to move
            %from the 'cleaned' datastore image(s) all the way to the final
            %image segmentation step.

            %STEP1: Convert images to grayscale
            app.greyScaleDatastore = transform(app.cleanedDatstore, @(x) im2gray(x));
            %STEP2: Apply optional pre-processing conditions (ROI-based CROP)
            if app.cropBoo == 1; app.greyScaleDatastore = transform(app.greyScaleDatastore, @(x) imcrop(x, app.cropROI)); end
            %STEP3: Apply optional pre-processing conditions (Image flattening)
            if app.imageFlatteningBoo == 1; app.greyScaleDatastore = transform(app.greyScaleDatastore, @(x) imflatfield(x, 25)); end
            %STEP4: Invert or uninvert image (based on user choice)
            if app.invertedImage == 1; app.greyScaleDatastore = transform(app.greyScaleDatastore, @(x) imcomplement(x)); end
            %STEP5: Morphologically open the image using the structural elements
            app.binarizedDatastore = transform(app.greyScaleDatastore, @(x) imopen(x, app.morphStructElement));
            %STEP6: Binarize the image (convert them to black and white)
            app.binarizedDatastore = transform(app.binarizedDatastore, @(x) imbinarize(x, app.binarizingThreshold));
            %STEP7: Retain a temporary binarized image in which the borders have
            %been cleared (i.e., remove any objects that touches the border)
            %(for image export purposes)
            app.borderClearBinarizedDatastore = transform(app.binarizedDatastore, @(x) SplitBorderImages(app,x));
            %STEP8: Apply optional edge enhancement to the object detection
            if app.enhancedEdgeBoo == 1; app.binarizedDatastore = transform(app.binarizedDatastore, @(x) ImageEnhanceEdge(app, x)); end
            %STEP9: Separate border-touching objects from
            %non-border-touching objects, and add a boolean value to
            %distinguish each
            app.segmentationDataStructs = transform(app.binarizedDatastore, @(x) SplitBorderStats(app, x));
            %STEP10: Perform optional unit conversion from the default 'pixels' units
            app.segmentationDataStructs = transform(app.segmentationDataStructs, @(x) ConvertPx2UnitLength(app, x, app.unitConvFactor));
            %STEP11: Assign IDs to each object
            objsIDs = transform(app.segmentationDataStructs, @(x) find(arrayfun(@(xx) isequal(xx.Centroid(:,1),xx.Centroid(:,1)), x)));
            %STEP12: Create Object ID for the image and assign it back to the 'mStruct' data structure
            app.segmentationDataStructs = transform(app.segmentationDataStructs,objsIDs, @(x,y) arrayfun(@(xx, yy) setfield(xx, 'ObjectID', yy),...
                x, y, 'UniformOutput', false));
            %STEP13: Convert from cell to matrix
            app.segmentationDataStructs = transform(app.segmentationDataStructs, @(x) cell2mat((x)'));
        end