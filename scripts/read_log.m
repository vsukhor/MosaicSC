clear all

set( 0,'DefaultAxesFontSize',16 );
set( 0,'DefaultTextFontSize',16 );
%set( 0,'DefaultFigureColor','w' );
set( 0,'DefaultFigurePosition',[ 200 50 1200 1200 ] );

inds = (0:1:3) + 1;
%path = '/Users/vs/Mitofraps/MosaicSC/runs/';
path = '/Users/vs/Mitofraps/MosaicSC/examples/example1/';
%path = '/Users/vs/Mitofraps/MosaicSC/runs/out/40_00_60_240_t1.0_s1.0_k_100_100_10_0_10_10_10_0_10/';
%path = '/Users/vs/Mitofraps/MosaicSC/runs/out/c4/00_00_00_150_t1.0_s1.0_k_10/';

minv = Inf;
linelen = [ 15, 11 ]; 
for i = inds
    fn = [ 'log_', num2str(i-1) ];
	filename = [ path, fn, '.txt'];
	fid = fopen(filename,'r');
    	for j=1:12, fgetl(fid); end
        d = 1;
        while 1
            ln0 = fgetl( fid );
            if ln0 > 0  
                tab0 = sscanf( ln0,'%d %*2c %*8c %d %*2c %d %d' );
                if ~isempty( tab0 )
                    table0(:,d) = tab0; 
                end
%                itr(d) = ss;
                ln1 = fgetl( fid );
                tab1 = sscanf( ln1, '%*6c %g %g %*6c %g %g %*3c %g %*3c %g %g %g %g %g %*5c %g' );
                if ~isempty( tab1 )
                    table1(:,d) = tab1; 
                end
                ln2 = fgetl( fid );
                tab2 = sscanf( ln2, '%*4c %d %*7c %g %g %g %g %g %*7c %g %g %g %g %g' );
                if ~isempty( tab2 )
                    table2(:,d) = tab2; 
                end
                ln3 = fgetl( fid );
                if length( ln3 ) == 326
                    tab3 = sscanf( ln3, '%*6c %g %g %g %g %*4c %g %g %g %g %*4c %g %g %*4c %g %g %g %g %g %g %g %g %*4c %g %g %g %g %g' );
                elseif length( ln3 ) == 365
                    tab3 = sscanf( ln3, '%*6c %g %g %g %g %*4c %g %g %g %g %*4c %g %g %*4c %g %g %g %g %g %g %g %g %g %g %*4c %g %g %g %g %g %g' );
                end
                if ~isempty( tab3 )
                    table3(:,d) = tab3; 
                end
                d = d + 1;
            else break;
            end
        end
	fclose(fid);
%return
    [v1,v2] = size(table0);
    if minv > v2, minv = v2; end
    
	it(1:v2,i) = table0(1,1:v2);
    L(1:2,1:v2,i) = table0(3:4,1:v2);
    
	eOld(1:2,1:v2,i) = table1(1:2,1:v2);
	eNew(1:2,1:v2,i) = table1(3:4,1:v2);
    dE(1:v2,i) = table1(5,1:v2);
    cE(1:5,1:v2,i) = table1(6:10,1:v2);
    eTot(1:v2,i) = table1(11,1:v2);

	nSC(1:v2,i) = table2(1,1:v2);
    scMasM(1:5,1:v2,i) = table2(2:6,1:v2);
    scMasV(1:5,1:v2,i) = table2(7:11,1:v2);
    
    conCT(1:4,1:v2,i) = table3(1:4,1:v2);
    if length( ln3 ) == 326
    conNbT1(1:4,1:v2,i) = table3(5:8,1:v2);
    conNbT2(1:2,1:v2,i) = table3(9:10,1:v2);
    conNbT3(1:8,1:v2,i) = table3(11:18,1:v2);
    conNbT4(1:5,1:v2,i) = table3(19:23,1:v2);
    elseif length( ln3 ) == 365
    conNbT1(1:4,1:v2,i) = table3(5:8,1:v2);
    conNbT2(1:2,1:v2,i) = table3(9:10,1:v2);
    conNbT3(1:10,1:v2,i) = table3(11:20,1:v2);
    conNbT4(1:6,1:v2,i) = table3(21:26,1:v2);
    end
    clear table0 table1 table2 table3
