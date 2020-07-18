clear all

realtype = 'float32';
ir = [0:0] + 1;
%path = '/Users/vs/Mitofraps/MosaicSC/runs/out/40_48_60_240_t1.0_s1.0_k_100_100_10_0_10_10_10_0_10/';
path = '/Users/vs/Mitofraps/MosaicSC/examples/example1/';
nbtmax = [ 4, 2, 10, 6 ];
for q = ir
    fid = fopen( [ path, 'scs_', num2str(q-1) ], 'r' ); 
        fseek( fid, -8, 'eof' );   
        NSTEPS(q) = fread( fid, 1,'uint64' ) + 1;
        fseek( fid, 0, 'bof' );   
        L(:,q) = fread( fid, 2, 'uint64' );  
        for iit = 1:NSTEPS(q)
            it(iit,q) = fread( fid, 1, 'uint64' );                      
            nscs(iit,q) = fread( fid, 1, 'uint64' );  
            for isc = 1:nscs(iit,q)
                indSC(isc,iit,q) = fread( fid, 1, 'uint64' ); 
                for ict = 1:4
                    nc(ict,isc,iit,q) = fread( fid, 1, 'uint64' );
                    for ic = 1:nc(ict,isc,iit,q)
                        cind(ic,ict,isc,iit,q) = fread( fid, 1, 'uint64' );
                        type(ic,ict,isc,iit,q) = fread( fid, 1, 'uint64' );
                        ornt(ic,ict,isc,iit,q) = fread( fid, 1, 'uint64' );
                        pos(:,ic,ict,isc,iit,q) = fread( fid, 2, 'uint64' );
                        enrg(ic,ict,isc,iit,q) = fread( fid, 1, realtype );
                        res = fread( fid, nbtmax( type(ic,ict,isc,iit,q) ), 'int32' );
                        conn(1:nbtmax( type(ic,ict,isc,iit,q) ),ic,ict,isc,iit,q) = res;
                    end
                end
            end
            fread(fid, 1,'uint64');          % NSTEPS
        end
    fclose(fid);
end
% (1)   14a     13a     13b    14b
% (2)   24      23
% (3)   13b     13a     23     34a   34b  :  34b   34a   13a    23   13b
% (4)   14a/24  34b     34a    44    14b

c1_y13a_y13b = zeros( max(NSTEPS), max(ir) );
c1_y14b = zeros( max(NSTEPS), max(ir) );
c3_y13a_y13a_y13b_y13b = zeros( max(NSTEPS), max(ir) );
c3_y13a_y13a_n13b_n13b = zeros( max(NSTEPS), max(ir) );
c3_n13a_n13a_y13b_y13b = zeros( max(NSTEPS), max(ir) );
c3_13aa13bo13aa13b = zeros( max(NSTEPS), max(ir) );
c3_y34a_y34a_y34b_y34b = zeros( max(NSTEPS), max(ir) );
c3_4one_side = zeros( max(NSTEPS), max(ir) );
for q = ir
    for iit = 1:NSTEPS(q)
        for isc = 1:nscs(iit,q)
            for ic = 1:nc(1,isc,iit,q)
                if  conn(2,ic,1,isc,iit,q) && conn(3,ic,1,isc,iit,q), c1_y13a_y13b(iit,q) = c1_y13a_y13b(iit,q) + 1; end
                if  conn(4,ic,1,isc,iit,q), c1_y14b(iit,q) = c1_y14b(iit,q) + 1; end
            end
            for ic = 1:nc(3,isc,iit,q)
                if  conn(1,ic,3,isc,iit,q) &&  conn(2,ic,3,isc,iit,q) &&  conn(8,ic,3,isc,iit,q) &&  conn(10,ic,3,isc,iit,q), c3_y13a_y13a_y13b_y13b(iit,q) = c3_y13a_y13a_y13b_y13b(iit,q) + 1; end
                if ~conn(1,ic,3,isc,iit,q) &&  conn(2,ic,3,isc,iit,q) &&  conn(8,ic,3,isc,iit,q) && ~conn(10,ic,3,isc,iit,q), c3_y13a_y13a_n13b_n13b(iit,q) = c3_y13a_y13a_n13b_n13b(iit,q) + 1; end
                if  conn(1,ic,3,isc,iit,q) && ~conn(2,ic,3,isc,iit,q) && ~conn(8,ic,3,isc,iit,q) &&  conn(10,ic,3,isc,iit,q), c3_n13a_n13a_y13b_y13b(iit,q) = c3_n13a_n13a_y13b_y13b(iit,q) + 1; end
                if ( conn(1,ic,3,isc,iit,q) && conn(8,ic,3,isc,iit,q) ) || ( conn(10,ic,3,isc,iit,q) &&  conn(2,ic,3,isc,iit,q) ), c3_13aa13bo13aa13b(iit,q) = c3_13aa13bo13aa13b(iit,q) + 1; end
                if  conn(4,ic,3,isc,iit,q) &&  conn(5,ic,3,isc,iit,q) &&  conn(6,ic,3,isc,iit,q) &&  conn(7,ic,3,isc,iit,q), c3_y34a_y34a_y34b_y34b(iit,q) = c3_y34a_y34a_y34b_y34b(iit,q) + 1; end
                if ( conn(4,ic,3,isc,iit,q) &&  conn(6,ic,3,isc,iit,q) && ~conn(5,ic,3,isc,iit,q) &&  conn(7,ic,3,isc,iit,q) ) || ...
                   ( conn(5,ic,3,isc,iit,q) &&  conn(7,ic,3,isc,iit,q) && ~conn(4,ic,3,isc,iit,q) &&  conn(6,ic,3,isc,iit,q) )  , c3_4one_side(iit,q) = c3_4one_side(iit,q) + 1; end
            end
        end
    end
