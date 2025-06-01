function [outputTable, cancelState] = Datastoreextractor(app, dataDS, cleanDS)
            %
            % This function loops through the datastore data structure to
            %convert it into a single output table.
            %INPUTS:
            %   dataDS: The segmentation data structure
            %   cleanDS: The pre-processed datastore (i.e., the clean images
            %datastore)
            %
            %OUTPUTS:
            %   outputTable: The consolidated-data table
            %   cancelState: A boolean 0 or 1, that indicates if user
            %   cancelled the loop or not


            % Transform into table
            reset(dataDS);
            dstbl = transform(dataDS, @(x) struct2table(x, 'AsArray', true));
            reset(dstbl);
            tBig = [];

            %f = waitbar(0,'Processing all images...');
            d = uiprogressdlg(app.v10UIFigure, 'Title', 'Working...', 'Message', 'Processing all images', 'Cancelable','on');



            for k=1:dataDS.numpartitions
                if d.CancelRequested
                    cancelState = 1;
                    break
                else
                    cancelState = 0;
                end
                %k
                %waitbar(k/dsdata.numpartitions, f, ['Processing image # ' num2str(k) ' (out of ' num2str(dsdata.numpartitions) ')'])
                d.Value = k/dataDS.numpartitions;
                d.Message = ['Processing image # ' num2str(k) ' (out of ' num2str(dataDS.numpartitions) ')'];
                try
                    j = read(dstbl);
                    j.ImageID = repmat(k,size(j,1),1);
                    if isa(cleanDS, 'matlab.io.datastore.ImageDatastore')
                        files = cleanDS.Files{k};
                    else
                        files = cleanDS.UnderlyingDatastores{1}.Files{k};
                    end
                    [~,name,ext] = fileparts(files);
                    j.FileName = repmat(convertCharsToStrings([name ext]),size(j,1),1);
                    tBig = [tBig;j];
                    outputTable = tBig;
                catch ME
                    switch ME.identifier
                        case 'MATLAB:datastoreio:transformeddatastore:badTransformDef'
                            % SKIP EMPTY BINARY IMAGE
                        otherwise
                            rethrow(ME)
                    end
                end
            end
            close(d);




        end