clear all

% Continuous case

b = 25;                    % nm, disk domain radius
a = 2;
D = 1;
type = 'disk';

xS = -5;    yS = 2;              % r
xS = 0;     yS = 5;              % r

xT = -b:0.1:b;        yT = zeros( 1, length(xT) );                    % r'

MT = zeros( 1, length(xT) );
for i = 1:length( xT )
    MT(i) = MFPT( a, b, D, xS, yS, xT(i), yT(i), type );
end

figure, 
line( xT, MT ) 

P1 = 1;