end
figure('Name', ['c1_y13a_y13b: ', path], 'Color', 'w'), 
    line( mean(it(:,ir),2), mean(c1_y13a_y13b(:,ir),2), 'Color','g', 'LineStyle','-' , 'Marker','+' ), set(get(gca,'XLabel'),'String','Time, sweeps'), set(get(gca,'YLabel'),'String','Abundance, relative to total')%, set(gca, 'XScale','log', 'YScale','log');
figure('Name', ['c1_y14b: ', path], 'Color', 'w'), 
    line( mean(it(:,ir),2), mean(c1_y14b(:,ir),2), 'Color','g', 'LineStyle','-' , 'Marker','+' ), set(get(gca,'XLabel'),'String','Time, sweeps'), set(get(gca,'YLabel'),'String','Abundance, relative to total')%, set(gca, 'XScale','log', 'YScale','log');
figure('Name', ['c3_y13a_y13a_y13b_y13b: ', path], 'Color', 'w'), 
    line( mean(it(:,ir),2), mean(c3_y13a_y13a_y13b_y13b(:,ir),2), 'Color','g', 'LineStyle','-' , 'Marker','+' ), set(get(gca,'XLabel'),'String','Time, sweeps'), set(get(gca,'YLabel'),'String','Abundance, relative to total')%, set(gca, 'XScale','log', 'YScale','log');
figure('Name', ['c3_y13a_y13a_n13b_n13b: ', path], 'Color', 'w'), 
    line( mean(it(:,ir),2), mean(c3_y13a_y13a_n13b_n13b(:,ir),2), 'Color','g', 'LineStyle','-' , 'Marker','+' ), set(get(gca,'XLabel'),'String','Time, sweeps'), set(get(gca,'YLabel'),'String','Abundance, relative to total')%, set(gca, 'XScale','log', 'YScale','log');
figure('Name', ['c3_n13a_n13a_y13b_y13b: ', path], 'Color', 'w'), 
    line( mean(it(:,ir),2), mean(c3_n13a_n13a_y13b_y13b(:,ir),2), 'Color','g', 'LineStyle','-' , 'Marker','+' ), set(get(gca,'XLabel'),'String','Time, sweeps'), set(get(gca,'YLabel'),'String','Abundance, relative to total')%, set(gca, 'XScale','log', 'YScale','log');
figure('Name', ['c3_13aa13bo13aa13b: ', path], 'Color', 'w'), 
    line( mean(it(:,ir),2), mean(c3_13aa13bo13aa13b(:,ir),2), 'Color','g', 'LineStyle','-' , 'Marker','+' ), set(get(gca,'XLabel'),'String','Time, sweeps'), set(get(gca,'YLabel'),'String','Abundance, relative to total')%, set(gca, 'XScale','log', 'YScale','log');
