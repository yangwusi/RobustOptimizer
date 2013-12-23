function f = maxminmax_f55(x,y,z)
% Sphere-rastrigin-rastrigin function (Type 7)
% Global optimum value: f(0.1,0.1,0.1) = 0
%
% Property
% * Multimodal
% * xy-correlation: No
% * xz-correlation: Yes
% * yz-correlation: Yes
shift = 0.1;
if nargin == 0
	f = shift;
	return;
end

x = x - shift;
y = y - shift;
z = z - shift;
X = x;
Y = y;
Z = x + y + z;
a = 1;
b = 1;
c = 2;
f = - a * sum(X.^2) ...
	+ b * rastrigin(Y) ...
	- c * rastrigin(Z);
end
