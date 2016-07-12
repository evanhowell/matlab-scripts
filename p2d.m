function d = p2d(p,lat)
%p2d.m - Calculate depth in meters from pressure
%
% Taken from the SeaBird Electronics site: http://www.seabird.com/document/an69-conversion-pressure-depth
%
%Sea-Bird uses the formula in UNESCO Technical Papers in Marine Science No. 44. 
% This is an empirical formula that takes compressibility (that is, density) into account.
% An ocean water column at 0 °C (t = 0) and 35 PSU (s = 35) is assumed.

%The gravity variation with latitude and pressure is computed as:

x = sin(lat./57.29578).^2;
g  = 9.780318 .* ( 1.0 + ( 5.2788e-3 + 2.36e-5  .* x) * x) + 1.092e-6 .* p;

d = ((((-1.82e-15 .* p + 2.279e-10) .* p - 2.2512e-5) .* p + 9.72659) .* p) ./ g;