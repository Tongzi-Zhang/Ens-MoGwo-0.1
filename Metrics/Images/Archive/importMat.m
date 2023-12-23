function importMat
    clc;
    clear all;
    close all;
    addpath E:/日积月累/论文/Zhang-SCI/Six/Example/ENSMOGWO实例V2/
    namelist = dir('E:\日积月累\论文\Zhang-SCI\Six\Example\ENSMOGWO实例V2\Images\Archive\Archive*.mat');
    len = length(namelist);
    testPro = 'GoodLuck';
    maxIter = 10000;
    Iteration = 10000;
    divImp = 'refPoint';
    numObj = 2;
    A=[];
    for i = 1:len
        file_name{i}=namelist(i).name;
        load(file_name{i});
        temp=importdata(file_name{i});
        A=[A;temp];
    end
    costOld = vertcat(A.cost);
    Archive = A;
    DrawExample(numObj,costOld,Archive,testPro,Iteration,maxIter,divImp)
end