end
it(:,inds) = it(:,inds) ./ squeeze( L(1,:,inds) .* L(2,:,inds) );
%return;
if 1
	figure('Name', ['nSC: ', path], 'Color', 'w'), line( mean(it(1:minv,inds),2), mean(nSC(1:minv,inds),2) ), set(get(gca,'XLabel'),'String','Time, sweeps'), set(get(gca,'YLabel'),'String','nSC')%, set(gca, 'XScale','log', 'YScale','log');
	figure('Name', ['Mean scMass: ', path], 'Color', 'w'), 
        line( mean(it(1:minv,inds),2), mean(scMasM(1,1:minv,inds),3), 'Color','k' ), set(get(gca,'XLabel'),'String','Time, sweeps'), set(get(gca,'YLabel'),'String','Mean SC mass')%, set(gca, 'XScale','log', 'YScale','log');
        line( mean(it(1:minv,inds),2), mean(scMasM(2,1:minv,inds),3), 'Color','b' ), set(get(gca,'XLabel'),'String','Time, sweeps'), set(get(gca,'YLabel'),'String','Mean SC mass')%, set(gca, 'XScale','log', 'YScale','log');
        line( mean(it(1:minv,inds),2), mean(scMasM(3,1:minv,inds),3), 'Color','y' ), set(get(gca,'XLabel'),'String','Time, sweeps'), set(get(gca,'YLabel'),'String','Mean SC mass')%, set(gca, 'XScale','log', 'YScale','log');
        line( mean(it(1:minv,inds),2), mean(scMasM(4,1:minv,inds),3), 'Color','r' ), set(get(gca,'XLabel'),'String','Time, sweeps'), set(get(gca,'YLabel'),'String','Mean SC mass')%, set(gca, 'XScale','log', 'YScale','log');
        line( mean(it(1:minv,inds),2), mean(scMasM(5,1:minv,inds),3), 'Color','g' ), set(get(gca,'XLabel'),'String','Time, sweeps'), set(get(gca,'YLabel'),'String','Mean SC mass')%, set(gca, 'XScale','log', 'YScale','log');

% (1)   14a     13a     13b   14b
% (2)   24      23
% (3)   13b     13a   23  34a   34b  :  34b   34a   13a   23   13b          <- assymetric 13a and 23
% (4)   14a/24  34b     34a   44      14b

figure('Name', ['conNbT 1: ', path], 'Color', 'w'), 
    line( mean(it(1:minv,inds),2), mean(conNbT1(1,1:minv,inds),3), 'Color','g', 'LineStyle','-' , 'Marker','+' ), set(get(gca,'XLabel'),'String','Time, sweeps'), set(get(gca,'YLabel'),'String','Abundance, relative to total')%, set(gca, 'XScale','log', 'YScale','log');
    line( mean(it(1:minv,inds),2), mean(conNbT1(2,1:minv,inds),3), 'Color','r', 'LineStyle','-' , 'Marker','+' ), set(get(gca,'XLabel'),'String','Time, sweeps'), set(get(gca,'YLabel'),'String','eTAbundance, relative to totalot')%, set(gca, 'XScale','log', 'YScale','log');
    line( mean(it(1:minv,inds),2), mean(conNbT1(3,1:minv,inds),3), 'Color','r', 'LineStyle','--', 'Marker','o' ), set(get(gca,'XLabel'),'String','Time, sweeps'), set(get(gca,'YLabel'),'String','Abundance, relative to total')%, set(gca, 'XScale','log', 'YScale','log');
    line( mean(it(1:minv,inds),2), mean(conNbT1(4,1:minv,inds),3), 'Color','g', 'LineStyle','--', 'Marker','o' ), set(get(gca,'XLabel'),'String','Time, sweeps'), set(get(gca,'YLabel'),'String','Abundance, relative to total')%, set(gca, 'XScale','log', 'YScale','log');
    line( mean(it(1:minv,inds),2), mean(conCT(1,1:minv,inds),3),   'Color','k', 'LineStyle',':' ), set(get(gca,'XLabel'),'String','Time, sweeps'), set(get(gca,'YLabel'),'String','Abundance, relative to total')%, set(gca, 'XScale','log', 'YScale','log');
figure('Name', ['conNbT 2: ', path], 'Color', 'w'), 
    line( mean(it(1:minv,inds),2), mean(conNbT2(1,1:minv,inds),3), 'Color','g', 'LineStyle','-' , 'Marker','+' ), set(get(gca,'XLabel'),'String','Time, sweeps'), set(get(gca,'YLabel'),'String','Abundance, relative to total')%, set(gca, 'XScale','log', 'YScale','log');
    line( mean(it(1:minv,inds),2), mean(conNbT2(2,1:minv,inds),3), 'Color','r', 'LineStyle','-' , 'Marker','+' ), set(get(gca,'XLabel'),'String','Time, sweeps'), set(get(gca,'YLabel'),'String','eTAbundance, relative to totalot')%, set(gca, 'XScale','log', 'YScale','log');
    line( mean(it(1:minv,inds),2), mean(conCT(2,1:minv,inds),3),   'Color','k', 'LineStyle',':' ), set(get(gca,'XLabel'),'String','Time, sweeps'), set(get(gca,'YLabel'),'String','Abundance, relative to total')%, set(gca, 'XScale','log', 'YScale','log');
