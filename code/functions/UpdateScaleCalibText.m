        function UpdateScaleCalibText(app)
            %
            % This function updates the user interface labels to show the current scale value, scale units, pixel line length,
            % line position, and conversion factor, including both the saved and temporary values.
            dataColl = app.scaleDataCollection;
            app.Label2_sv.Text = num2str(dataColl.scaleVal,'%4.2f') ;
            app.Label2_su.Text = dataColl.scaleUnits;
            app.Label2_pl.Text = num2str(dataColl.pixelLineLength,'%4.2f') ;
            app.Label2_lp.Text = num2str(dataColl.linePosition(1,1),'%4.2f') ;
            app.Label2_cf.Text = num2str(dataColl.conversionFactor,'%4.2f') ;
            %-Temporary
            app.pxLabel.Text = [num2str(dataColl.pixelLineLengthTemporary,'%4.2f') ' px ='];
            app.Label2_svt.Text = num2str(dataColl.scaleValTemporary,'%4.2f');
            app.Label2_sut.Text = num2str(dataColl.scaleUnitsTemporary,'%4.2f');
            app.Label2_plt.Text = num2str(dataColl.pixelLineLengthTemporary,'%4.2f');
            if~isempty(dataColl.linePositionTemporary)
                app.Label2_lpt.Text = num2str(dataColl.linePositionTemporary(1,1),'%4.2f');
            else
                app.Label2_lpt.Text = num2str(dataColl.linePositionTemporary,'%4.2f');
            end
            app.Label2_cft.Text = num2str(dataColl.conversionFactorTemporary,'%4.2f');
        end