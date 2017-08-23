function drawLine(p1, p2, varargin)
%DRAWLINE Draws a line from point p1 to point p2
%   DRAWLINE(p1, p2) Draws a line from point p1 to point p2 and holds the
%   current figure

dp = p2-p1;                         % Difference
quiver(p1(1),p1(2),dp(1),dp(2),0);
%plot([p1(1) p2(1)], [p1(2) p2(2)], varargin{:});



end