figure('Name', ['conNbT 3: ', path], 'Color', 'w'), 
    if length( ln3 ) == 326
    line( mean(it(1:minv,inds),2), mean((conNbT3(1,1:minv,inds)+conNbT3(8,1:minv,inds))/2,3), 'Color','b', 'LineStyle','--', 'Marker','o' ), set(get(gca,'XLabel'),'String','Time, sweeps'), set(get(gca,'YLabel'),'String','Abundance, relative to total')%, set(gca, 'XScale','log', 'YScale','log');
    line( mean(it(1:minv,inds),2), mean((conNbT3(2,1:minv,inds)+conNbT3(7,1:minv,inds))/2,3), 'Color','b', 'LineStyle','-' , 'Marker','+' ), set(get(gca,'XLabel'),'String','Time, sweeps'), set(get(gca,'YLabel'),'String','Abundance, relative to total')%, set(gca, 'XScale','log', 'YScale','log');
    line( mean(it(1:minv,inds),2), mean((conNbT3(3,1:minv,inds)+conNbT3(6,1:minv,inds))/2,3), 'Color','g', 'LineStyle','-' , 'Marker','+'), set(get(gca,'XLabel'),'String','Time, sweeps'), set(get(gca,'YLabel'),'String','eTAbundance, relative to totalot')%, set(gca, 'XScale','log', 'YScale','log');
    line( mean(it(1:minv,inds),2), mean((conNbT3(4,1:minv,inds)+conNbT3(5,1:minv,inds))/2,3), 'Color','g', 'LineStyle','--', 'Marker','o' ), set(get(gca,'XLabel'),'String','Time, sweeps'), set(get(gca,'YLabel'),'String','Abundance, relative to total')%, set(gca, 'XScale','log', 'YScale','log');
    elseif length( ln3 ) == 365
    line( mean(it(1:minv,inds),2), mean((conNbT3(1,1:minv,inds)+conNbT3(10,1:minv,inds))/2,3), 'Color','b', 'LineStyle','--', 'Marker','o' ), set(get(gca,'XLabel'),'String','Time, sweeps'), set(get(gca,'YLabel'),'String','Abundance, relative to total')%, set(gca, 'XScale','log', 'YScale','log');
    line( mean(it(1:minv,inds),2), mean((conNbT3(2,1:minv,inds)+conNbT3(8,1:minv,inds))/2,3), 'Color','b', 'LineStyle','-' , 'Marker','+' ), set(get(gca,'XLabel'),'String','Time, sweeps'), set(get(gca,'YLabel'),'String','Abundance, relative to total')%, set(gca, 'XScale','log', 'YScale','log');
    line( mean(it(1:minv,inds),2), mean((conNbT3(3,1:minv,inds)+conNbT3(9,1:minv,inds))/2,3), 'Color','y', 'LineStyle','-' , 'Marker','+' ), set(get(gca,'XLabel'),'String','Time, sweeps'), set(get(gca,'YLabel'),'String','Abundance, relative to total')%, set(gca, 'XScale','log', 'YScale','log');
    line( mean(it(1:minv,inds),2), mean((conNbT3(4,1:minv,inds)+conNbT3(7,1:minv,inds))/2,3), 'Color','g', 'LineStyle','-' , 'Marker','+'), set(get(gca,'XLabel'),'String','Time, sweeps'), set(get(gca,'YLabel'),'String','eTAbundance, relative to totalot')%, set(gca, 'XScale','log', 'YScale','log');
    line( mean(it(1:minv,inds),2), mean((conNbT3(5,1:minv,inds)+conNbT3(6,1:minv,inds))/2,3), 'Color','g', 'LineStyle','--', 'Marker','o' ), set(get(gca,'XLabel'),'String','Time, sweeps'), set(get(gca,'YLabel'),'String','Abundance, relative to total')%, set(gca, 'XScale','log', 'YScale','log');
    end
    line( mean(it(1:minv,inds),2), mean(conCT(3,1:minv,inds),3),   'Color','k', 'LineStyle',':' ), set(get(gca,'XLabel'),'String','Time, sweeps'), set(get(gca,'YLabel'),'String','Abundance, relative to total')%, set(gca, 'XScale','log', 'YScale','log');
