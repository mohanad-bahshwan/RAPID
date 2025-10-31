function shape = AvoidShapeErrorReversed(~,shape)
%
% Prevents error if shape 'disk' is selected due to 'default'
% text being written in the dropdown field
%
% Inputs:
%   shape - the shape of the morphological operator

if strcmp(shape, 'disk')
    shape = 'disk (default)';
else
    % do nothing
end
end