classdef scaleFigCollection < handle
%Class that holds data after user calibrates scale

    properties (Access = public)
        figOpen % logical operator to determine whether the figure remains open
        acceptBoo = 0 % logical value stored based on user accept/cancel decision
        firstTime = 1 %This property indicates that a previous scale has/has not been set        
        scaleVal %numerical value entered to represent the scale (confirmed number)
        scaleValTemporary %numerical value entered temporary to represent the scale
        scaleUnits %units ('px','µm', 'nm', 'mm', 'cm', 'm', 'pm') (confirmed units)
        scaleUnitsTemporary %units ('px','µm', 'nm', 'mm', 'cm', 'm', 'pm') (temporary)       
        pixelLineLength % This is the length of the green line in pixels (confirmed value)
        pixelLineLengthTemporary % This is the length of the green line in pixels (temporary)        
        linePosition % position of the green line (2x2 array) (confirmed)
        linePositionTemporary % position of the green line (2x2 array) (temporary)
        conversionFactor % this is the conversion factor which results from all this procedure
        conversionFactorTemporary % this is the conversion factor which results from all this procedure (temporary)        
    end

end