        function bdrClrImg = SplitBorderImages(~, bwImg)
            %
            % determine which images are(n't) touching border and split
            % accordingly

            % First split image into two parts and fill them up
            %bdrObjs = imfill((myIbwImage - imclearborder(myIbwImage, 8)), 'holes');
            %nonBdrObjs = imfill((myIbwImage - bdrObjs), 'holes');

            % First split image into two parts
            bdrObjs = (bwImg - imclearborder(bwImg, 8));
            bdrClrImg = (bwImg - bdrObjs);
        end