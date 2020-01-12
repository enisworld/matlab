function h = customdrawellipse(varargin)

h = images.roi.Ellipse(varargin{:});

if isempty(h.Parent)
    h.Parent = gca;
end

% If ROI was not fully defined, start interactive drawing
if isempty(h.Center) || isempty(h.SemiAxes)
    if ~isempty(h.Center)
        warning(message('images:imroi:incompleteDefinition','Center'));
    end
    if ~isempty(h.SemiAxes)
        warning(message('images:imroi:incompleteDefinition','SemiAxes'));
    end
    if h.RotationAngle ~= 0
        warning(message('images:imroi:unusedParameter','RotationAngle'));
    end
    figure(ancestor(h,'figure'))
    h.draw;
end
