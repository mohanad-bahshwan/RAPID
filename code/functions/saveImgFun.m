function  [cancelState, counter] = saveImgFun(app, Imageds, imageFolder, Prefix, FileName, cancelRequest, counter, sumEnabled, oneStepCounter)
            %
            % Saves images from the provided datastore to the specified folder with a given prefix.
            % Supports cancellation during the saving process and handles single or multiple image partitions.
            %
            % Inputs:
            %   Imageds       - Datastore containing images to be saved.
            %   imageFolder   - Destination folder for saving images.
            %   Prefix        - Prefix for saved image filenames.
            %   FileName      - Name(s) of the image file(s).
            %   cancelRequest - Boolean flag to cancel the save operation if set to true.
            %   counter       - double, An increment that constitute the current step in the entire process
            %   sumEnabled    - Integer, The number of enabled export options
            %   oneStepCounter- Integer, A special counter that counts processes that consist of a single step
            %
            % Outputs:
            %   cancelState   - Returns 1 if the save operation was canceled, otherwise 0.
            %   counter       - double, Updated increment that constitute the current step in the entire process
            %
            cancelState = 0;
            reset(Imageds)
            message = app.saveDialog.Message;
            switch Imageds.numpartitions
                case 1
                    counter = counter + 1;
                    app.saveDialog.Value = (counter)/((app.cleanedDatstore.numpartitions*(sumEnabled-1-oneStepCounter))+1+oneStepCounter);
                    tempimg = read(Imageds);
                    [~,~,FileExt] = fileparts(which(FileName));
                    FileNameNoExt = split(FileName, FileExt);
                    imwrite(tempimg, fullfile(imageFolder, [Prefix FileNameNoExt{1} '.png']), 'png');
                otherwise
                    for i=1:1:Imageds.numpartitions
                        counter = counter + 1;
                        app.saveDialog.Value = (counter)/((app.cleanedDatstore.numpartitions*(sumEnabled-1-oneStepCounter))+1+oneStepCounter);
                        app.saveDialog.Message = [message ' # ' num2str(i) ' (out of ' num2str(Imageds.numpartitions) ')'];
                        if cancelRequest
                            cancelState = 1;
                            close(app.saveDialog)
                            break
                        end
                        try
                            tempimg = read(Imageds);
                            [~,~,FileExt] = fileparts(which(FileName{i}));
                            FileNameNoExt = split(FileName{i}, FileExt);
                            FileNameNoExt = FileNameNoExt{1};
                            imwrite(tempimg, fullfile(imageFolder, [Prefix FileNameNoExt '.png']), 'png');
                        catch ME
                            display('some images threw an error');
                        end
                    end
            end
        end