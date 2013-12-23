function f = ellipsoidalmix(x)
% ELLIPSOIDALMIX Step Shifted ellipsoidal function
% Properties Globally quadratic and ill-conditioned function.
%
% * unimodal
% * conditioning is about 1e6
% * x_even variables are rounded to integers.
%
M = numel(x);
evenidx = 2 : 2 : M;
x(evenidx) = round(x(evenidx));
x = reshape(x, 1, M);
xopt = 20 * [0.328330247897590,0.341366008904166,0.0955303552646702,2.13564031832762,-2.43001045243025,2.52693608872111,3.83879183689544,-3.45100917466704,1.70546438348926,1.43445158589872,2.23627169177067,2.48725200066805,3.18547394954049,-4.02091477131682,-4.96446092791885,-2.69190384518682,-4.87744866683650,-1.46458288940868,-3.14718522837002,2.92768403729213,1.12172025653116,3.99429125456534,-1.84632220556590,-0.933445574641006,4.80258603677642,0.420651798988018,-2.57705388057070,-2.47758317884361,0.651557864067961,-3.66663120085796,3.76258558942507,-0.196681449698265,-2.16674131990240,3.92210781090966,3.27631970503290,4.79970470151640,3.67232971903792,-3.06494346952440,-0.455093268659111,3.05182781615030,2.47231416736950,4.19959718482432,-2.79530070289714,4.97953097959048,1.02796520258381,-4.64481542649834,0.555210784644254,-1.80357478075067,0.0210462453405746,0.331217169474583,1.62513389791841,-0.417243181461097,-3.90123617061650,2.29937667518445,2.84203567912273,-3.58710292443888,3.38686941896812,-0.972736795449642,-0.935763405085895,-1.29333688813722,4.17015617878237,-0.0932063325693733,4.65988369612520,-4.30279029473514,-1.37951348495122,-4.54840036140525,-1.64262516085484,-0.928225479371854,-2.66892874722010,-2.96257077452452,4.34802200112177,0.770468267607731,1.24221715157572,3.42970673694684,-3.23515771370740,3.50774800374451,-2.00864699913664,3.34420491104267,4.57758225319469,-3.85270261621985,-3.83411219011204,-4.54249156501438,0.813757108513952,-4.01972537596628,-2.86744863914131,-3.27813385784497,4.73148625901139,-3.01763558811086,-3.22112638972349,-2.28011059589676,-2.27431931362369,3.05299494967023,-3.26673452441341,-1.92180757057402,-0.344392816453290,3.06967167722794,3.19154476431992,-3.01356575501925,-3.47462525132243,1.87020380348499];
x = x - xopt(1:M);
f = sum(10.^(6/(M-1)*(0:M-1)) .* x .^2);
end
