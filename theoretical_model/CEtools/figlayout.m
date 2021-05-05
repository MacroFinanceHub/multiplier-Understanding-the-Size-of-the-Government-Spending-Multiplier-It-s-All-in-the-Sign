%% FIGLAYOUT
%
%  Lays out two-dimensional figure for plotting, setting axis limits and 
%  printing title and axis labels.
%
%  Usage
%    figlaytout(xxlim,yylim,ftitle,fxlabel,fylabel)
%  Input
%    xxlim    : lower & upper bound of x axis
%    yylim    : lower & upper bound of y axis
%    ftitle   : figure title
%    fxlabel  : x-axis label
%    fylabel  : y-axis label
%  Output
%    two-dimensional figure with specified axis limits, axis labels, title
%
%  Copyright(c) 1997-2015
%   Mario J. Miranda - miranda.4@osu.edu

function figlayout(xxlim,yylim,ftitle,fxlabel,fylabel)
figure
hold on
xlim(xxlim)
ylim(yylim)
if nargin>2, title(ftitle),   end
if nargin>3, xlabel(fxlabel), end
if nargin>4, ylabel(fylabel), end