figure('Name', ['c3_1_and_1: ', path], 'Color', 'w'), 
    line( mean(it(:,ir),2), mean(c3_y13a_y13a_n13b_n13b(:,ir)+c3_n13a_n13a_y13b_y13b(:,ir)+c3_13aa13bo13aa13b(:,ir),2), 'Color','g', 'LineStyle','-' , 'Marker','+' ), set(get(gca,'XLabel'),'String','Time, sweeps'), set(get(gca,'YLabel'),'String','Abundance, relative to total')%, set(gca, 'XScale','log', 'YScale','log');
figure('Name', ['c3_y34a_y34a_y34b_y34b: ', path], 'Color', 'w'), 
    line( mean(it(:,ir),2), mean(c3_y34a_y34a_y34b_y34b(:,ir),2), 'Color','g', 'LineStyle','-' , 'Marker','+' ), set(get(gca,'XLabel'),'String','Time, sweeps'), set(get(gca,'YLabel'),'String','Abundance, relative to total')%, set(gca, 'XScale','log', 'YScale','log');
figure('Name', ['c3_4one_side: ', path], 'Color', 'w'), 
    line( mean(it(:,ir),2), mean(c3_4one_side(:,ir),2), 'Color','g', 'LineStyle','-' , 'Marker','+' ), set(get(gca,'XLabel'),'String','Time, sweeps'), set(get(gca,'YLabel'),'String','Abundance, relative to total')%, set(gca, 'XScale','log', 'YScale','log');


figure('Name', ['nscs: ', path], 'Color', 'w'), 
    line( mean(it,2), mean(nscs,2), 'LineStyle','-' , 'Marker','+' ), set(get(gca,'XLabel'),'String','Time, sweeps'), set(get(gca,'YLabel'),'String','nscs')%, set(gca, 'XScale','log', 'YScale','log');

iteq = 1;
itlast = 300;

n1000 = zeros( max(NSTEPS), max(ir) );
n0100 = zeros( max(NSTEPS), max(ir) );
n0010 = zeros( max(NSTEPS), max(ir) );
n0001 = zeros( max(NSTEPS), max(ir) );
n0002 = zeros( max(NSTEPS), max(ir) );
n1010 = zeros( max(NSTEPS), max(ir) );
n1001 = zeros( max(NSTEPS), max(ir) );
n1020 = zeros( max(NSTEPS), max(ir) );
n2010 = zeros( max(NSTEPS), max(ir) );
n2020 = zeros( max(NSTEPS), max(ir) );
n2011 = zeros( max(NSTEPS), max(ir) );
n2012 = zeros( max(NSTEPS), max(ir) );

n1011 = zeros( max(NSTEPS), max(ir) );      % resp with 1c4
n1012 = zeros( max(NSTEPS), max(ir) );      % resp with 2c4
n1013 = zeros( max(NSTEPS), max(ir) );      % resp with 3c4

n2022 = zeros( max(NSTEPS), max(ir) );      % 2resp with 2c4
n2023 = zeros( max(NSTEPS), max(ir) );      % 2resp with 3c4
n2024 = zeros( max(NSTEPS), max(ir) );      % 2resp with 4c4

n4042 = zeros( max(NSTEPS), max(ir) );      % 4resp with 2c4
n4043 = zeros( max(NSTEPS), max(ir) );      % 4resp with 3c4
n4044 = zeros( max(NSTEPS), max(ir) );      % 4resp with 4c4
n4045 = zeros( max(NSTEPS), max(ir) );      % 4resp with 5c4
n4046 = zeros( max(NSTEPS), max(ir) );      % 4resp with 6c4

n0011 = zeros( max(NSTEPS), max(ir) );
n0111 = zeros( max(NSTEPS), max(ir) );
n0211 = zeros( max(NSTEPS), max(ir) );
n0311 = zeros( max(NSTEPS), max(ir) );

n0012 = zeros( max(NSTEPS), max(ir) );
n0112 = zeros( max(NSTEPS), max(ir) );
n0212 = zeros( max(NSTEPS), max(ir) );
n0312 = zeros( max(NSTEPS), max(ir) );
n0412 = zeros( max(NSTEPS), max(ir) );

n0013 = zeros( max(NSTEPS), max(ir) );
n0113 = zeros( max(NSTEPS), max(ir) );
n0213 = zeros( max(NSTEPS), max(ir) );
n0313 = zeros( max(NSTEPS), max(ir) );
n0413 = zeros( max(NSTEPS), max(ir) );

