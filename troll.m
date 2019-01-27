figure('units','normalized','position',[.1 .1 .4 .4])
 tic;
 res = 40;

Ah = [linspace(1,4,res),linspace(5,8,res),linspace(30,33,res),linspace(34,37,res)];
Av = linspace(8,8,4*res);

for i=1:4*res
    axis([0 40 0 5])
    p = plot(Ah(i),Av(i)/2,'.','markersize',30);
    hold on
    pause(0.0001)
 end

Dh = [linspace(1,1,res),linspace(4,4,res),linspace(5,5,res),linspace(9,9,res),linspace(12,12,res),linspace(13,13,res),linspace(16,16,res),linspace(18,18,res),linspace(21,21,res),linspace(22,22,res),linspace(25,25,res),linspace(26,26,res),linspace(29,29,res),linspace(30,30,res),linspace(34,34,res),linspace(37,37,res)];
Dv = [linspace(8,5,res),linspace(5,2,res),linspace(8,2,res),linspace(8,2,res),linspace(8,2,res),linspace(8,2,res),linspace(7,3,res),linspace(8,2,res),linspace(8,2,res),linspace(8,2,res),linspace(8,2,res),linspace(8,2,res),linspace(7,3,res),linspace(8,2,res),linspace(8,5,res),linspace(5,2,res)];


for i=1:16*res
    axis([0 40 0 5])
    p = plot(Dh(i),Dv(i)/2,'.','markersize',30);
    hold on
    pause(0.0001)
end

Bh = [linspace(1,4,res),linspace(5,8,res),linspace(30,33,res),linspace(34,37,res)];
Bv = linspace(5,5,4*res);

for i=1:4*res
    axis([0 40 0 5])
    p = plot(Bh(i),Bv(i)/2,'.','markersize',30);
    hold on
    pause(0.0001)
end

Ch = [linspace(1,4,res),linspace(5,8,res),linspace(22,25,res),linspace(30,33,res),linspace(34,37,res)];
Cv = linspace(2,2,5*res);

for i=1:5*res
    axis([0 40 0 5])
    p = plot(Ch(i),Cv(i)/2,'.','markersize',30);
    hold on
    pause(0.0001)
end

Eh = [linspace(9,12,res),linspace(13,16,res),linspace(13,16,res),linspace(18,21,res),linspace(26,29,res),linspace(26,29,res)];
Ev = [linspace(8,2,res),linspace(8,7,res),linspace(2,3,res),linspace(8,2,res),linspace(8,7,res),linspace(2,3,res),];

for i=1:6*res
    axis([0 40 0 5])
    p = plot(Eh(i),Ev(i)/2,'.','markersize',30);
    hold on
    pause(0.0001)
end
toc;