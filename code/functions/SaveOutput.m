function SaveOutput(app, dataTable)
            %
            % This function saves the provided data table as a CSV file and user preferences as a .mat file.
            % It conditionally exports original, montage, labeled, binarized, and border-cleared images
            % based on user export preferences. MATLAB data structures are saved if selected.
            % A progress dialog updates throughout the export process.
            %
            % Inputs:
            %   dataTable - Table containing processed data for export.
            %
            app.saveDialog = []; %initialize save progress dialog
            [selectedDir, imgsDir] = SelectOutputDir(app);


            [~,enabledloc] = find(structfun(@(x) x, app.userPrefExportState)'==1);

            counter = 0;
            oneStepCounter = 0;
            sumEnabled = length(enabledloc)+1;
            serialNos = 1:1:length(enabledloc)+1;

            %Save the user preferences file
            config = app.config;
            save(fullfile(selectedDir, 'Preferences', 'Preferences.mat'),"-struct","config");
            focus(app.v10UIFigure);
            app.saveDialog = uiprogressdlg(app.v10UIFigure, 'Title', 'Please wait', 'Message', 'Saving files', 'Value', 1/(app.cleanedDatstore.numpartitions*sumEnabled), 'Cancelable','on');


            % Export to CSV
            if isequal(app.userPrefExportState.mtlb,1); oneStepCounter = 1;end
            app.saveDialog.Value = (counter)/((app.cleanedDatstore.numpartitions*(sumEnabled-1-oneStepCounter))+1+oneStepCounter);
            writetable(dataTable, fullfile(selectedDir, 'data.csv'),'Encoding','UTF-8');
            counter = counter + 1;


            if isequal(app.userPrefExportState.exporg,1)

                %app.saveDialog.Value = serialNos(counter)/sumEnabled;
                app.saveDialog.Message = 'Saving copies of original images';
                mkdir(imgsDir, 'Originals'); % Create Originals directory
                [cancelState, counter] = saveImgFun(app, app.cleanedDatstore, fullfile(imgsDir, 'Originals'), 'O_', app.fileNames, app.saveDialog.CancelRequested, counter, sumEnabled, oneStepCounter);
                if cancelState == 1; return; end
                %counter = counter + 1;
            end


            % Create montage images
            if isequal(app.userPrefExportState.exphigh,1)
                %app.saveDialog.Value = serialNos(counter)/sumEnabled;
                app.saveDialog.Message = 'Creating highlighted images';
                montgImgs = transform(app.cleanedDatstore, app.greyScaleDatastore, app.binarizedDatastore, @(x,y,z) CreateMontage(app,x,y,z));
                app.saveDialog.Message = 'Saving highlighted images';
                mkdir(imgsDir, 'Highlighted');
                [cancelState, counter]  = saveImgFun(app, montgImgs, fullfile(imgsDir, 'Highlighted'), 'H_', app.fileNames, app.saveDialog.CancelRequested, counter, sumEnabled, oneStepCounter);
                if cancelState == 1; return; end
                %counter = counter + 1;
            end
            %Create labelled images


            if isequal(app.userPrefExportState.explbl,1)
                %app.saveDialog.Value = serialNos(counter)/sumEnabled;
                app.saveDialog.Message = 'Creating labelled images';
                lbledImgs = transform(app.binarizedDatastore, app.segmentationDataStructs, @(x,y) CreatelbledImgs(app,x,y));
                app.saveDialog.Message = 'Saving labelled images';
                mkdir(imgsDir, 'Labelled');
                [cancelState, counter]  = saveImgFun(app, lbledImgs, fullfile(imgsDir, 'Labelled'), 'L_', app.fileNames, app.saveDialog.CancelRequested, counter, sumEnabled, oneStepCounter);
                if cancelState == 1; return; end
                %counter = counter + 1;
            end


            if isequal(app.userPrefExportState.expbw,1)
                %app.saveDialog.Value = serialNos(counter)/sumEnabled;
                app.saveDialog.Message = 'Saving binarized images';
                mkdir(imgsDir, 'Binarized');
                [cancelState, counter]  = saveImgFun(app, app.binarizedDatastore, fullfile(imgsDir, 'Binarized'), 'B_', app.fileNames, app.saveDialog.CancelRequested, counter, sumEnabled, oneStepCounter);
                if cancelState == 1; return; end
                %counter = counter + 1;
            end


            if isequal(app.userPrefExportState.expbwbrdrclr,1)
                %app.saveDialog.Value = serialNos(counter)/sumEnabled;
                app.saveDialog.Message = 'Saving cleared-border images';
                mkdir(imgsDir, 'Binarized - clear border');
                [cancelState, counter]  = saveImgFun(app, app.borderClearBinarizedDatastore, fullfile(imgsDir, 'Binarized - clear border'), 'BCB_', app.fileNames, app.saveDialog.CancelRequested, counter, sumEnabled, oneStepCounter);
                if cancelState == 1; return; end
                %app.saveDialog.Value = serialNos(counter)/sumEnabled;
                %counter = counter + 1;
            end


            if isequal(app.userPrefExportState.mtlb,1)
                mStruct = app.segmentationDataStructs;
                reset(mStruct);
                mStruct = read(mStruct);
                if app.saveDialog.CancelRequested
                    return
                end
                save(fullfile(selectedDir, 'mStruct'), 'mStruct', '-v7.3');
                counter = counter + 1;
                app.saveDialog.Value = (counter)/((app.cleanedDatstore.numpartitions*(sumEnabled-1-oneStepCounter))+1+oneStepCounter);
                app.saveDialog.Cancelable = 'off';
            end

            app.saveDialog.Icon = 'success';
            disp('done');
            app.savedLabel.Visible = 'on';
            app.savedLabel.Tooltip = ['saved in: ' selectedDir];

            close(app.saveDialog);
            focus(app.v10UIFigure);
            uialert(app.v10UIFigure,'Saving operation completed successfully.','Success','Interpreter','html', 'Icon', 'success');

        end