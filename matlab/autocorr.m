function act = autocorr( v, t )

l = length( t );

act = zeros( 1, l-1 );

m = mean(v).^2;
for it = 1 : ( l - 1 )
    
    fac = 1 ./ ( t(l) - t(it) );
    sum1 = 0;
    sum2 = 0;
    sum3 = 0;
    for j = 1 : ( l - it )
        sum1 = sum1 + v(j) .* v(j+it);
        sum2 = sum2 + v(j);
        sum3 = sum3 + v(j+it);
    end
    act(it) = sum1 - m;
%    act(it) = fac * ( sum1 - fac * sum2 .* sum3 );
end

