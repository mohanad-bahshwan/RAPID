        function SwitchTab(app,newtab,oldtab)
            %
            % Switches the active tab in the application UI.
            %
            % Inputs:
            %   newtab - The tab to switch to.
            %   oldtab - The previously active tab to store.
            %

            %Check tab is 'About' then skip overwrite
            if strcmp(app.TabGroup4.SelectedTab.Title, app.AboutMenu.Tag)
            else
                app.lastSelectedTab = oldtab;
            end
            app.TabGroup4.SelectedTab = newtab;
        end