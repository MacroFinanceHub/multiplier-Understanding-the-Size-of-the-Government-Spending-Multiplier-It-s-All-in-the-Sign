%% SPLINODE
%
%  Computes standard nodes for splines using knot averaging.
%
%  Usage
%    x = splinode(breaks,evennum,k)
%  Input
%    breaks    : user specified breakpoint sequence
%                (default: evenly spaced non-repeated breakpoints)
%    evennum   : non-zero if breakpoints are all even
%    k         : polynomial order of the spline's pieces (default: 3, cubic)
%  Output
%    x         : nodes

%  Copyright(c) 1997-2015
%   Mario J. Miranda - miranda.4@osu.edu
%   Paul L. Fackler  - paul_fackler@ncsu.edu

function x = splinode(breaks,evennum,k)

if nargin<1 error('At least one parameter must be specified'); end
if nargin<3 | isempty(k), k=3; end 

a = breaks(1);
b = breaks(end);
n = length(breaks)+k-1;
x = cumsum([a*ones(k,1);breaks(:);b*ones(k,1)]);
x = (x(1+k:n+k)-x(1:n))/k;
x(1)   = a;
x(end) = b;