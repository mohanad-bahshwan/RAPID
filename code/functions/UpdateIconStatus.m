        function UpdateIconStatus(~, handle, inputState)
            %
            % This function alters the HTML code for the icon displayed in the UI based on the input state,
            % showing different visual states for enabled, disabled, or hidden conditions.
            %
            % Inputs:
            %   handle    - UI component handle(s) to update the icon display.
            %   inputState - Integer indicating the desired icon state:
            %               -1: Hide icon
            %                1: Enabled (selected by user)
            %                0: Disabled (not selected by user)
            switch inputState
                case -1 % Hide icon
                    htmlCode = '<div></div>';
                case 1 % Enabled (selected by user)
                    htmlCode = ['<div style="width:16px; height:16px; ' ...
                        'background-color:#66E866; border-radius:50%; position:relative;"> ' ...
                        ' <div style="width:2px; height:8px; background-color:white; position:absolute;' ...
                        ' top:4px; left:8px; transform:rotate(50deg);"></div>  <div style="width:2px;' ...
                        ' height:4px; background-color:white; position:absolute; top:6px; left:4px; ' ...
                        'transform:rotate(-45deg);"></div></div>'];
                case 0 % Disabled (not selected by user)
                    htmlCode = ['<div style="width:16px; height:16px; ' ...
                        'background-color:red; border-radius:50%; position:relative;">  ' ...
                        '<div style="width:2px; height:8px; background-color:white; ' ...
                        'position:absolute; top:4px; left:7px; transform:rotate(45deg);"></div> ' ...
                        ' <div style="width:2px; height:8px; background-color:white; ' ...
                        'position:absolute; top:4px; left:7px; transform:rotate(-45deg);">' ...
                        '</div></div>'];
            end
            if ~iscell(handle)
                handle.HTMLSource = htmlCode;
            else
                cellfun(@(x) set(x, 'HTMLSource', htmlCode), handle);
            end

        end