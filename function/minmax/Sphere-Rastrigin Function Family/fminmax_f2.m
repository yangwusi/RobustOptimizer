function f = fminmax_f2(x, y)
% Sphere-sphere function (Type 2)
% Global optimum value: f(0.1, 0.1) = 0
%
% Property
% * xy-correlation: Yes
shift = 0.1;
if nargin == 0
	f = shift;
	return;
end

x = x - shift;
y = y - shift;
X = x;
Y = x + y;
a = 1;
b = -2;
f = a * sphere(X) + b * sphere(Y);
end
