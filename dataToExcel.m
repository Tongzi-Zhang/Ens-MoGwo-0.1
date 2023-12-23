function dataToExcel 
    load('E:\日积月累\论文\Zhang-SCI\Six\Example\ENSMOGWO实例V2\Images\refPoints\GoodLuck\Archive.mat');
    index =[4,6,58,84,90,130]; % 
    names = ["A","B","KP1","KP2","HM","KP3"];
    for j =1: length(index)
        positionInd = index(j);
        k = 1;
        x = Archive(positionInd).position(:);
        for i = 1 : 20 : length(x)
           k = k+1;
           cellNames = ['D',num2str(k),':W',num2str(k)];
           xlswrite( 'E:\日积月累\论文\Zhang-SCI\Six\Example\ENSMOGWO实例V2\Data\Results.xlsx', x(i:i+19,1)', names(j),cellNames);
        end
    end
end