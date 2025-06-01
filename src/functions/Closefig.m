        function Closefig(~, fig)
            %
            % Performs necessary checks then closes the figure
            % INPUTS:
            % fig: figure to be closed
            if ishandle(fig)
                if isvalid(fig)
                    close(fig);
                    %fig = [];
                else
                    %do nothing
                end
            else
                %do nothing
            end
        end