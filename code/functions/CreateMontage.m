        function montImgs = CreateMontage(app, orgimg, gsimg, bwimg)
            %
            % Creates a montage by fusing the original image with a processed image (fused grayscale and binary).
            % Optionally applies a region of interest (ROI) crop before generating the montage.
            % Inputs:
            %   orgimg - Original image.
            %   gsimg  - Grayscale image.
            %   bwimg  - Binary image.
            % Outputs:
            %   montImgs - Montage image combining the original and processed images.
            B = imfuse(gsimg, bwimg, 'falsecolor');
            switch app.cropBoo
                case 0

                case 1
                    xloc = round(app.cropROI(1));
                    yloc = round(app.cropROI(2));
                    B0 = uint8(zeros(size(orgimg)));
                    B0(yloc:size(B,1)+yloc-1,xloc:size(B,2)+xloc-1,:) = B; %replace crop-location pixels with fused image
                    B = B0;
            end
            montImgs = imfuse(orgimg, B, 'montage');

        end