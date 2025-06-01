        function FastObjectLabel(app, binaryIMG)
            %
            % Creates object labels for an input binarized image
            % INPUTS:
            %   binaryIMG: a logical input image
            f = waitbar(0,'please wait...');
            waitbar(1/5, f, 'Reading image')


            % GATHERING DATA
            waitbar(2/5, f, 'Processing objects...')
            %--- Determine which objects are touching border
            app.interactiveImgData = SplitBorderStats(app, binaryIMG);
            waitbar(3/5, f, 'Determining object IDs...')
            %--- Assign IDs to objects
            app.interactiveImgIDs = find(arrayfun(@(xx) isequal(xx.Centroid(:,1),xx.Centroid(:,1)), app.interactiveImgData));
            waitbar(4/5, f, 'Assigning object labels...')
            %--- Inserts Obj IDs @ centroid for each object
            set(0, 'CurrentFigure', app.detachedSegPreviewFig)
            app.interactiveImgLabels = arrayfun(@(z) ...
                text(app.interactiveImgData(app.interactiveImgIDs(z)).Centroid(1), ...
                app.interactiveImgData(app.interactiveImgIDs(z)).Centroid(2), num2str(app.interactiveImgIDs(z)),...
                'FontSize',14,'Color',[.945 .271 .176]), ...
                app.interactiveImgIDs);
            waitbar(5/5, f, 'Finalizing')
            close(f);
            %
        end