n0014 = zeros( max(NSTEPS), max(ir) );
n0114 = zeros( max(NSTEPS), max(ir) );
n0214 = zeros( max(NSTEPS), max(ir) );
n0314 = zeros( max(NSTEPS), max(ir) );
n0414 = zeros( max(NSTEPS), max(ir) );
n0514 = zeros( max(NSTEPS), max(ir) );

n0022 = zeros( max(NSTEPS), max(ir) );
n0122 = zeros( max(NSTEPS), max(ir) );
n0222 = zeros( max(NSTEPS), max(ir) );
n0322 = zeros( max(NSTEPS), max(ir) );
n0422 = zeros( max(NSTEPS), max(ir) );
n0522 = zeros( max(NSTEPS), max(ir) );
n0622 = zeros( max(NSTEPS), max(ir) );

n0023 = zeros( max(NSTEPS), max(ir) );
n0123 = zeros( max(NSTEPS), max(ir) );
n0223 = zeros( max(NSTEPS), max(ir) );
n0323 = zeros( max(NSTEPS), max(ir) );
n0423 = zeros( max(NSTEPS), max(ir) );
n0523 = zeros( max(NSTEPS), max(ir) );
n0623 = zeros( max(NSTEPS), max(ir) );

n0024 = zeros( max(NSTEPS), max(ir) );
n0124 = zeros( max(NSTEPS), max(ir) );
n0224 = zeros( max(NSTEPS), max(ir) );
n0324 = zeros( max(NSTEPS), max(ir) );
n0424 = zeros( max(NSTEPS), max(ir) );
n0524 = zeros( max(NSTEPS), max(ir) );
n0624 = zeros( max(NSTEPS), max(ir) );

n0025 = zeros( max(NSTEPS), max(ir) );
n0125 = zeros( max(NSTEPS), max(ir) );
n0225 = zeros( max(NSTEPS), max(ir) );
n0325 = zeros( max(NSTEPS), max(ir) );
n0425 = zeros( max(NSTEPS), max(ir) );
n0525 = zeros( max(NSTEPS), max(ir) );
n0625 = zeros( max(NSTEPS), max(ir) );

n0026 = zeros( max(NSTEPS), max(ir) );
n0126 = zeros( max(NSTEPS), max(ir) );
n0226 = zeros( max(NSTEPS), max(ir) );
n0326 = zeros( max(NSTEPS), max(ir) );
n0426 = zeros( max(NSTEPS), max(ir) );
n0526 = zeros( max(NSTEPS), max(ir) );
n0626 = zeros( max(NSTEPS), max(ir) );


