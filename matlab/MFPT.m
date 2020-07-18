function [ T, h1s ] = MFPT( a, b, D, x1, y1, x2, y2, type )

R = sqrt( ( x1 - x2 ).^2 + ( y1 - y2 ).^2 ); 

if strcmp( type, 'general' )
    V = 4*pi*b*b*b/3;
    T = V./D * ( G0( a, 3 ) + psGreen( b, x1, y1, x2, y2, type ) - G0( R, 3 ) - H( b, x2, y2, x1, y1, type ) );
elseif strcmp( type, 'disk' )
    A = pi*b*b;
%    T = A./(2*pi*D) * log( R./a ) *D/A;
%    T = A./D * ( G0( a, 2 ) + H( b, x2, y2, x2, y2, type ) - G0( 0, 2 ) - H( b, x2, y2, x1, y1, type ) )  *D/A;
    g0 = G0( a, 2 );
    hs = H( b, x2, y2, x2+a, y2+a, type ) - G0( a, 2 );
    h = H( b, x2, y2, x1, y1, type );
    T = A./D * ( g0 + hs - h )  *D/A;
    h1s = H( b, x2, y2, x1, y1, type );
    
elseif strcmp( type, 'sphere' )
    V = 4*pi*b*b*b/3;
%    T = V./(4*pi*D) * ( 1./a - 1./R ) * D/V;
    T = V./D * ( G0( a, 3 ) + psGreen( b, x2, y2, x2, y2, type ) - G0( 0, 3 ) - H( b, x2, y2, x1, y1, type ) );
end
    
function res = H( b, x1, y1, x2, y2, type )
% pseudo-Green function  H(r|r') = H(r1|r2)

    r1n2 = x1^2 + y1^2;
    r2n2 = x2.^2 + y2^2; 
    r2n = sqrt( r2n2 );

    x2t = x1 * b*b./r2n;      y2t = y1 * b*b./r2n;             % r' tilda

    R = sqrt( ( x1 - x2 ).^2 + ( y1 - y2 ).^2 ); 
    Rt = sqrt( ( x1 - x2t ).^2 + ( y1 - y2t ).^2 ); 

    if strcmp( type, 'disk' )
%        res = ( log(b/R) + log(b/Rt) + log(b/r2n) + ( r1n2 + r2n2 ) / ( 2*b^2) ) / ( 2*pi );     
        res = ( log(b*b*b/(R*Rt*r2n)) + ( r1n2 + r2n2 ) / ( 2*b^2) ) / ( 2*pi );     
    else
    end

end
function res = HStar( b, x1, y1, x2, y2, type )
% pseudo-Green function  H(r|r') = H(r1|r2)

    r1n2 = x1^2 + y1^2;
    r2n2 = x2.^2 + y2^2; 
    r2n = sqrt( r2n2 );

    x2t = x1 * b*b./r2n;      y2t = y1 * b*b./r2n;             % r' tilda

    R = sqrt( ( x1 - x2 ).^2 + ( y1 - y2 ).^2 ); 
    Rt = sqrt( ( x1 - x2t ).^2 + ( y1 - y2t ).^2 ); 

    if strcmp( type, 'disk' )
%        res = ( log(b/R) + log(b/Rt) + log(b/r2n) + ( r1n2 + r2n2 ) / ( 2*b^2) ) / ( 2*pi );     
        res = ( log(b*b*b/(R*Rt*r2n)) - log(R) + ( r1n2 + r2n2 ) / ( 2*b^2) ) / ( 2*pi );     
    else
    end

end

function res = G0( r, dim )

    if dim == 2
        res = log( r ) / ( 2*pi );         % 2 dim
    elseif dim == 3
        res = 1 ./ ( 4*pi * r );           % 3 dim
    end

end

end
