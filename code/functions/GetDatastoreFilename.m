       function FileName = GetDatastoreFilename(~, dataStoreIn, index)
            % Provides the filename of a targeted datastore file
            % INPUTS:
            %   dataStoreIn: the input datastore
            %   index: is the index number (integer > 0) for the specific file
            [fpath,name,ext] = fileparts(dataStoreIn.Files{index});
            FileName.fullPathText = [fpath filesep name ext];
            FileName.imageText = [name ext];


        end