figure('Name', ['conNbT 4: ', path], 'Color', 'w'), 
    if length( ln3 ) == 326
    line( mean(it(1:minv,inds),2), mean(conNbT4(1,1:minv,inds),3), 'Color','b', 'LineStyle','-' , 'Marker','+' ), set(get(gca,'XLabel'),'String','Time, sweeps'), set(get(gca,'YLabel'),'String','Abundance, relative to total')%, set(gca, 'XScale','log', 'YScale','log');
    line( mean(it(1:minv,inds),2), mean(conNbT4(2,1:minv,inds),3), 'Color','r', 'LineStyle','--', 'Marker','o' ), set(get(gca,'XLabel'),'String','Time, sweeps'), set(get(gca,'YLabel'),'String','eTAbundance, relative to totalot')%, set(gca, 'XScale','log', 'YScale','log');
    line( mean(it(1:minv,inds),2), mean(conNbT4(3,1:minv,inds),3), 'Color','r', 'LineStyle','-' , 'Marker','+' ), set(get(gca,'XLabel'),'String','Time, sweeps'), set(get(gca,'YLabel'),'String','Abundance, relative to total')%, set(gca, 'XScale','log', 'YScale','log');
    line( mean(it(1:minv,inds),2), mean(conNbT4(4,1:minv,inds),3), 'Color','g', 'LineStyle','-' , 'Marker','+'), set(get(gca,'XLabel'),'String','Time, sweeps'), set(get(gca,'YLabel'),'String','Abundance, relative to total')%, set(gca, 'XScale','log', 'YScale','log');
    line( mean(it(1:minv,inds),2), mean(conNbT4(5,1:minv,inds),3), 'Color','b', 'LineStyle','--', 'Marker','o' ), set(get(gca,'XLabel'),'String','Time, sweeps'), set(get(gca,'YLabel'),'String','eTAbundance, relative to totalot')%, set(gca, 'XScale','log', 'YScale','log');
    elseif length( ln3 ) == 365
    line( mean(it(1:minv,inds),2), mean(conNbT4(1,1:minv,inds),3), 'Color','b', 'LineStyle','-' , 'Marker','+' ), set(get(gca,'XLabel'),'String','Time, sweeps'), set(get(gca,'YLabel'),'String','Abundance, relative to total')%, set(gca, 'XScale','log', 'YScale','log');
    line( mean(it(1:minv,inds),2), mean(conNbT4(2,1:minv,inds),3), 'Color','y', 'LineStyle','-' , 'Marker','+' ), set(get(gca,'XLabel'),'String','Time, sweeps'), set(get(gca,'YLabel'),'String','Abundance, relative to total')%, set(gca, 'XScale','log', 'YScale','log');
    line( mean(it(1:minv,inds),2), mean(conNbT4(3,1:minv,inds),3), 'Color','r', 'LineStyle','--', 'Marker','o' ), set(get(gca,'XLabel'),'String','Time, sweeps'), set(get(gca,'YLabel'),'String','eTAbundance, relative to totalot')%, set(gca, 'XScale','log', 'YScale','log');
    line( mean(it(1:minv,inds),2), mean(conNbT4(4,1:minv,inds),3), 'Color','r', 'LineStyle','-' , 'Marker','+' ), set(get(gca,'XLabel'),'String','Time, sweeps'), set(get(gca,'YLabel'),'String','Abundance, relative to total')%, set(gca, 'XScale','log', 'YScale','log');
    line( mean(it(1:minv,inds),2), mean(conNbT4(5,1:minv,inds),3), 'Color','g', 'LineStyle','-' , 'Marker','+'), set(get(gca,'XLabel'),'String','Time, sweeps'), set(get(gca,'YLabel'),'String','Abundance, relative to total')%, set(gca, 'XScale','log', 'YScale','log');
    line( mean(it(1:minv,inds),2), mean(conNbT4(6,1:minv,inds),3), 'Color','b', 'LineStyle','--', 'Marker','o' ), set(get(gca,'XLabel'),'String','Time, sweeps'), set(get(gca,'YLabel'),'String','eTAbundance, relative to totalot')%, set(gca, 'XScale','log', 'YScale','log');
    end
    line( mean(it(1:minv,inds),2), mean(conCT(4,1:minv,inds),3),   'Color','k', 'LineStyle',':' ), set(get(gca,'XLabel'),'String','Time, sweeps'), set(get(gca,'YLabel'),'String','Abundance, relative to total')%, set(gca, 'XScale','log', 'YScale','log');
%	figure('Name', ['mtmass: ', path], 'Color', 'w'), line( mean(it(1:minv,inds),2), mean(mtmass(1:minv,inds),2) ), set(get(gca,'XLabel'),'String','Time, sweeps'), set(get(gca,'YLabel'),'String','Number of edges')%, set(gca, 'XScale','log', 'YScale','log');
%	figure('Name', ['mtnum: ', path], 'Color', 'w'), line( mean(it(1:minv,inds),2), mean(mitonum(1:minv,inds),2) ), set(get(gca,'XLabel'),'String','Time, sweeps'), set(get(gca,'YLabel'),'String','Number of segments')%, set(gca, 'XScale','log', 'YScale','log');
end

eq = 50;
[ 1., mean( mean(scMasM(1,eq:minv,inds),3) ) ]



