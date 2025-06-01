        function outputStructure = SplitBorderStats(app, myIbwImage)
            %This function separates border-touching objects from
            %non-border-touching objects, and add a boolean value to
            %distinguish each (1: Border-touching, 0: non-border-touching)
            %in the main data structure
            %INPUT:
            %myIbwImage: BW image (logical)
            rProps = ["Centroid" "MajorAxisLength" "MinorAxisLength" "Perimeter" "Area" "solidity" "Circularity" "image" "BoundingBox" "FilledArea"...
                "ConvexHull" "ConvexImage" "ConvexArea" "Eccentricity" "EquivDiameter" "EulerNumber" "Extent" "Extrema" "FilledImage" ...
                "Orientation" "PixelIdxList" "PixelList"]

            bdrObjs = (myIbwImage - imclearborder(myIbwImage, 8));
            nonBdrObjsImgs = SplitBorderImages(app, myIbwImage);

            % create connected components
            bdrObjs = bwconncomp(bdrObjs,8);
            nonBdrObjs = bwconncomp(nonBdrObjsImgs, 8);


            % Create stats for each one separately;
            bdrObjsStats = regionprops('struct', bdrObjs, rProps);
            nonBdrObjsStats = regionprops('struct', nonBdrObjs, rProps);


            % now create ObrderObj Boolean for each
            bdrObjsStats = arrayfun(@(x) setfield(x,'BorderObject',1),bdrObjsStats, 'UniformOutput', false);
            bdrObjsStats = cell2mat((bdrObjsStats)');
            nonBdrObjsStats = arrayfun(@(x) setfield(x,'BorderObject',0),nonBdrObjsStats, 'UniformOutput', false);
            nonBdrObjsStats = cell2mat((nonBdrObjsStats)');

            outputStructure = [bdrObjsStats,nonBdrObjsStats]';
        end