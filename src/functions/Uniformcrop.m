        function ds = Uniformcrop(~,rawImgDatastore, mincol, minrow)
            %
            % Performs uniform cropping to a series of images contained
            %within an imagedatastore
            %INPUTS:
            % rawImgDatastore: raw datastore (user input)
            % mincol: minimum width of all images in datastore
            % minrow: minimum height of all images in datastore
            %OUTPUT:
            % ds: transformed datastore
            ds = transform(rawImgDatastore,@(x) imcrop(x,[0 0 mincol minrow]));

        end