for q = ir
    for iit = iteq : itlast
        
        for isc = 1:nscs(iit,q)
            if nc(1,isc,iit,q) == 1 && nc(2,isc,iit,q) == 0 && nc(3,isc,iit,q) == 0 && nc(4,isc,iit,q) == 0, n1000(iit,q) = n1000(iit,q) + 1; end
            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 1 && nc(3,isc,iit,q) == 0 && nc(4,isc,iit,q) == 0, n0100(iit,q) = n0100(iit,q) + 1; end
            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 0 && nc(3,isc,iit,q) == 1 && nc(4,isc,iit,q) == 0, n0010(iit,q) = n0010(iit,q) + 1; end
            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 0 && nc(3,isc,iit,q) == 0 && nc(4,isc,iit,q) == 1, n0001(iit,q) = n0001(iit,q) + 1; end
            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 0 && nc(3,isc,iit,q) == 0 && nc(4,isc,iit,q) == 2, n0002(iit,q) = n0002(iit,q) + 1; end
            
            if nc(1,isc,iit,q) == 1 && nc(2,isc,iit,q) == 0 && nc(3,isc,iit,q) == 1 && nc(4,isc,iit,q) == 0, n1010(iit,q) = n1010(iit,q) + 1; end
            if nc(1,isc,iit,q) == 1 && nc(2,isc,iit,q) == 0 && nc(3,isc,iit,q) == 0 && nc(4,isc,iit,q) == 1, n1001(iit,q) = n1001(iit,q) + 1; end
            if nc(1,isc,iit,q) == 1 && nc(2,isc,iit,q) == 0 && nc(3,isc,iit,q) == 2 && nc(4,isc,iit,q) == 0, n1020(iit,q) = n1020(iit,q) + 1; end
            if nc(1,isc,iit,q) == 2 && nc(2,isc,iit,q) == 0 && nc(3,isc,iit,q) == 1 && nc(4,isc,iit,q) == 0, n2010(iit,q) = n2010(iit,q) + 1; end
            if nc(1,isc,iit,q) == 2 && nc(2,isc,iit,q) == 0 && nc(3,isc,iit,q) == 2 && nc(4,isc,iit,q) == 0, n2020(iit,q) = n2020(iit,q) + 1; end 
            
            if nc(1,isc,iit,q) == 2 && nc(2,isc,iit,q) == 0 && nc(3,isc,iit,q) == 1 && nc(4,isc,iit,q) == 1, n2011(iit,q) = n2011(iit,q) + 1; end   % 
            if nc(1,isc,iit,q) == 2 && nc(2,isc,iit,q) == 0 && nc(3,isc,iit,q) == 1 && nc(4,isc,iit,q) == 2, n2012(iit,q) = n2012(iit,q) + 1; end   % 

            if nc(1,isc,iit,q) == 1 && nc(2,isc,iit,q) == 0 && nc(3,isc,iit,q) == 1 && nc(4,isc,iit,q) == 1, n1011(iit,q) = n1011(iit,q) + 1; end   % resp with 1c4
            if nc(1,isc,iit,q) == 1 && nc(2,isc,iit,q) == 0 && nc(3,isc,iit,q) == 1 && nc(4,isc,iit,q) == 2, n1012(iit,q) = n1012(iit,q) + 1; end   % resp with 2c4
            if nc(1,isc,iit,q) == 1 && nc(2,isc,iit,q) == 0 && nc(3,isc,iit,q) == 1 && nc(4,isc,iit,q) == 3, n1013(iit,q) = n1013(iit,q) + 1; end   % resp with 3c4
            
            if nc(1,isc,iit,q) == 2 && nc(2,isc,iit,q) == 0 && nc(3,isc,iit,q) == 2 && nc(4,isc,iit,q) == 2, n2022(iit,q) = n2022(iit,q) + 1; end   % 2resp with 2c4
            if nc(1,isc,iit,q) == 2 && nc(2,isc,iit,q) == 0 && nc(3,isc,iit,q) == 2 && nc(4,isc,iit,q) == 3, n2023(iit,q) = n2023(iit,q) + 1; end   % 2resp with 3c4
            if nc(1,isc,iit,q) == 2 && nc(2,isc,iit,q) == 0 && nc(3,isc,iit,q) == 2 && nc(4,isc,iit,q) == 4, n2024(iit,q) = n2024(iit,q) + 1; end   % 2resp with 4c4
            
            if nc(1,isc,iit,q) == 4 && nc(2,isc,iit,q) == 0 && nc(3,isc,iit,q) == 4 && nc(4,isc,iit,q) == 2, n4042(iit,q) = n4042(iit,q) + 1; end   % 4resp with 2c4
            if nc(1,isc,iit,q) == 4 && nc(2,isc,iit,q) == 0 && nc(3,isc,iit,q) == 4 && nc(4,isc,iit,q) == 3, n4043(iit,q) = n4043(iit,q) + 1; end   % 4resp with 2c4
            if nc(1,isc,iit,q) == 4 && nc(2,isc,iit,q) == 0 && nc(3,isc,iit,q) == 4 && nc(4,isc,iit,q) == 4, n4044(iit,q) = n4044(iit,q) + 1; end   % 4resp with 4c4
            if nc(1,isc,iit,q) == 4 && nc(2,isc,iit,q) == 0 && nc(3,isc,iit,q) == 4 && nc(4,isc,iit,q) == 5, n4045(iit,q) = n4045(iit,q) + 1; end   % 4resp with 2c4
            if nc(1,isc,iit,q) == 4 && nc(2,isc,iit,q) == 0 && nc(3,isc,iit,q) == 4 && nc(4,isc,iit,q) == 6, n4046(iit,q) = n4046(iit,q) + 1; end   % 4resp with 6c4
            
            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 0 && nc(3,isc,iit,q) == 1 && nc(4,isc,iit,q) == 1, n0011(iit,q) = n0011(iit,q) + 1; end
            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 1 && nc(3,isc,iit,q) == 1 && nc(4,isc,iit,q) == 1, n0111(iit,q) = n0111(iit,q) + 1; end
            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 2 && nc(3,isc,iit,q) == 1 && nc(4,isc,iit,q) == 1, n0211(iit,q) = n0211(iit,q) + 1; end
            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 3 && nc(3,isc,iit,q) == 1 && nc(4,isc,iit,q) == 1, n0311(iit,q) = n0311(iit,q) + 1; end
            
            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 0 && nc(3,isc,iit,q) == 1 && nc(4,isc,iit,q) == 2, n0012(iit,q) = n0012(iit,q) + 1; end
            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 1 && nc(3,isc,iit,q) == 1 && nc(4,isc,iit,q) == 2, n0112(iit,q) = n0112(iit,q) + 1; end
            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 2 && nc(3,isc,iit,q) == 1 && nc(4,isc,iit,q) == 2, n0212(iit,q) = n0212(iit,q) + 1; end
            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 3 && nc(3,isc,iit,q) == 1 && nc(4,isc,iit,q) == 2, n0312(iit,q) = n0312(iit,q) + 1; end
            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 4 && nc(3,isc,iit,q) == 1 && nc(4,isc,iit,q) == 2, n0412(iit,q) = n0412(iit,q) + 1; end
            
            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 0 && nc(3,isc,iit,q) == 1 && nc(4,isc,iit,q) == 3, n0013(iit,q) = n0013(iit,q) + 1; end
            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 1 && nc(3,isc,iit,q) == 1 && nc(4,isc,iit,q) == 3, n0113(iit,q) = n0113(iit,q) + 1; end
            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 2 && nc(3,isc,iit,q) == 1 && nc(4,isc,iit,q) == 3, n0213(iit,q) = n0213(iit,q) + 1; end
            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 3 && nc(3,isc,iit,q) == 1 && nc(4,isc,iit,q) == 3, n0313(iit,q) = n0313(iit,q) + 1; end
            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 4 && nc(3,isc,iit,q) == 1 && nc(4,isc,iit,q) == 3, n0413(iit,q) = n0413(iit,q) + 1; end
            
            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 0 && nc(3,isc,iit,q) == 1 && nc(4,isc,iit,q) == 4, n0014(iit,q) = n0014(iit,q) + 1; end
            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 1 && nc(3,isc,iit,q) == 1 && nc(4,isc,iit,q) == 4, n0114(iit,q) = n0114(iit,q) + 1; end
            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 2 && nc(3,isc,iit,q) == 1 && nc(4,isc,iit,q) == 4, n0214(iit,q) = n0214(iit,q) + 1; end
            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 3 && nc(3,isc,iit,q) == 1 && nc(4,isc,iit,q) == 4, n0314(iit,q) = n0314(iit,q) + 1; end
            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 4 && nc(3,isc,iit,q) == 1 && nc(4,isc,iit,q) == 4, n0414(iit,q) = n0414(iit,q) + 1; end
            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 5 && nc(3,isc,iit,q) == 1 && nc(4,isc,iit,q) == 4, n0514(iit,q) = n0514(iit,q) + 1; end

            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 0 && nc(3,isc,iit,q) == 2 && nc(4,isc,iit,q) == 2, n0022(iit,q) = n0022(iit,q) + 1; end
            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 1 && nc(3,isc,iit,q) == 2 && nc(4,isc,iit,q) == 2, n0122(iit,q) = n0122(iit,q) + 1; end
            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 2 && nc(3,isc,iit,q) == 2 && nc(4,isc,iit,q) == 2, n0222(iit,q) = n0322(iit,q) + 1; end
            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 3 && nc(3,isc,iit,q) == 2 && nc(4,isc,iit,q) == 2, n0322(iit,q) = n0422(iit,q) + 1; end
            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 4 && nc(3,isc,iit,q) == 2 && nc(4,isc,iit,q) == 2, n0422(iit,q) = n0522(iit,q) + 1; end
            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 5 && nc(3,isc,iit,q) == 2 && nc(4,isc,iit,q) == 2, n0522(iit,q) = n0622(iit,q) + 1; end

            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 0 && nc(3,isc,iit,q) == 2 && nc(4,isc,iit,q) == 3, n0023(iit,q) = n0023(iit,q) + 1; end
            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 1 && nc(3,isc,iit,q) == 2 && nc(4,isc,iit,q) == 3, n0123(iit,q) = n0123(iit,q) + 1; end
            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 2 && nc(3,isc,iit,q) == 2 && nc(4,isc,iit,q) == 3, n0223(iit,q) = n0223(iit,q) + 1; end
            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 3 && nc(3,isc,iit,q) == 2 && nc(4,isc,iit,q) == 3, n0323(iit,q) = n0323(iit,q) + 1; end
            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 4 && nc(3,isc,iit,q) == 2 && nc(4,isc,iit,q) == 3, n0423(iit,q) = n0423(iit,q) + 1; end
            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 5 && nc(3,isc,iit,q) == 2 && nc(4,isc,iit,q) == 3, n0523(iit,q) = n0523(iit,q) + 1; end
            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 6 && nc(3,isc,iit,q) == 2 && nc(4,isc,iit,q) == 3, n0623(iit,q) = n0623(iit,q) + 1; end

            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 0 && nc(3,isc,iit,q) == 2 && nc(4,isc,iit,q) == 4, n0024(iit,q) = n0024(iit,q) + 1; end
            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 1 && nc(3,isc,iit,q) == 2 && nc(4,isc,iit,q) == 4, n0124(iit,q) = n0124(iit,q) + 1; end
            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 2 && nc(3,isc,iit,q) == 2 && nc(4,isc,iit,q) == 4, n0224(iit,q) = n0224(iit,q) + 1; end
            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 3 && nc(3,isc,iit,q) == 2 && nc(4,isc,iit,q) == 4, n0324(iit,q) = n0324(iit,q) + 1; end
            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 4 && nc(3,isc,iit,q) == 2 && nc(4,isc,iit,q) == 4, n0424(iit,q) = n0424(iit,q) + 1; end
            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 5 && nc(3,isc,iit,q) == 2 && nc(4,isc,iit,q) == 4, n0524(iit,q) = n0524(iit,q) + 1; end
            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 6 && nc(3,isc,iit,q) == 2 && nc(4,isc,iit,q) == 4, n0624(iit,q) = n0624(iit,q) + 1; end

            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 0 && nc(3,isc,iit,q) == 2 && nc(4,isc,iit,q) == 5, n0025(iit,q) = n0025(iit,q) + 1; end
            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 1 && nc(3,isc,iit,q) == 2 && nc(4,isc,iit,q) == 5, n0125(iit,q) = n0125(iit,q) + 1; end
            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 2 && nc(3,isc,iit,q) == 2 && nc(4,isc,iit,q) == 5, n0225(iit,q) = n0225(iit,q) + 1; end
            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 3 && nc(3,isc,iit,q) == 2 && nc(4,isc,iit,q) == 5, n0325(iit,q) = n0325(iit,q) + 1; end
            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 4 && nc(3,isc,iit,q) == 2 && nc(4,isc,iit,q) == 5, n0425(iit,q) = n0425(iit,q) + 1; end
            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 5 && nc(3,isc,iit,q) == 2 && nc(4,isc,iit,q) == 5, n0525(iit,q) = n0525(iit,q) + 1; end
            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 6 && nc(3,isc,iit,q) == 2 && nc(4,isc,iit,q) == 5, n0625(iit,q) = n0625(iit,q) + 1; end

            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 0 && nc(3,isc,iit,q) == 2 && nc(4,isc,iit,q) == 6, n0026(iit,q) = n0026(iit,q) + 1; end
            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 1 && nc(3,isc,iit,q) == 2 && nc(4,isc,iit,q) == 6, n0126(iit,q) = n0126(iit,q) + 1; end
            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 2 && nc(3,isc,iit,q) == 2 && nc(4,isc,iit,q) == 6, n0226(iit,q) = n0226(iit,q) + 1; end
            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 3 && nc(3,isc,iit,q) == 2 && nc(4,isc,iit,q) == 6, n0326(iit,q) = n0326(iit,q) + 1; end
            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 4 && nc(3,isc,iit,q) == 2 && nc(4,isc,iit,q) == 6, n0426(iit,q) = n0426(iit,q) + 1; end
            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 5 && nc(3,isc,iit,q) == 2 && nc(4,isc,iit,q) == 6, n0526(iit,q) = n0526(iit,q) + 1; end
            if nc(1,isc,iit,q) == 0 && nc(2,isc,iit,q) == 6 && nc(3,isc,iit,q) == 2 && nc(4,isc,iit,q) == 6, n0626(iit,q) = n0626(iit,q) + 1; end
        end
    end
end


    
    
    
%  - 14b 34a 34b ; 14b 14a 13a 13b
%  + 44  34a 34b ;     14a 13a 13b
    
    
    
    
    
