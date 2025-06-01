        function ValidateMenuItem(app,evt)
            %
            % This function activates the menu corresponding to the selected tab while disabling others.
            % If the 'About' tab is selected, the previously active tab remains enabled.
            %
            % Inputs:
            %   evt - String specifying the selected tab ('homeTab', 'step1Tab', 'step2Tab',
            %         'step3Tab', 'step4Tab', 'step5Tab', 'step6Tab', or 'aboutTab').
            %
            booArr = {'off','off','off','off','off','off','off','on'};
            tabCell = {app.HomeMenu,...
                app.ImportMenu,...
                app.PreprocessMenu,...
                app.CalibrateMenu,...
                app.SegmentMenu,...
                app.PreviewMenu,...
                app.ExportMenu,...
                app.AboutMenu};
            switch evt
                case 'homeTab'
                    booArr{1} = 'on';
                case 'step1Tab'
                    booArr{2} = 'on';
                case 'step2Tab'
                    booArr{3} = 'on';
                case 'step3Tab'
                    booArr{4} = 'on';
                case 'step4Tab'
                    booArr{5} = 'on';
                case 'step5Tab'
                    booArr{6} = 'on';
                case 'step6Tab'
                    booArr{7} = 'on';
                case 'aboutTab'
                    booArr{8} = 'on';
                    booArr{find(cell2mat(cellfun(@(x) strcmp(app.lastSelectedTab.Title, x.Tag), tabCell, 'UniformOutput', false))==1)} = 'on'; % keep last tab enabled
            end
            cellfun(@(x,y) set(x,'Enable', y), tabCell, booArr);
        end