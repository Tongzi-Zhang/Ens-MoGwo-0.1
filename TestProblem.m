function [fobj, numObj]= TestProblem(name)
%******************************* TestProblem ************************************
%% Function: TestProblem()
%% Description: 
%   To calculate objectives and constraints of the test problem
% ----------------------------  Function   ---------------------------------
%% Syntax:  
%   [fobj, numObj]= TestProblem(name)
%% Parameters:
%   Inputs:
%      name:    the name of test problem
%      
%   Outputs:
%      fobj:    the handle of test problem
%      numObj:  the number of objective function
%% Notes:
%   If you add test problem in the algorithm, please follow these two points:  
%   1. Don't forget y=y' and c=c' in the end of functions
%   2. c should be larger than 0
%
% ---------------------------- Reference  ---------------------------------
% 1. Himanshu Jain and Kalyanmoy Deb.An Evolutionary Many-Objective 
% Optimization Algorithm Using Reference-point Based Non-dominated Sorting Approach,
% Part II: Handling Constraints and Extending to an Adaptive Approach.IEEE
% Transactions on Evolutionary Computation,2014,18(4):602-622
% 2. Qingfu Zhang, Aimin Zhou, Shizheng Zhaoy, Ponnuthurai Nagaratnam Suganthany, Wudong Liu and
% Santosh Tiwariz.Multiobjective optimization Test Instances for the CEC 2009 Special Session and
% Competition. Technical Report CES-487,2009
% 3. Kalyanmoy Deb,Lothar Thiele, Marco Laumanns and Eckart Zitzler.Scalable Test Problems 
% for Evolutionary Multi-Objective Optimization.TIK-Technical Report, 2001, 112
% 4. S. Huband, P. Hingston, L. Barone, and L. While, A review of
% multiobjective test problems and a scalable test problem toolkit, IEEE
% Transactions on Evolutionary Computation, 2006, 10(5): 477-506. 
%
%% ----------------------------  Copyright  -------------------------------- 
%% Cited from NSPM and PlatEMO All rights reserved.
%%              NSPM
%           LSSSSWC, NWPU
%    Revision: 1.1  Date: 2011-07-25
%
%%              PlatEMO
%       Copyright (c) 2021 BIMK Group.
%% Modified by Zhang, T.
%                
%   Revision: 1.0.0  Date: 2021-04-01
%************************************************************************

    switch name
        case 'UF1'
            fobj = @UF1;
            numObj = 2;
        case 'UF2'
            fobj = @UF2; 
            numObj = 2;
        case 'UF3'
            fobj = @UF3;
            numObj = 2;
        case 'UF4'
            fobj = @UF4;
            numObj = 2;
        case 'UF5'
            fobj = @UF5;
            numObj = 2;
        case 'UF6'
            fobj = @UF6;
            numObj = 2;
        case 'UF7'
            fobj = @UF7;
            numObj = 2;
        case 'UF8'
            fobj = @UF8;
            numObj = 3;
        case 'UF9'
            fobj = @UF9;
            numObj = 3;
        case 'UF10'
            fobj = @UF10;
            numObj = 3;
        case 'CF1'
            fobj = @CF1;
            numObj = 2;
        case 'CF2'
            fobj = @CF2;
            numObj = 2;
        case 'CF3'
            fobj = @CF3;
            numObj = 2;
        case 'CF4'
            fobj = @CF4;
            numObj = 2;
        case 'CF5'
            fobj = @CF5;
            numObj = 2;
        case 'CF6'
            fobj = @CF6;
            numObj = 2;
        case 'CF7'
            fobj = @CF7;
            numObj = 2;
        case 'CF8'
            fobj = @CF8;
            numObj = 3;
        case 'CF9'
            fobj = @CF9;
            numObj = 3;
        case 'CF10'
            fobj = @CF10;
            numObj = 3;      
        case 'ZDT1'
            fobj = @ZDT1;
            numObj = 2; 
        case 'ZDT2'
            fobj = @ZDT2;
            numObj = 2;        
        case 'ZDT3'
            fobj = @ZDT3;
            numObj = 2;         
        case 'ZDT4'
            fobj = @ZDT4;
            numObj = 2;
        case 'ZDT5'
            fobj = @ZDT5;
            numObj = 2;
        case 'ZDT6'
            fobj = @ZDT6;
            numObj = 2;      
        case 'C1_DTLZ1'
            fobj = @C1_DTLZ1;
            numObj = 3;
        case 'C2_DTLZ2'
            fobj = @C2_DTLZ2;
            numObj = 3;
        case 'C1_DTLZ3'
            fobj = @C1_DTLZ3;
            numObj = 3;
        case  'C3_DTLZ4'
            fobj = @C3_DTLZ4;
            numObj = 3;
        case 'WFG1'
            fobj = @WFG1;
            numObj = 3;
        case 'WFG2'
            fobj = @WFG2;
            numObj = 3;
        case 'WFG3'
            fobj = @WFG3;
            numObj = 3;  
        case 'WFG4'
            fobj = @WFG4;
            numObj = 3;
        case 'WFG5'
            fobj = @WFG5;
            numObj = 3;
        case 'WFG6'
            fobj = @WFG6;
            numObj = 3;
        case 'WFG7'
            fobj = @WFG7;
            numObj = 3;
        case 'WFG8'
            fobj = @WFG8;
            numObj = 3; 
        case 'WFG9'
            fobj = @WFG9;
            numObj = 3;  
        case 'DTLZ1'
            fobj = @DTLZ1;
            numObj = 3;
        case 'DTLZ2'
            fobj = @DTLZ2;
            numObj = 3;
        case 'DTLZ3'
            fobj = @DTLZ3;
            numObj = 3;
        case 'DTLZ4'
            fobj = @DTLZ4;
            numObj = 3;
        case 'DTLZ5'
            fobj = @DTLZ5;
            numObj = 3;
        case 'DTLZ6'
            fobj = @DTLZ6;
            numObj = 3;
        case 'DTLZ7'
            fobj = @DTLZ7;
            numObj = 3;
        case 'DTLZ8'
            fobj = @CDTLZ8;
            numObj = 3;
        case 'DTLZ9'
            fobj = @CDTLZ9;
            numObj = 2;
        case 'IMOP1'
            fobj = @IMOP1;
            numObj = 2;
         case 'IMOP2'
            fobj = @IMOP2;
            numObj = 2;        
        case 'IMOP3'
            fobj = @IMOP3;
            numObj = 2;        
        case 'IMOP4'
            fobj = @IMOP4;
            numObj = 3;
        case 'IMOP5'
            fobj = @IMOP5;
            numObj = 3; 
        case 'IMOP6'
            fobj = @IMOP6;
            numObj = 3; 
        case 'IMOP7'
            fobj = @IMOP7;
            numObj = 3; 
        case 'IMOP8'
            fobj = @IMOP8;
            numObj = 3;
        case 'DC1_DTLZ1'
            fobj = @DC1_DTLZ1;
            numObj = 3;
        case 'LIRCMOP1'
            fobj = @CLIRCMOP1;
            numObj = 2;           
        case 'LIRCMOP6'
            fobj = @CLIRCMOP6;
            numObj = 2;
        case 'Map'
            fobj = @Map;
            numObj = 1;
        case 'GoodLuck'
            fobj = @GoodLuck;
            numObj = 2;
    end
end

%% Note: 
%   x,c, and y are columnwise, the imput x must be inside the search space and it could be a matrix

% 案例主函数
function [f,c] = GoodLuck(x,data,points)
    %====================================== Parameter==========================
    %   y(1):经济效益； y(2):水资源量消耗；F：粮食种植总收益；E：生物质发电总收益;
    %   Wf:农业消耗水量；We:生物质发电消耗水量; t:规划时间（T=20）
    % *******************************农业内部参量走起*******************************
    % If:种植过程所得毛利润；Cf：种植过程中成本；beta:折现系数；foodBenefit：农业净收益
    % j：区域（1=五原县；2=临河区；3=乌拉特前旗；4=杭锦后旗；5=磴口县）；
     global M T C J r
    % 初始化参量（加快运行速度）
     J= 5;
     C =5;
     M = 2;
     T =20;
     r = 0.0718; % 假设成本价格每10年翻一倍，每年约7.18%的增速
     netpresentValue = zeros(1,J);
     optionValue = zeros(1,J);
     foodBenefit = zeros(1,J);
     energyBenefit  = zeros(1,J);
     waterToFood = zeros(1,J);
     waterToEnergy = zeros(1,J);
     If = zeros(1,J);
     Cf = zeros(1,J);
     waterCon = zeros(1,J);
     grossProfit = zeros(1,J);
     invCost = zeros(1,J);
     waterRCon = zeros(J,T); % 此变量每个元素本身包含一个1*20的数组
     waterCost = zeros(J,T); % 此变量每个元素本身包含一个1*20的数组
     eHour = zeros(J,T); % 此变量每个元素本身包含一个1*20的数组
     % 约束参量初始化
     c1 = zeros(T,1); % 20  1- 20
     c2 = zeros(J,T); %  c3 21
     c4 = zeros(T,1); %  20 22 - 41
     c5 = zeros(T,1); %  20 42 - 61
     c6 = zeros(T,2 *J); % 200 62 - 261
%      c7 = zeros(T,J+1);  % 120 
     c8 = zeros(T,C); % 100 262 - 361
     c9 = zeros (J,T-1); % 95 362- 456
%      c10 = zeros(J,T); % 100 1982- 2081
     % 目标函数及约束计算
     for j = 1 : J
        If(j) = incomeFood(data,x,j,r,C,M,T);%农业毛收益
        Cf(j) = costFood(data,x,j,r,C,M,T);%农业成本
        foodBenefit(j) = (If(j) -Cf(j));% t时段农业净收益     
        [netpresentValue(j),waterCon(j),waterRCon(j,:),grossProfit(j),invCost(j),waterCost(j,:),eHour(j,:)] = NPV(data,x,C,M,T,j,points);  % t时段生物质净现值
        optionValue(j) = OV(data,grossProfit(j),invCost(j));       % 期权价值
        energyBenefit(j) = netpresentValue(j) + optionValue(j);
        waterToFood(j) = WTF(data,x,j,C,M,T);         % 农业用水
        waterToEnergy(j) = waterCon(j);       % 能源用水
        c2(j,:) = maxDArea(data,x,C,M,T,j);  % 节水建设工程约束-每个区域的最大滴灌调整约束 
%         c10(j,:) = floodTransArea(data,x,J,C,M,T,j); % 种植面积约束 - 滴灌与漫灌面积约束
        c9(j,:) = eleCapacity(data,T,eHour(j,:)); % 
     end

     F = sum(foodBenefit);     % 农业总收益
     E = sum(energyBenefit); % 生物质发电总收益
     Wf = sum(waterToFood);  % 农业总耗水量
     We = sum(waterToEnergy);% 生物质发电总耗水量
     f(1,:) =  -(F + E); % 经济目标  最大化 换成最小化
     f(2,:) = Wf + We;        % 水资源消耗目标
     for t = 1 : T 
          c1(t) = AWR(data,x,J,C,M,t,T,waterRCon); % 可用水量约束
          c4(t) = WRT(data,x,J,C,M,t,T,waterRCon); % 水权置换约束
          c5(t) = WSC(data,x,J,C,M,t,T,waterCost); % 节水灌溉建设投资约束 仅考虑水源井及首部费用 管理费用和消耗费用不考虑
          c6(t,:) = plantArea(data,x,J,C,M,T,t); % 种植面积约束 - 区域面积约束
%           c7(t,:) = dripArea(data,x,J,C,M,T,t); % 种植面积约束 - 滴灌面积约束          
          c8(t,:) = cropOutput(data,x,J,C,M,T,t); % 作物产量约束
     end
     c3 = PTCL(data,x,J,C,M,T) ; % 节水建设工程约束-潜在衬砌建设约束
     c6mod = reshape(c6,2*J* T,1);
%      c7mod = reshape(c7,T*(J+1),1);
     c8mod = reshape(c8,C*T,1);
     c9mod = reshape(c9,(T-1)*J,1);
     c1mod = reshape(c1,T,1); % 1-20
%      c10mod = reshape(c10,J*T,1);
     c2mod = reshape(c2,J*T,1);
     c = [c1mod;c2mod;c3; c4; c5; c6mod; c8mod;c9mod];
end
% 作物种植收入
function If = incomeFood(data,x,j,r,C,M,T)
    % 初始化
    beta = zeros(T,1);
    I = zeros( T,M,C);
    
    % 获取参量
    interate = data{1}.interate;
    expanrate = data{1}.expanrate;
    % c:作物类型（1=小麦，2=玉米，3=葵花，4=瓜类，5=番茄）；m:灌溉方式（1=漫灌，2=井渠双灌）；
    cropPrice = [data{2}.wheatPrice, data{2}.cornPrice,data{2}.sunflowerPrice, data{2}.melonPrice, data{2}.tomatoPrice]; % 作物价格
    lambdaC = [data{3}.wheatRSG, data{3}.cornRSG, data{3}.sunflowerRSG, data{3}.melonRSG, data{3}.tomatoRSG]; % 作物草谷比
    kC = [data{3}.wheatCC, data{3}.cornCC, data{3}.sunflowerCC, data{3}.melonCC, data{3}.tomatoCC];  % 作物的收集系数
    theta = data{3}.avaiEnergy;  % 秸秆能源化比率 默认随t不变
    strawPrice = data{2}.strawPrice; %秸秆价格
    % 单位不同灌溉方式不同作物的产量
    yield = [data{6}(j).wheatOFlood data{6}(j).wheatODrip; data{6}(j).cornOFlood data{6}(j).cornODrip; data{6}(j).sunflowerOFlood data{6}(j).sunflowerODrip; ...
        data{6}(j).melonOFlood data{6}(j).melonODrip;data{6}(j).tomatoOFlood data{6}(j).tomatoODrip];
    % 不同灌溉方式不同作物的产量增长率
    growRate = [data{7}(j).wheatGRateF data{7}(j).wheatGRateD; data{7}(j).cornGRateF data{7}(j).cornGRateD; data{7}(j).sunflowerGRateF data{7}(j).sunflowerGRateD; ... 
        data{7}(j).melonGRateF data{7}(j).melonGRateD; data{7}(j).tomatoGRateF data{7}(j).tomatoGRateD];
    for c = 1:C
        for m = 1: M
            for t = 1 : T
                 p = (cropPrice(c) + lambdaC(c)/((1+ growRate(c,m)/100)^t) * kC(c) * theta * strawPrice/1000) * (1+r)^t;
                 beta(t) = 1/(1+interate-expanrate)^t;
                 index = (j-1)* C * M * T + (c-1) * M * T + (m-1) * T + t;
                 temp = p * x(index) * yield(c,m) * (1+ growRate(c,m)/100)^t;
                 I(t,m,c) = temp * beta(t);              
            end
        end
    end
    If = sum(sum(sum(I(:,:,:))));
end
% 作物种植成本
function Cf = costFood(data,x,j,r,C,M,T)
    % 获取参量
    interate = data{1}.interate;
    expanrate = data{1}.expanrate;
   %************建设水源井及首部费用变量：滴灌带、地上及地下管道、水源及首部枢纽费用、其它费用***************
    Driptape =  data{11}.Driptape; %滴灌费用 CNY/hm2·a
    abovegroundPipe = data{11}.abovegroundPipe; %地上管道等花费 CNY/hm2·a
    undergroundPipe = data{11}.undergroundPipe; % 地下管道等设备花费 CNY/hm2·a
    well = data{11}.well; % 水源及首部枢纽费用  CNY/hm2·a
    others = data{11}.others; % 其它费用(包含维修费及人工费用) CNY/hm2·a
    % 单位滴灌建设费用 CNY/hm2·a
    dripConsCost = Driptape + abovegroundPipe + undergroundPipe + well + others;
    
    % ****************管理费用变量：翻耕地、播种、灌溉、施肥施药、收获***********  
    % 单位不同灌溉方式不同作物的翻耕地费用
    cropTL = [data{11}(1).wheatTL data{11}(2).wheatTL; data{11}(1).cornTL data{11}(2).cornTL; data{11}(1).sunflowerTL data{11}(2).sunflowerTL; ...
        data{11}(1).melonTL data{11}(2).sunflowerTL; data{11}(1).tomatoTL data{11}(2).tomatoTL];
    % 单位不同灌溉方式不同作物的播种费用
    cropSow = [data{11}(1).wheatSow data{11}(2).wheatSow; data{11}(1).cornSow data{11}(2).cornSow; data{11}(1).sunflowerSow data{11}(2).cornSow; ...
        data{11}(1).melonSow data{11}(2).sunflowerSow; data{11}(1).tomatoSow data{11}(2).tomatoSow];
    % 单位不同灌溉方式不同作物的施肥施药费用
    cropFP =[data{11}(1).wheatFP data{11}(2).wheatFP; data{11}(1).cornFP data{11}(2).cornFP; data{11}(1).sunflowerFP data{11}(2).cornFP; ...
        data{11}(1).melonFP data{11}(2).sunflowerFP; data{11}(1).tomatoFP data{11}(2).tomatoFP];
    % 单位不同灌溉方式不同作物的灌溉费用
    cropIrri =[data{11}(1).wheatIrri data{11}(2).wheatIrri; data{11}(1).cornIrri data{11}(2).cornIrri; data{11}(1).sunflowerIrri data{11}(2).cornIrri; ...
        data{11}(1).melonIrri data{11}(2).sunflowerIrri; data{11}(1).tomatoIrri data{11}(2).tomatoIrri];
    % 单位不同灌溉方式不同作物的收获费用
    cropHarv =[data{11}(1).wheatHarv data{11}(2).wheatHarv; data{11}(1).cornHarv data{11}(2).cornHarv; data{11}(1).sunflowerHarv data{11}(2).cornHarv; ...
        data{11}(1).melonHarv data{11}(2).sunflowerHarv; data{11}(1).tomatoHarv data{11}(2).tomatoHarv];
   
    % ****************消耗费用变量：种子、肥料、药、薄膜、水电费用***********  
    % 单位不同灌溉方式不同作物的种子费用
    cropSeed = [data{11}(1).wheatSeed data{11}(2).wheatSeed; data{11}(1).cornSeed data{11}(2).cornSeed; data{11}(1).sunflowerSeed data{11}(2).cornSeed; ...
        data{11}(1).melonSeed data{11}(2).sunflowerSeed; data{11}(1).tomatoSeed data{11}(2).tomatoSeed];
    % 单位不同灌溉方式不同作物的肥料费用
    cropFertilizer = [data{11}(1).wheatFertilizer data{11}(2).wheatFertilizer; data{11}(1).cornFertilizer data{11}(2).cornFertilizer; data{11}(1).sunflowerFertilizer data{11}(2).cornFertilizer; ...
        data{11}(1).melonFertilizer data{11}(2).sunflowerFertilizer; data{11}(1).tomatoFertilizer data{11}(2).tomatoFertilizer];
    % 单位不同灌溉方式不同作物的农药费用
    cropPesticide = [data{11}(1).wheatPesticide data{11}(2).wheatPesticide; data{11}(1).cornPesticide  data{11}(2).cornPesticide; data{11}(1).sunflowerPesticide data{11}(2).cornPesticide; ...
        data{11}(1).melonPesticide data{11}(2).sunflowerPesticide; data{11}(1).tomatoPesticide data{11}(2).tomatoPesticide];
    % 单位不同灌溉方式不同作物的薄膜费用
    cropTFilm = [data{11}(1).wheatTFilm data{11}(2).wheatTFilm; data{11}(1).cornTFilm data{11}(2).cornTFilm; data{11}(1).sunflowerTFilm data{11}(2).cornTFilm; ...
        data{11}(1).melonTFilm data{11}(2).sunflowerTFilm; data{11}(1).tomatoTFilm data{11}(2).tomatoTFilm];
     % 单位不同灌溉方式不同作物的水电费用
    cropWEFee = [data{11}(1).wheatWEFee data{11}(2).wheatWEFee; data{11}(1).cornWEFee data{11}(2).cornWEFee; data{11}(1).sunflowerWEFee data{11}(2).cornWEFee; ...
        data{11}(1).melonWEFee data{11}(2).sunflowerWEFee; data{11}(1).tomatoWEFee data{11}(2).tomatoWEFee];
    
    %费用包括：建设井等工程费用、管理费用、消耗费用等
    wellcost = zeros(T,C);
    cropMCCost = zeros(T,C,M);
    beta = zeros(T);

    % 管理和消耗费用 和 建设水源井及首部费用
    for c = 1:C
        for m = 1: M
            for t = 1:T
                p = (cropTL(c,m) + cropSow(c,m) + cropFP(c,m) + cropIrri(c,m) + cropHarv(c,m)  ...
                        + cropSeed(c,m) + cropFertilizer(c,m) + cropPesticide(c,m) + cropTFilm(c,m) + cropWEFee(c,m)) * (1+r)^t;
                beta(t) = 1/(1+interate-expanrate)^t;
                index = (j-1)* C * M * T + (c-1) * M * T + (m-1) * T + t;
                cropMCCost(t,m,c) = x(index) * p * beta(t); % 管理和消耗费用
                if m == 2
                    % 建设水源井及首部费用
                    if t ==1
                        wellcost(t,c) = x(index) * dripConsCost * (1+r)^t * beta(t);
                    else
                        indexPre = (j-1)* C * M * T + (c-1) * M * T + (m-1) * T + t -1;
                        wellcost(t,c) = (x(index)-x(indexPre)) * dripConsCost * (1+r)^t * beta(t); 
                    end
                end
            end
        end
    end
    Cf = sum(sum(wellcost(:,:))) + sum(sum(sum(cropMCCost(:,:,:))));
end
% 净现值
function [netpresentValue, waterCon,waterRCon,grossProfit,invCost,waterCost,eHour] = NPV(data,x,C,M,T,j,points)
    %***************************NPV()************************
    % 函数：NPV
    %
    % 描述：该方法用于计算生物质发电净现值，主要包括以下几个部分：
    % 1.售电收益 GEN; 2.CO2收益 CO; 3.运行维护成本 O&M; 4.税费 TAX;
    % 5.秸秆收集成本费用 CS；6.运输秸秆费用 TS； 7.置换水的费用 WRT; 
    % 8.建设发电厂投资成本 INV （草木灰收益 存储成本）
    %  根据平均秸秆量计算，拟在五原建设30+25*2MW；临河：30*3+25MW;乌拉特前旗：30*3MW
    %  杭锦后旗：30*2MW; 磴口：30MW
    % 语法：NPV(T,j)
    % 参量：T 表示时段长度；j表示区域
    % *******************************************************
    
    % 初始化
    totalYield = zeros(T,M,C);
    strawYield = zeros(T,M,C);
    % 参量获取
    numCap30 = data{12}(j).installCap30; % 30MW数量
    numCap25 = data{12}(j).installCap25;
    numCap12 = data{12}(j).installCap12;
    numCap6 = data{12}(j).installCap6;
    ic = data{12}(j).installTotalCap;
    consumption = data{5}.consumption;
    unitINV = data{2}.unitINV; % 单位投资建设成本 CNY/kWh

    % 单位不同灌溉方式不同作物的产量 kg/hm2
    yield = [data{6}(j).wheatOFlood data{6}(j).wheatODrip; data{6}(j).cornOFlood data{6}(j).cornODrip; data{6}(j).sunflowerOFlood data{6}(j).sunflowerODrip; ...
        data{6}(j).melonOFlood data{6}(j).melonODrip;data{6}(j).tomatoOFlood data{6}(j).tomatoODrip];
    % 不同灌溉方式不同作物的产量增长率
    growRate = [data{7}(j).wheatGRateF data{7}(j).wheatGRateD; data{7}(j).cornGRateF data{7}(j).cornGRateD; data{7}(j).sunflowerGRateF data{7}(j).sunflowerGRateD; ... 
        data{7}(j).melonGRateF data{7}(j).melonGRateD; data{7}(j).tomatoGRateF data{7}(j).tomatoGRateD];
    % 不同作物的草谷比
    cropRSG = [data{3}.wheatRSG, data{3}.cornRSG, data{3}.sunflowerRSG, data{3}.melonRSG, data{3}.tomatoRSG];
    % 不同作物的收集系数
    cropCC  = [data{3}.wheatCC, data{3}.cornCC,data{3}.sunflowerCC,data{3}.melonCC, data{3}.tomatoCC];
    % 秸秆能源化
    avaiEnergy = data{3}.avaiEnergy;
    % 不同作物的燃烧热值
    cropGCV = [data{5}.wheatGCV, data{5}.cornGCV, data{5}.sunflowerGCV, data{5}.melonGCV, data{5}.tomatoGCV];
    % j区域平均发电效率
     mean_ge = ( numCap30 * data{5}.CE30 + numCap25 * data{5}.CE25 + ...
                      numCap12 * data{5}.CE12 + numCap6 * data{5}.CE6)/(numCap30 + numCap25 + numCap12 + numCap6) ; % 效率与装机容量
    for c = 1:C
        for m = 1:M
            for t = 1:T
                index = (j-1)* C * M * T + (c-1) * M * T + (m-1) * T + t; 
                totalYield(t,m,c) = x(index) * yield(c,m) * (1+ growRate(c,m)/100)^t;  % j区域下t时间段内作物c以m灌溉方式下的产量 kg
                strawYield(t,m,c) = cropRSG(c) /(1+ growRate(c,m)/100)^t * cropCC(c) * totalYield(t,m,c) * avaiEnergy; % kg
            end
        end
    end
    % 收益-成本；净利润(除投资建设之外的净现值)
    [grossProfit,waterCon,waterRCon,waterCost,eHour] =  benefitCost(data,T,C,strawYield,cropGCV,mean_ge,ic,consumption,j,points);
    % 投资建设费用
    invCost = unitINV * ic * 1000 ;
    netpresentValue = grossProfit -invCost;
end
% 生物质发电收益-成本计算函数
function  [grossProfit, waterConsumption,waterRCon,waterCost,eHour] = benefitCost(data,T,C,strawYield,cropGCV,mean_ge,ic,consumption,j,points)
    % 参数初始化
    eh =  zeros(T,1); % t时段的有效发电时间
    gen =  zeros(T,1); % t时段售电收益
    GCV = zeros(C,1); % 时段t内作物的的热值
    co2 = zeros(T,1); % t时段co2潜在收益
    om = zeros(T,1); % t时段运行维护费用
    plantAsh = zeros(T,1); %t时段草木灰收益
    cs = zeros(T,1);  % t时段秸秆费用
    tax = zeros(T,1); % t时段税费
    trans = zeros(T,1); % t时段运输费用
    water = zeros(T,1); % t时段水费
    strawCon = zeros(T,1); %t时段秸秆存储费用
    waterCon = zeros(T,1); % 发电耗水量
    %  约束参量
    waterRCon = zeros(1,T); % 约束发电耗水量
    waterCost  = zeros(1,T); % 约束水权置换参量
    eHour = zeros(1,T); % 约束有效发电时长参量
    % 参量获取
    fit0 = data{2}.FIT; % 获取上网电价初始值
    uFIT = data{5}.fitDR; % 上网电价漂移率
    vFIT = data{5}.fitVol; % 上网电价波动率
    priceCO20 = data{2}.co2Price; % CO2初始价格 CNY/kg
    uCO2 = data{5}.CO2DR; % CO2价格偏移率
    vCO2 = data{5}.CO2Vol; % CO2价格波动率
    unitOM = data{2}.OM; % 运行维护单位价格 CNY/kWh
    unitAsh = data{2}.plantAsh; % 单位草木灰收益 CNY/kWh
    rv = data{5}.rv; % 增值税税率
    rc = data{5}.rc; % 公司所得税税率
    xi = data{5}.xi; % 排放系数
    strawPrice = data{2}.strawPrice; % 单位秸秆价格 CNY/10^3kg
    cfuelf =  data{5}.fullFuel; % 单位距离满载耗油量 L/km
    cfuele =  data{5}.emptyFuel; % 单位距离空载耗油量 L/km
    fuelPrice = data{5}.fuelPrice; % 单位油价 CNY/L
    strawLoad = data{5}.strawLoad; % 运载车单次满载重量 t
    dr = data{5}.dr; % 系统发电效率降低率
    wr = data{5}.wr; % 单位电耗水量 L/kWh
    waterPrice = data{2}.waterPrice; % 单方水价格
    disRate = data{5}.disRate; % 折现率
    unitCon = data{2}.unitCon; % 单位存储费用

    for t= 2:T
        for c = 1: C
           GCV(c) = sum(strawYield(t,:,c)) * cropGCV(c); 
        end
        eh(t) = sum(GCV)* mean_ge/ic/1000/3600 ; % 每个区域每个时段的有效发电时间
        eHour(t) = eh(t); % 此用于发电量约束
        % 计算售电收益
        gen(t) = eh(t) * (1-dr) * ic * 1000 * (1 - consumption) * fit0 * exp(uFIT-vFIT^2/2)^t * (1 + disRate)^(-t); % 每个区域每个时段的发电收益 ,
        % CO2排放收益
        co2(t) = eh(t) * (1-dr) * ic * 1000 * xi * priceCO20 * exp(uCO2-vCO2^2/2)^t * (1 + disRate)^(-t);
        % O&M成本费用
        om(t) = eh(t) * (1-dr) * ic * 1000 *  unitOM * (1 + disRate)^(-t);
        % 草木灰收益
        plantAsh(t) = eh(t) * (1-dr) * ic * 1000 * unitAsh * (1 + disRate)^(-t);
        % 秸秆成本
        cs(t) = sum(sum(strawYield(t,:,:))) *  strawPrice /10^3 * (1 + disRate)^(-t) ;
        % 税费
        tax(t) = ((gen(t) + co2(t))* rv + ((gen(t) + co2(t) ) * (1-rv) - om(t) -cs(t)) * rc )* (1 + disRate)^(-t);
        % 运输费用
        distance = Dis (data,j,points)/10^3;  % km
        trans(t) = (cfuelf + cfuele) * distance * fuelPrice * sum(sum(strawYield(t,:,:)))/(strawLoad * 10^3) * (1 + disRate)^(-t);
        % 置换水费
        water(t) = eh(t) * (1-dr) * ic * 1000 * wr /1000 * waterPrice * (1 + disRate)^(-t);
        waterCost(t) = water(t); % 此变量用于节水灌溉建设投资约束计算 
        % 存储成本
        strawCon(t) = sum(sum(strawYield(t,:,:))) * unitCon * (1 + disRate)^(-t); 
        % 耗水量
        waterCon(t) = eh(t) * (1-dr) * ic * 1000 * wr/1000; % 仅时间纬度耗水量参量
        waterRCon(t) = waterCon(t); % 此变量用于约束计算 
    end
    % T时间内总费用或收益
    genBenefit = sum(gen);
    CO2Benefit = sum(co2);
    omCost = sum(om);
    plantAshBenefit = sum(plantAsh);
    csCost = sum(cs);
    taxCost = sum(tax);
    transCost = sum(trans);
    waterCost = sum(water);
    strawConCost = sum(strawCon);
    grossProfit = genBenefit + CO2Benefit - omCost + plantAshBenefit - csCost - taxCost - transCost - waterCost - strawConCost;
    waterConsumption = sum(waterCon);
end
% 计算运输距离
function disPlant = Dis(data,j,points)
    % 获取各区域镇级单位坐标
%     points = shaperead('Maps/Points.shp');
     powerPlant = load('Maps/Images/powerPlant.mat');
    x = powerPlant.powerPlant(j); % 经度 纬度
    pointsSelect = points(vertcat(points.NAME)==int2str(j));
    numPoints = length(pointsSelect);
    radius = data{5}.earthRadius;
    % 初始化参量
    disCTPlant = zeros(numPoints,1);
    for i_points = 1 :numPoints
        disCTPlant(i_points) = distance(points(i_points).LATITUDE,points(i_points).LONGITUDE, x.Y,x.X)* radius *1000 * 2 * pi/360;
    end
    disPlant = sum(disCTPlant);
end
% 期权收益
function optionValue = OV(data,grossProfit,invCost)
 
    % 参量获取
    NBXN = [data{13}(1).year21 data{13}(1).year20 data{13}(1).year19 data{13}(1).year18 data{13}(1).year17 ...
        data{13}(1).year16 data{13}(1).year15 data{13}(1).year14 data{13}(1).year13 data{13}(1).year12]; % 宁波新能各年份股价
    CYDL = [data{13}(2).year21 data{13}(2).year20 data{13}(2).year19 data{13}(2).year18 data{13}(2).year17 ...
        data{13}(2).year16 data{13}(2).year15 data{13}(2).year14 data{13}(2).year13 data{13}(2).year12]; % 长源动力各年份股价
    SNXN = [data{13}(3).year21 data{13}(3).year20 data{13}(3).year19 data{13}(3).year18 data{13}(3).year17 ...
        data{13}(3).year16 data{13}(3).year15 data{13}(3).year14 data{13}(3).year13  data{13}(3).year12]; % 韶能新能各年份股价
%     JSXN = data{13}(4); % 江苏新能各年份股价
    sharePrice = [NBXN;CYDL;SNXN]; % 股票价格集合
    [numShare, numYear]= size(sharePrice); % 股票个数
    riskFree = data{5}.riskFree; % 无风险利率
    % 参量初始化
    theta = zeros(numShare,1);
    u = zeros(numShare,1);
    for i_share = 1: numShare
         sumU = 0;
         sumTheta = 0;
%          numYear =  length(sharePrice(i_share)); % 获取每支股票股价数据年份
         for j_year = 2:numYear
            tempU = log10(sharePrice(i_share,j_year -1)/ sharePrice(i_share,j_year));
            sumU = sumU + tempU;
         end
         u(i_share) = sumU/numYear;
         for j_year = 2 :numYear
            tempTheta = (log10(sharePrice(i_share,j_year -1)/ sharePrice(i_share,j_year)) - u(i_share))^2;
            sumTheta = sumTheta + tempTheta; 
         end
         theta(i_share) = sqrt(sumTheta/(numYear -1));
    end
    thetaMean = mean(theta);
    d1 = (log10(grossProfit/invCost) + (riskFree + thetaMean^2/2) * 1)/(thetaMean * sqrt(1)); % 参数d1 期权有效期为1
    d2 = (log10(grossProfit/invCost) + (riskFree - thetaMean^2/2) * 1)/(thetaMean * sqrt(1)); % 参数d2
    if grossProfit < 0
        optionValue = 0;
    else
        d1CDF = normcdf(d1);
        d2CDF = normcdf(d2);
        optionValue = grossProfit * d1CDF - exp(-riskFree * 1) * invCost * d2CDF; %  1 表示期权有效期
    end
end
% 农业耗水量
function waterConsumption = WTF(data,x,j,C,M,T)
    % 初始化变量
    waterCon = zeros(T,M,C); %
    aw = zeros(T,M,C); %
    % 获取变量
    iwq = [data{4}.wheatWFlood data{4}.wheatWDrip; data{4}.cornWFlood data{4}.cornWDrip; data{4}.sunflowerWFlood data{4}.sunflowerWDrip; ...
        data{4}.melonWFlood data{4}.melonWDrip; data{4}.tomatoWFlood data{4}.tomatoWDrip];
%     autumnWater  = [data{4}.Wuyuan data{4}.Linhe data{4}.Uradqianqi data{4}.Hangjinhouqi data{4}.Dengkou];
    awq = [data{14}.Wuyuan data{14}.Linhe data{14}.Uradqianqi data{14}.Hangjinhouqi data{14}.Dengkou]; % 不同区域五种主要作物单位面积秋浇用水量m3/hm2
    for c = 1:C
        for m = 1:M
            for t = 1: T
                index = (j-1)* C * M * T + (c-1) * M * T + (m-1) * T + t;
                waterCon(t,m,c) = x(index) * iwq(c,m);
                aw(t,m,c) = x(index) * awq(j);
            end
        end
    end
    % 灌溉耗水量
    waterIrriCon = sum(sum(sum(waterCon(:,:,:))));
    % 秋浇耗水量
    autumnWater = sum(sum(sum(aw(:,:,:))));
    % 总耗水量
    waterConsumption = waterIrriCon + autumnWater;
end
% 可用水量约束函数
function cons = AWR(data,x,J,C,M,t,T,waterRCon)
    % 初始化
    waterF = zeros(M,C,J);
    % 参量获取
    tcl = data{14}.TCL; % 总渠干长度 km
    ulw = data{14}.ULW; % 单位渠系长度渗漏水量 m3/km
    uws = data{14}.UWS; % 单位长度渠系衬砌节水量m3
    ewq = data{14}.EWQ; % 年均灌溉间隙生态补水量 亿m3
    wdqMax = data{14}.WDQMax; % 五种主要作物最大可利用水量 亿m3
%     wdqMin = data{14}.WDQMin; % 五种主要作物最大可利用水量 亿m3
    iwq = [data{4}.wheatWFlood data{4}.wheatWDrip; data{4}.cornWFlood data{4}.cornWDrip; data{4}.sunflowerWFlood data{4}.sunflowerWDrip; ...
        data{4}.melonWFlood data{4}.melonWDrip; data{4}.tomatoWFlood data{4}.tomatoWDrip];
    awq = [data{14}.Wuyuan data{14}.Linhe data{14}.Uradqianqi data{14}.Hangjinhouqi data{14}.Dengkou]; % 不同区域五种主要作物单位面积秋浇用水量m3/hm2
    e = data{14}.e; % 已建设渠道衬砌比例
    for j = 1: J
        for c = 1: C
            for m = 1:M
                index = (j-1)* C * M * T + (c-1) * M * T + (m-1) * T + t;
                waterF(m,c,j) = x(index) * (awq(j) + iwq(c,m)) ;
            end
        end
    end

    Wf = sum((sum(sum(waterF(:,:,:)))));
    % 生物质发电耗水量
    Wet = sum(waterRCon(:,t));
    indexICL = J * C * M * T; % 1000起
    cons1 = 1 -  (Wet + tcl * ulw + Wf - uws * sum(x(indexICL+1: indexICL + t)) - e * tcl * uws -ewq * 10^8)/(wdqMax * 10^8); % 公式6-20
%     cons2 =  Wet + tcl * ulw + Wf - uws * sum(x(indexICL+1: indexICL + t)) - e * tcl * uws -wdqMin * 10^8;
    cons = cons1 ;
end
% 节水工程约束函数 - 增加滴灌约束
function cons = maxDArea(data,x,C,M,T,j)
    % 初始化参量
    addDArea = zeros(T,C);
    cons1 = zeros(1,T);
    m = 2;
%     cons1 = zeros(1,T-1);
%     cons2 = zeros(1,T-1);
    % 获取参量
%     potentialDArea = data{10}(j).dripArea; 
    maxTDrip = data{1}.maxDrip;
    if j > 3
      maxTDrip = data{1}.maxDripT;
    end
%     existDArea = data{10}(j).existDArea;
%     baseArea = [data{8}(j).wheat data{8}(j).corn data{8}(j).sunflower data{8}(j).melon data{8}(j).tomato];
    for c = 1:C
        for t = 1:T
            index = (j-1) * C * M * T + (c-1) * M * T + (m-1) * T + t ; % 
            addDArea(t,c) = x(index);
        end
    end
    cons1(1) = 1- sum(addDArea(1,:))/maxTDrip;
    for t = 2: T
        cons1(t) = 1 - (sum(addDArea(t,:))-sum(addDArea(t-1,:))) / maxTDrip;  %6-21-2
    end

%     cons2 = 1 - sum(sum(addDArea(:,:)))/ potentialDArea ; % 公式7-18-2 假设所有潜在滴灌均进行补贴
    cons = cons1;
end
% 节水工程约束函数 - 潜在衬砌约束
function cons = PTCL(data,x,J,C,M,T)
    % 初始化参量
    icl = zeros(T,1); % 初始化建设衬砌长度
    % 参量获取
    ptcl = data{14}.PTCL; % 潜在衬砌长度
  
    intialIndex = J * C * M * T; %  5*5*3*20 1000 起
    for t = 1 : T
        index = intialIndex + t;
        icl(t) = x(index);
    end
    iclTotal = sum(icl);
    cons = 1 -iclTotal/ptcl; % 6-21-4
end
% 水权置换约束函数
function cons = WRT(data,x,J,C,M,t,T,waterRCon)
    % 初始化参量
    wsDrip = zeros(C,J);
    m = 2;
    % 参量获取
    cropWFlood = [ data{4}.wheatWFlood data{4}.cornWFlood data{4}.sunflowerWFlood data{4}.melonWFlood data{4}.tomatoWFlood ]; % 各作物单位面积漫灌需水量
    cropWDrip= [ data{4}.wheatWDrip data{4}.cornWDrip data{4}.sunflowerWDrip data{4}.melonWDrip data{4}.tomatoWDrip ]; %  各做物单位面积滴灌需水量
    uws = data{14}.UWS; % 单位长度渠系衬砌节水量m3
    for j = 1:J
        for c = 1:C
            index = (j-1) * C * M * T + (c-1) * M * T + (m-1) * T + t; % 
            wsDrip(c,j) = x(index) * (cropWFlood(c) - cropWDrip(c)); % 滴灌节水量
        end
    end
    Wet = sum(waterRCon(:,t));
    indexICL = J * C * M * T; %  5*5*2*20 1000 起
    if t == 1
        cons = 0;
    else
        cons = (sum(sum(wsDrip(:,:))) + sum(x(indexICL+1: indexICL+t)) * uws)/Wet - 1; % 公式6-22
    end
end
% 节水灌溉建设投资约束
function cons = WSC(data,x,J,C,M,t,T,waterCost)
    % 初始化参量
    m = 2;
    dripCost = zeros (C,J); % 滴灌建设成本
    % 参量获取
     %************建设水源井及首部费用变量：滴灌带、地上及地下管道、水源及首部枢纽费用、其它费用***************
    Driptape =  data{11}.Driptape; %滴灌费用 CNY/hm2·a
    abovegroundPipe = data{11}.abovegroundPipe; %地上管道等花费 CNY/hm2·a
    undergroundPipe = data{11}.undergroundPipe; % 地下管道等设备花费 CNY/hm2·a
    well = data{11}.well; % 水源及首部枢纽费用  CNY/hm2·a
    others = data{11}.others; % 其它费用(包含维修费及人工费用) CNY/hm2·a
    % 单位滴灌建设费用 CNY/hm2·a
    dripConsCost = Driptape + abovegroundPipe + undergroundPipe + well + others;
    ccan = data{14}.CCAN; % 单位衬砌建设成本
    for j = 1: J
        for c = 1: C
            index = (j-1) * C * M * T + (c-1) * M * T + (m-1) * T + t ; % 
            if t>=2
                indexPrec = (j-1) * C * M * T + (c-1) * M * T + (m-1) * T + t -1 ;
                dripCost(c,j) = (x(index) - x(indexPrec)) * dripConsCost;
            else
                dripCost(c,j) = x(index) * dripConsCost;
            end
        end
    end
    indexICL =  J * C * M * T; % 5 * 5 * 2 * 20 1000起
    cons = 1 - (sum(sum(dripCost(:,:))) + x(indexICL+t) * ccan)/sum(waterCost(:,t)); % 公式6-23
end
% 种植面积约束函数 -区域种植面积约束
function cons =  plantArea(data,x,J,C,M,T,t)
    % 初始化变量
    cropArea = zeros(M,C,J);
    cons1 = zeros(1,J);
    cons2 = zeros(1,J);
%     cropCons1 = zeros(C,J);
%     cropCons2 = zeros(C,J);
    cons = zeros(1,2 *J);
    % 参量获取
%     minTArea = data{1}.minArea; % 五种作物最小种植面积 hm2
%     maxTArea = data{1}.maxArea; % 五种作物最大种植面积 hm2
    minRArea = [data{9}(1).minRArea data{9}(2).minRArea data{9}(3).minRArea data{9}(4).minRArea data{9}(5).minRArea];
    maxRArea = [data{9}(1).maxRArea data{9}(2).maxRArea data{9}(3).maxRArea data{9}(4).maxRArea data{9}(5).maxRArea];
    for j = 1:J
%        minCropArea = [data{8}(j).wheatAreaMin data{8}(j).cornAreaMin data{8}(j).sunflowerAreaMin data{8}(j).melonAreaMin data{8}(j).tomatoAreaMin];
%        maxCropArea = [data{8}(j).wheatAreaMax data{8}(j).cornAreaMax data{8}(j).sunflowerAreaMax data{8}(j).melonAreaMax data{8}(j).tomatoAreaMax];
        for c = 1:C
            for m = 1:M
               index = (j-1) * C * M * T + (c-1) * M * T + (m-1) * T + t;
               cropArea(m,c,j) = x(index);
            end 
%             cropCons1(c,j) = sum(cropArea(:,c,j)) / minCropArea(c) - 1; % 公式7-21-2
%             cropCons2(c,j) = 1 - sum(cropArea(:,c,j)) / maxCropArea(c); % 公式7-21-2
        end
    end
%     cropCons1Mod = reshape(cropCons1,1,C*J);
%     cropCons2Mod = reshape(cropCons2,1,C*J);

%     totalArea = sum(sum(sum(cropArea(:,:,:))));
%     cons(1) = totalArea - minTArea;
%     cons(2) = maxTArea - totalArea;
    for j = 1 : J
        totalRArea = sum(sum(cropArea(:,:,j)));
        cons1(j) = totalRArea / minRArea(j) - 1; % 公式6-24-1
        cons2(j) = 1 - totalRArea / maxRArea(j); % 公式6-24-1
    end  
    cons = [cons1 cons2 ];
end

% 种植面积约束函数 -滴灌面积约束 不再应用
% function cons = dripArea(data,x,J,C,M,T,t)
%     % 初始化参数
%     m = 2;
%     dArea = zeros(C,J);
%     dripIndex = J * C * M * T;
%     addArea = zeros(C,J);
%     addDArea = zeros(T,C,J);
%     addRegionDArea =  zeros(1,J);
%     cons = zeros(1, J+1);
%     % 获取参量
% %     regionDArea = [data{10}(1).existDArea data{10}(2).existDArea data{10}(3).existDArea data{10}(4).existDArea data{10}(5).existDArea];% 各区域已存在的滴灌面积
%     maxDripArea = data{1}.maxDrip;
%     for j = 1: J
%      for c = 1: C
%         index1 = (j-1) * C * M * T + (c-1) * M * T + (m -1) * T; 
%         dArea(c,j) = x(index1);
%         index2 = dripIndex + (j-1) * C * T + (c-1) * T + t;
%         addArea(c,j) = x(index2);
%         for i_t = 1 : t
%             index3 = dripIndex + (j-1) * C * T + (c-1) * T + t;
%             addDArea(t,c,j) = x(index3);
%         end
%      end
%         addRegionDArea(j) = sum(sum(addDArea(1:t,:,j)));
%         cons(j) = sum(dArea(:,j)) - addRegionDArea(j);  % 公式 7-21-3 所有潜在滴灌进行投资建设
%     end
%    cons   =  1 - sum(sum(addArea(:,:)))/maxDripArea; % 公式 7-18-1
% end

% 作物产量约束
function cons = cropOutput(data,x,J,C,M,T,t)
    % 初始化参量
%     consMin = zeros(J,C);
    cons = zeros(1,C);
%     consMax = zeros(J,C);
    cropOutput = zeros(J,C,M);
    mincropRD = [data{15}(1).wheatRMinD data{15}(1).cornRMinD data{15}(1).sunflowerRMinD data{15}(1).melonRMinD data{15}(1).tomatoRMinD];
    for j = 1: J
        % 获取参量
        % 单位不同灌溉方式不同作物的产量
        yield = [data{6}(j).wheatOFlood data{6}(j).wheatODrip; data{6}(j).cornOFlood data{6}(j).cornODrip; data{6}(j).sunflowerOFlood data{6}(j).sunflowerODrip; ...
             data{6}(j).melonOFlood data{6}(j).melonODrip;data{6}(j).tomatoOFlood data{6}(j).tomatoODrip];
         % 不同灌溉方式不同作物的产量增长率
        growRate = [data{7}(j).wheatGRateF data{7}(j).wheatGRateD; data{7}(j).cornGRateF data{7}(j).cornGRateD; data{7}(j).sunflowerGRateF data{7}(j).sunflowerGRateD; ... 
        data{7}(j).melonGRateF data{7}(j).melonGRateD; data{7}(j).tomatoGRateF data{7}(j).tomatoGRateD];
%         mincropD = [data{15}(j).wheatMinD data{15}(j).cornMinD data{15}(j).sunflowerMinD data{15}(j).melonMinD data{15}(j).tomatoMinD];
%         maxcropD = [data{15}(j).wheatMaxD data{15}(j).cornMaxD data{15}(j).sunflowerMaxD data{15}(j).melonMaxD data{15}(j).tomatoMaxD];   
        for c = 1: C
            for m = 1: M
                index = (j-1) * C * M * T + (c-1) * M * T + (m -1) * T + t; 
                cropOutput(j,c,m) = x(index) * yield(c,m) *  (1+ growRate(c,m)/100)^t;
            end
            % 假设作物产量与需求量增速对应一致
%            consMin(j,c) = sum(cropOutput(j,c,:)) / mincropD(c) - 1; % 公式 7-22-1
%            consMax(j,c) = maxcropD(c) - sum(cropOutput(:,c,m));
        end
    end
    for c = 1 : C
      cons(c) = sum(sum(cropOutput(:,c,:)))/mincropRD(c) -1;
    end
      
end
% 发电量约束
function cons = eleCapacity(data,T,eHour)
    % 初始化参量
    eh1 = zeros(1, T-1);
%     eh2 = zeros(1, T-1);
    % 参量获取
    minEH = data{5}.minHours; % 最小有效发电时间
%     minEH = data{5}.meanHours; % 最小有效发电时间
%     maxEH = data{5}.maxHours; % 最大有效发电时间
    % 1年建设
    for t = 2: T
        eh1(t-1) = eHour(t)/minEH - 1;  % 公式7-22-2
%         eh2(t-1) = maxEH - eHour(t);
    end
    cons = eh1;
end

% 漫灌转滴灌约束 写进了boundary中
% function cons = floodTransArea(data,x,J,C,M,T,j)
%     % 初始化参量
%     m = 2;
%     r = 0.06;
%     cropTArea = zeros(T,C);
% %     cons1 = zeros(1,T-1);
% %     cons2 = zeros(1,T-1);
%     cropDArea = zeros(T,C);
%     dripIndex = J * C * M * T;
%     cons = zeros(1,T);
%     % 获取参量
% %     baseArea = [data{8}(j).wheat data{8}(j).corn data{8}(j).sunflower data{8}(j).melon data{8}(j).tomato];
% 
%     for c = 1: C
%         for t = 1: T
%             index = (j-1) * C * M * T + (c -1) * M * T + (m -1) * T + t;
%             cropTArea(t,c) =  x(index);
%             indexD = dripIndex + (j-1) * C * T + (c -1) * T +  t;
%             cropDArea(t,c) = x(indexD);
%         end
%         cons(1) = cropTArea(1,c) - cropDArea(1,c);
%         for  t = 2: T
%     %        cons1(t-1) = (sum(cropTArea(t,:)) - sum(cropTArea(t-1,:)))/(r * sum(baseArea(:)));  % 公式 7-21-4
%     %        cons2(t-1) = 1 - (sum(cropTArea(t,:)) - sum(cropTArea(t-1,:))) / (r * sum(baseArea(:))); % 公式 7-21-4
%             cons(t)  = cropTArea(t,c) - cropTArea(t-1,c) - cropDArea(t,c);
%         end
%     end
% end 
% 建厂函数
function [y, Distance,plantCapacity] = Map(x,points,numPoints,data)
    Dis = zeros(1,numPoints);
    wheat = zeros(1,numPoints);
    corn = zeros(1,numPoints);
    sunflower = zeros(1,numPoints);
    melon = zeros(1,numPoints);
    tomato = zeros(1,numPoints);
    yStraw = zeros(1,numPoints);
    tStraw = zeros(1,numPoints);
    cropGCV = zeros(1,numPoints);
    capacity = zeros(1,numPoints);
    for i_points = 1 :numPoints
      Dis(i_points) = distance( points(i_points).LONGITUDE,points(i_points).LATITUDE, x(1),x(2))*data{5}.earthRadius*1000*2*pi/360;
      % 粗估：D=distance(latitude1,longitude1,latitude2,longitude2)  % 经度，纬度
      % D为这两点与地心连线所夹的夹角，单位为角度  
      % 因此，你要计算两点之间弧度距离，只要把结果转换成弧度，再乘以地球半径就可以了
      % dx=D*6371*1000*2*pi/360;   pi=3.1415926  结果单位为m
      wheat(i_points) = data{3}.wheatRSG * data{3}.wheatCC * points(i_points).MWHEATYIEL;
      corn(i_points) = data{3}.cornRSG * data{3}.cornCC * points(i_points).MCORNYIELD;
      sunflower(i_points) = data{3}.sunflowerRSG * data{3}.sunflowerCC * points(i_points).MSUNFLOWER;
      melon(i_points) = data{3}.melonRSG * data{3}.melonCC * points(i_points).MMELONYIEL;
      tomato(i_points) = data{3}.tomatoRSG * data{3}.tomatoCC * points(i_points).MTOMATOYIE;
      yStraw(i_points) = data{3}.avaiEnergy * (wheat(i_points)+corn(i_points)+sunflower(i_points)+melon(i_points)+tomato(i_points))/data{5}.strawLoad;
      % assumption 满载卡车每公里消耗 5l/km , 空载 2l/km  ，价格5CNY/l
      tStraw(i_points) = (data{5}.fullFuel+ data{5}.emptyFuel)* yStraw(i_points) * Dis(i_points)/1000 * data{5}.fuelPrice;
      cropGCV(i_points) = data{3}.avaiEnergy * (wheat(i_points) * data{5}.wheatGCV +corn(i_points) * data{5}.cornGCV + sunflower(i_points) * data{5}.sunflowerGCV ...
          + melon(i_points) * data{5}.melonGCV + tomato(i_points) * data{5}.TomatoGCV)*1000;
      capacity(i_points) = cropGCV(i_points) * data{5}.CEAVE / data{5}.meanHours/3600/1000; % 单位MW
    end
    y = sum(tStraw);
    Distance = sum(Dis); % 单位m
    plantCapacity = sum(capacity);
end 

function [y, c] = CLIRCMOP1(x)
    x = x';
    x_odd       = x(:,3:2:end);
    x_even      = x(:,2:2:end);
    g_1         = sum((x_odd - sin(0.5 * pi * x(:,1))).^2,2);
    g_2         = sum((x_even - cos(0.5 * pi * x(:,1))).^2,2);
    y(:,1) = x(:,1) + g_1;
    y(:,2) = 1 - x(:,1) .^ 2 + g_2;
    x_odd       = x(:,3:2:end);
    x_even      = x(:,2:2:end);
    g_1         = sum((x_odd - sin(0.5 * pi * x(:,1))).^2,2);
    g_2         = sum((x_even - cos(0.5 * pi * x(:,1))).^2,2);
    c(:,1) = (0.51 - g_1).*(g_1 - 0.5);
    c(:,2) = (0.51 - g_2).*(g_2 - 0.5);
    y = y';
    c = c';
 end


function [y, c] = CLIRCMOP6(x)
    x = x';
    variable_length = size(x,2);
    popsize         = size(x,1);
    sum1            = zeros(popsize,1);
    sum2            = zeros(popsize,1);
    for j = 2 : variable_length
        if mod(j,2) == 1
            sum1 = sum1+(x(:,j)-sin((0.5*j/variable_length*pi)*x(:,1))).^2;
        else
            sum2 = sum2+(x(:,j)-cos((0.5*j/variable_length*pi)*x(:,1))).^2;
        end
    end
    gx          = 0.7057;
    y(:,1) = x(:,1)+10*sum1+gx;
    y(:,2) = 1-x(:,1).^2+10.*sum2+gx;
    c = -Constraint(y);
    y = y';
    c = c';
end

function [y,c] = DC1_DTLZ1(x)
    x = x';
    M = 3;
    D = M+4;
    g      = 100*(D-M+1+sum((x(:,M:end)-0.5).^2-cos(20.*pi.*(x(:,M:end)-0.5)),2));
    y = 0.5*repmat(1+g,1,M).*fliplr(cumprod([ones(size(x,1),1),x(:,1:M-1)],2)).*[ones(size(x,1),1),1-x(:,M-1:-1:1)];
    c =cos(3*pi*x(:,1)) - 0.5 ;
    y = y';
    c = c';
end



function y = IMOP1(x)
    a1 = 0.05;  % Parameter a1
    K  = 5;     % Parameter K
    x = x';
    y1 = mean(x(:,1:K),2).^a1;
    g  = sum((x(:,K+1:end)-0.5).^2,2);
    y(:,1) = g + cos(y1*pi/2).^8;
    y(:,2) = g + sin(y1*pi/2).^8;
    y = y';
end

function y = IMOP2(x)
    a1 = 0.05;  % Parameter a1
    K  = 5;     % Parameter K
    x = x';
    y1 = mean(x(:,1:K),2).^a1;
    g  = sum((x(:,K+1:end)-0.5).^2,2);
    y(:,1) = g + cos(y1*pi/2).^0.5;
    y(:,2) = g + sin(y1*pi/2).^0.5;
    y = y';
end
function y = IMOP3(x)
    a1 = 0.05;  % Parameter a1
    K  = 5;     % Parameter K
    x = x';
    y1 = mean(x(:,1:K),2).^a1;
    g  = sum((x(:,K+1:end)-0.5).^2,2);
    y(:,1) = g + (1+cos(y1*pi*10)/5-y1);
    y(:,2) = g + y1;
    y = y';
end
function y = IMOP4(x)
    a1 = 0.05;  % Parameter a1
    K  = 5;     % Parameter K
    x = x';
    y1 = mean(x(:,1:K),2).^a1;
    g  = sum((x(:,K+1:end)-0.5).^2,2);
    y(:,1) = (1+g).*(y1);
    y(:,2) = (1+g).*(y1+sin(10*pi*y1)/10);
    y(:,3) = (1+g).*(1-y1);
    y = y';
end
function y = IMOP5(x)
    a1 = 0.05;  % Parameter a1
    a2 = 10;    % Parameter a2
    K  = 5;     % Parameter K
    x = x';
    y1 = mean(x(:,1:2:K),2).^a1;
    y2 = mean(x(:,2:2:K),2).^a2;
    g  = sum((x(:,K+1:end)-0.5).^2,2);
    y(:,1) = 0.4*cos(pi*ceil(y1*8)/4) + 0.1*y2.*cos(16*pi*y1);
    y(:,2) = 0.4*sin(pi*ceil(y1*8)/4) + 0.1*y2.*sin(16*pi*y1);
    y(:,3) = 0.5 - sum(y(:,1:2),2);
    y = y + repmat(g,1,3);
    y = y';
end
function y = IMOP6(x)
    a1 = 0.05;  % Parameter a1
    a2 = 10;    % Parameter a2
    K  = 5;     % Parameter K
    x = x';
    y1 = mean(x(:,1:2:K),2).^a1;
    y2 = mean(x(:,2:2:K),2).^a2;
    g  = sum((x(:,K+1:end)-0.5).^2,2);
    r  = max(0,min(sin(3*pi*y1).^2,sin(3*pi*y2).^2)-0.05);
    y(:,1) = (1+g).*y1 + ceil(r);
    y(:,2) = (1+g).*y2 + ceil(r);
    y(:,3) = (0.5+g).*(2-y1-y2) + ceil(r);
    y = y';
end
function y = IMOP7(x)
    a1 = 0.05;  % Parameter a1
    a2 = 10;    % Parameter a2    
    K  = 5;     % Parameter K
    x = x';
    y1 = mean(x(:,1:2:K),2).^a1;
    y2 = mean(x(:,2:2:K),2).^a2;
    g  = sum((x(:,K+1:end)-0.5).^2,2);
    y(:,1) = (1+g).*cos(y1*pi/2).*cos(y2*pi/2);
    y(:,2) = (1+g).*cos(y1*pi/2).*sin(y2*pi/2);
    y(:,3) = (1+g).*sin(y1*pi/2);
    r = min(min(abs(y(:,1)-y(:,2)),abs(y(:,2)-y(:,3))),abs(y(:,3)-y(:,1)));
    y = y + repmat(10*max(0,r-0.1),1,3);
    y = y';
end
function y = IMOP8(x)
    a1 = 0.05;  % Parameter a1
    a2 = 10;    % Parameter a2
    K  = 5;     % Parameter K
    x = x';
    y1 = mean(x(:,1:2:K),2).^a1;
    y2 = mean(x(:,2:2:K),2).^a2;
    g  = sum((x(:,K+1:end)-0.5).^2,2);
    y(:,1) = y1;
    y(:,2) = y2;
    y(:,3) = (1+g).*(3-sum(y(:,1:2)./(1+repmat(g,1,2)).*(1+sin(19*pi.*y(:,1:2))),2));
    y = y';
end


function y = DTLZ1(x)
   M = 3;
   x = x';
   D = M+4;
%    g      = 100*(D-M+1+sum((x(:,M:end)-0.5).^2-cos(20.*pi.*(x(:,M:end)-0.5)),2));
   g      = (D-M+1+sum((x(:,M:end)-0.5).^2-cos(20.*pi.*(x(:,M:end)-0.5)),2));
   y = 0.5*repmat(1+g,1,M).*fliplr(cumprod([ones(size(x,1),1),x(:,1:M-1)],2)).*[ones(size(x,1),1),1-x(:,M-1:-1:1)];
   y = y';
end

function y = DTLZ2(x)
   M = 3;
   x = x';
   g      = sum((x(:,M:end)-0.5).^2,2);
   y = repmat(1+g,1,M).*fliplr(cumprod([ones(size(g,1),1),cos(x(:,1:M-1)*pi/2)],2)).*[ones(size(g,1),1),sin(x(:,M-1:-1:1)*pi/2)];
   y = y';
end

function y = DTLZ3(x)
   M = 3;
   x = x';
   D = M +9;
%    g      = 100*(D-M+1+sum((x(:,M:end)-0.5).^2-cos(20.*pi.*(x(:,M:end)-0.5)),2));
   g      = (D-M+1+sum((x(:,M:end)-0.5).^2-cos(20.*pi.*(x(:,M:end)-0.5)),2));
   y = repmat(1+g,1,M).*fliplr(cumprod([ones(size(x,1),1),cos(x(:,1:M-1)*pi/2)],2)).*[ones(size(x,1),1),sin(x(:,M-1:-1:1)*pi/2)];
   y = y';
end
function y = DTLZ4(x)
   M = 3;
   x = x';
   x(:,1:M-1) = x(:,1:M-1).^100;
   g      = sum((x(:,M:end)-0.5).^2,2);
   y = repmat(1+g,1,M).*fliplr(cumprod([ones(size(g,1),1),cos(x(:,1:M-1)*pi/2)],2)).*[ones(size(g,1),1),sin(x(:,M-1:-1:1)*pi/2)];
   y = y';
end
function y = DTLZ5(x)
   M = 3;
   x = x';
   g    = sum((x(:,M:end)-0.5).^2,2);
   Temp = repmat(g,1,M-2);
   x(:,2:M-1) = (1+2*Temp.*x(:,2:M-1))./(2+2*Temp);
   y = repmat(1+g,1,M).*fliplr(cumprod([ones(size(g,1),1),cos(x(:,1:M-1)*pi/2)],2)).*[ones(size(g,1),1),sin(x(:,M-1:-1:1)*pi/2)];
   y = y';
end
function y = DTLZ6(x)
   M = 3;
   x = x';
   g    = sum(x(:,M:end).^0.1,2);
   Temp = repmat(g,1,M-2);
   x(:,2:M-1) = (1+2*Temp.*x(:,2:M-1))./(2+2*Temp);
   y = repmat(1+g,1,M).*fliplr(cumprod([ones(size(g,1),1),cos(x(:,1:M-1)*pi/2)],2)).*[ones(size(g,1),1),sin(x(:,M-1:-1:1)*pi/2)];
   y = y';
end

function y = DTLZ7(x)
   M = 3;
   x = x';
   y = zeros(size(x,1),M);
   g      = 1+9*mean(x(:,M:end),2);
   y(:,1:M-1) = x(:,1:M-1);
   y(:,M)     = (1+g).*(M-sum(y(:,1:M-1)./(1+repmat(g,1,M-1)).*(1+sin(3*pi.*y(:,1:M-1))),2));
   y = y';
end
function [y ,c] = CDTLZ8(x)
    M = 3;
    x = x';
    D = 10 * M;
    y = zeros(size(x,1),M);
    for m = 1 : M
       y(:,m) = mean(x(:,(m-1)*D/M+1:m*D/M),2);
    end

    c = zeros(size(y,1),M);
    c(:,1:M-1) = repmat(y(:,M),1,M-1)+4*y(:,1:M-1)-1;
    if M == 2
        c(:,M) = 0;
    else
        minValue = sort(y(:,1:M-1),2);
        c(:,M) = 2*y(:,M) + sum(minValue(:,1:2),2)-1;
    end
    y = y';
    c = c';
end
function [y ,c ] = CDTLZ9(x)
    M = 2;
    D = 10 * M;
    x = x';
    x = x.^0.1;
    y = zeros(size(x,1),M);
    for m = 1 : M
      y(:,m) = sum(x(:,(m-1)*D/M+1:m*D/M),2);
    end
    c =  repmat(y(:,M).^2,1,M-1)+ y(:,1:M-1).^2 -1;
    y = y';
    c = c';
end


function y = WFG1(x)
    [dim, num] = size(x);
    x = x';
    M = 3;
    K = M-1; % a mulitple of M-1
    L = dim - K;
    dim = 1; % is a distance scaling constant
    S = 2 : 2 : 2*M;
    A = ones(1,M-1);

    z01 = x./repmat(2:2:size(x,2)*2,num,1);

    t1 = zeros(num,K+L);
    t1(:,1:K)     = z01(:,1:K);
    t1(:,K+1:end) = s_linear(z01(:,K+1:end),0.35);

    t2 = zeros(num,K+L);
    t2(:,1:K)     = t1(:,1:K);
    t2(:,K+1:end) = b_flat(t1(:,K+1:end),0.8,0.75,0.85);

    t3 = zeros(num,K+L);
    t3 = b_poly(t2,0.02);

    t4 = zeros(num,M);
    for i = 1 : M-1
       t4(:,i) = r_sum(t3(:,(i-1)*K/(M-1)+1:i*K/(M-1)),2*((i-1)*K/(M-1)+1):2:2*i*K/(M-1));
     end
    t4(:,M) = r_sum(t3(:,K+1:K+L),2*(K+1):2:2*(K+L));

    x = zeros(num,M);
    for i = 1 : M-1
        x(:,i) = max(t4(:,M),A(i)).*(t4(:,i)-0.5)+0.5;
    end
     x(:,M) = t4(:,M);

     h      = convex(x);
     h(:,M) = mixed(x);
     y = repmat(dim*x(1,M),1,M) + repmat(S,num,1).*h;
     y = y';
    
end

function y = WFG2(x)
    [dim, num] = size(x);
    x = x';
    M = 3;
    K = M-1;
    L = dim - K;% DISTANCE-RELATED PARAMETERS 
    dim = 1;
    S = 2 : 2 : 2*M;
    A = ones(1,M-1);

    z01 = x./repmat(2:2:size(x,2)*2,num,1);
            
    t1 = zeros(num,K+L);
    t1(:,1:K)     = z01(:,1:K);
    t1(:,K+1:end) = s_linear(z01(:,K+1:end),0.35);

    t2 = zeros(num,K+L/2);
    t2(:,1:K) = t1(:,1:K);
            % Same as <t2(:,i)=r_nonsep(t1(:,K+2*(i-K)-1:K+2*(i-K)),2)>
    t2(:,K+1:K+L/2) = (t1(:,K+1:2:end) + t1(:,K+2:2:end) + 2*abs(t1(:,K+1:2:end)-t1(:,K+2:2:end)))/3;
            % ---------------------------------------------------------
            
    t3 = zeros(num,M);
    for i = 1 : M-1
        t3(:,i) = r_sum(t2(:,(i-1)*K/(M-1)+1:i*K/(M-1)),ones(1,K/(M-1)));
    end
    t3(:,M) = r_sum(t2(:,K+1:K+L/2),ones(1,L/2));

    x = zeros(num,M);
    for i = 1 : M-1
       x(:,i) = max(t3(:,M),A(:,i)).*(t3(:,i)-0.5)+0.5;
    end
    x(:,M) = t3(:,M);

    h      = convex(x);
    h(:,M) = disc(x);
    y = repmat(dim*x(:,M),1,M) + repmat(S,num,1).*h;
    y = y';

end


function y = WFG3(x)
    [dim, num] = size(x);
    x = x';
    M = 3;
    K = M-1;
    L = dim - K;
    dim = 1;
    S = 2 : 2 : 2*M;
    A = [1,zeros(1,M-2)];

    z01 = x./repmat(2:2:size(x,2)*2,num,1);

    t1 = zeros(num,K+L);
    t1(:,1:K)     = z01(:,1:K);
    t1(:,K+1:end) = s_linear(z01(:,K+1:end),0.35);

    t2 = zeros(num,K+L/2);
    t2(:,1:K) = t1(:,1:K);
    % Same as <t2(:,i)=r_nonsep(t1(:,K+2*(i-K)-1:K+2*(i-K)),2)>
    t2(:,K+1:K+L/2) = (t1(:,K+1:2:end) + t1(:,K+2:2:end) + 2*abs(t1(:,K+1:2:end)-t1(:,K+2:2:end)))/3;
    % ---------------------------------------------------------
            
    t3 = zeros(num,M);
    for i = 1 : M-1
       t3(:,i) = r_sum(t2(:,(i-1)*K/(M-1)+1:i*K/(M-1)),ones(1,K/(M-1)));
    end
    t3(:,M) = r_sum(t2(:,K+1:K+L/2),ones(1,L/2));

    x = zeros(num,M);
    for i = 1 : M-1
        x(:,i) = max(t3(:,M),A(:,i)).*(t3(:,i)-0.5)+0.5;
    end
    x(:,M) = t3(:,M);

    h      = linear(x);
    y = repmat(dim*x(:,M),1,M) + repmat(S,num,1).*h;
    y = y';
end


function y = WFG4(x)
        [dim, num] = size(x);
        x = x';
        M = 3;
        K = M-1;
            L = dim - K;
            dim = 1;
            S = 2 : 2 : 2*M;
            A = ones(1,M-1);

            z01 = x./repmat(2:2:size(x,2)*2,num,1);

            t1 = zeros(num,K+L);
            t1 = s_multi(z01,30,10,0.35);

            t2 = zeros(num,M);
            for i = 1 : M-1
                t2(:,i) = r_sum(t1(:,(i-1)*K/(M-1)+1:i*K/(M-1)),ones(1,K/(M-1)));
            end
            t2(:,M) = r_sum(t1(:,K+1:K+L),ones(1,L));

            x = zeros(num,M);
            for i = 1 : M-1
                x(:,i) = max(t2(:,M),A(:,i)).*(t2(:,i)-0.5)+0.5;
            end
            x(:,M) = t2(:,M);

            h = concave(x);
            y = repmat(dim*x(:,M),1,M) + repmat(S,num,1).*h;
            y = y';
end


function  y = WFG5(x)
        [dim, num] = size(x);
        x = x';
        M = 3;
        K = M-1;
        L = dim - K;
            dim = 1;
            S = 2 : 2 : 2*M;
            A = ones(1,M-1);

            z01 = x./repmat(2:2:size(x,2)*2,num,1);
            
            t1 = zeros(num,K+L);
            t1 = s_decept(z01,0.35,0.001,0.05);

            t2 = zeros(num,M);
            for i = 1 : M-1
                t2(:,i) = r_sum(t1(:,(i-1)*K/(M-1)+1:i*K/(M-1)),ones(1,K/(M-1)));
            end
            t2(:,M) = r_sum(t1(:,K+1:K+L),ones(1,L));

            x = zeros(num,M);
            for i = 1 : M-1
                x(:,i) = max(t2(:,M),A(:,i)).*(t2(:,i)-0.5)+0.5;
            end
            x(:,M) = t2(:,M);

            h = concave(x);
            y = repmat(dim*x(:,M),1,M) + repmat(S,num,1).*h;       
            y = y';
end


function  y = WFG6(x)
        [dim, num] = size(x);
        x = x';
        M = 3;
        K = M-1;
        L = dim - K;
        dim = 1;
        S = 2 : 2 : 2*M;
        A = ones(1,M-1);

        z01 = x./repmat(2:2:size(x,2)*2,num,1);
            
        t1 = zeros(num,K+L);
        t1(:,1:K)     = z01(:,1:K);
        t1(:,K+1:end) = s_linear(z01(:,K+1:end),0.35);

        t2 = zeros(num,M);
        for i = 1 : M-1
           t2(:,i) = r_nonsep(t1(:,(i-1)*K/(M-1)+1:i*K/(M-1)),K/(M-1));
        end
        % Same as <t2(:,M)=r_nonsep(t1(:,K+1:end),L)>
        SUM = zeros(num,1);
        for i = K+1 : K+L-1
          for j = i+1 : K+L
             SUM = SUM + abs(t1(:,i)-t1(:,j));
          end
        end
        t2(:,M) = (sum(t1(:,K+1:end),2)+SUM*2)/ceil(L/2)/(1+2*L-2*ceil(L/2));
            % -------------------------------------------

        x = zeros(num,M);
        for i = 1 : M-1
            x(:,i) = max(t2(:,M),A(:,i)).*(t2(:,i)-0.5)+0.5;
        end
        x(:,M) = t2(:,M);

        h = concave(x);
        y = repmat(dim*x(:,M),1,M) + repmat(S,num,1).*h;
        y = y';
        
end


function  y = WFG7(x)
        [dim, num] = size(x);
        x = x';
        M = 3;
        K = M-1;
        L = dim - K;
        dim = 1;
        S = 2 : 2 : 2*M;
        A = ones(1,M-1);

        z01 = x./repmat(2:2:size(x,2)*2,num,1);
            
        t1 = zeros(num,K+L);
        % Same as <t1(:,i)=b_param(z01(:,i),r_sum(z01(:,i+1:end),ones(1,K+L-i)),0.98/49.98,0.02,50)>
        Y = (fliplr(cumsum(fliplr(z01),2))-z01)./repmat(K+L-1:-1:0,num,1);
        t1(:,1:K) = z01(:,1:K).^(0.02+(50-0.02)*(0.98/49.98-(1-2*Y(:,1:K)).*abs(floor(0.5-Y(:,1:K))+0.98/49.98)));
        % ------------------------------------------------------------------------------------------
        t1(:,K+1:end) = z01(:,K+1:end);

        t2 = zeros(num,K+L);
        t2(:,1:K)     = t1(:,1:K);
        t2(:,K+1:end) = s_linear(t1(:,K+1:end),0.35);

        t3 = zeros(num,M);
        for i = 1 : M-1
           t3(:,i) = r_sum(t2(:,(i-1)*K/(M-1)+1:i*K/(M-1)),ones(1,K/(M-1)));
        end
        t3(:,M) = r_sum(t2(:,K+1:K+L),ones(1,L));

        x = zeros(num,M);
        for i = 1 : M-1
          x(:,i) = max(t3(:,M),A(:,i)).*(t3(:,i)-0.5)+0.5;
        end
        x(:,M) = t3(:,M);

        h = concave(x);
        y = repmat(dim*x(:,M),1,M) + repmat(S,num,1).*h;
        y = y';
end


function  y = WFG8(x)
    [dim, num] = size(x);
    x = x';
    M = 3;
    K = M-1;
    L = dim - K;
    dim = 1;
    S = 2 : 2 : 2*M;
    A = ones(1,M-1);

    z01 = x./repmat(2:2:size(x,2)*2,num,1);
            
    t1 = zeros(num,K+L);
    t1(:,1:K) = z01(:,1:K);
    % Same as <t1(:,i)=b_param(z01(:,i),r_sum(z01(:,1:i-1),ones(1,i-1)),0.98/49.98,0.02,50)>
    Y = (cumsum(z01,2)-z01)./repmat(0:K+L-1,num,1);
    t1(:,K+1:K+L) = z01(:,K+1:K+L).^(0.02+(50-0.02)*(0.98/49.98-(1-2*Y(:,K+1:K+L)).*abs(floor(0.5-Y(:,K+1:K+L))+0.98/49.98))); 
    % --------------------------------------------------------------------------------------

    t2 = zeros(num,K+L);
    t2(:,1:K)     = t1(:,1:K);
    t2(:,K+1:end) = s_linear(t1(:,K+1:end),0.35);

    t3 = zeros(num,M);
    for i = 1 : M-1
        t3(:,i) = r_sum(t2(:,(i-1)*K/(M-1)+1:i*K/(M-1)),ones(1,K/(M-1)));
    end
    t3(:,M) = r_sum(t2(:,K+1:K+L),ones(1,L));

    x = zeros(num,M);
    for i = 1 : M-1
       x(:,i) = max(t3(:,M),A(:,i)).*(t3(:,i)-0.5)+0.5;
    end
    x(:,M) = t3(:,M);

    h = concave(x);
    y = repmat(dim*x(:,M),1,M) + repmat(S,num,1).*h;
    y = y';

end

function  y = WFG9(x)
    [dim, num] = size(x);
    x = x';
    M = 3;
    K = M-1;
    L = dim - K;
    dim = 1;
    S = 2 : 2 : 2*M;
    A = ones(1,M-1);

    z01 = x./repmat(2:2:size(x,2)*2,num,1);
            
    t1 = zeros(num,K+L);
    % Same as <t1(:,i)=b_param(z01(:,i),r_sum(z01(:,i+1:end),ones(1,K+L-i)),0.98/49.98,0.02,50)>
    Y = (fliplr(cumsum(fliplr(z01),2))-z01)./repmat(K+L-1:-1:0,num,1);
    t1(:,1:K+L-1) = z01(:,1:K+L-1).^(0.02+(50-0.02)*(0.98/49.98-(1-2*Y(:,1:K+L-1)).*abs(floor(0.5-Y(:,1:K+L-1))+0.98/49.98)));
    % ------------------------------------------------------------------------------------------
    t1(:,end)     = z01(:,end);

    t2 = zeros(num,K+L);
    t2(:,1:K)     = s_decept(t1(:,1:K),0.35,0.001,0.05);
    t2(:,K+1:end) = s_multi(t1(:,K+1:end),30,95,0.35);

    t3 = zeros(num,M);
    for i = 1 : M-1
        t3(:,i) = r_nonsep(t2(:,(i-1)*K/(M-1)+1:i*K/(M-1)),K/(M-1));
    end
    % Same as <t3(:,M)=r_nonsep(t2(:,K+1:end),L)>
    SUM = zeros(num,1);
    for i = K+1 : K+L-1
        for j = i+1 : K+L
           SUM = SUM + abs(t2(:,i)-t2(:,j));
        end
    end
    t3(:,M) = (sum(t2(:,K+1:end),2)+SUM*2)/ceil(L/2)/(1+2*L-2*ceil(L/2));
     % -------------------------------------------

    x = zeros(num,M);
    for i = 1 : M-1
         x(:,i) = max(t3(:,M),A(:,i)).*(t3(:,i)-0.5)+0.5;
    end
    x(:,M) = t3(:,M);

    h = concave(x);
    y = repmat(dim*x(:,M),1,M) + repmat(S,num,1).*h;
    y = y';  
end

function [y, c] = C1_DTLZ1(x)% have some problem
    [dim, ~] = size(x);
    x = x';
    M = 3;
    g      = 10*(dim-M+1+sum((x(1,M:end)-0.5).^2-cos(20.*pi.*(x(1,M:end)-0.5)),2));
    y = 0.5*repmat(1+g,1,M).*fliplr(cumprod([ones(size(x,1),1),x(1,1:M-1)],2)).*[ones(size(x,1),1),1-x(1,M-1:-1:1)];
    c = 1-y(:,end)/0.6 - sum(y(:,1:end-1)/0.5,2);
    y = y';
    c = c';
end

function [y, c] = C2_DTLZ2(x)
    [dim, ~] = size(x);
    x = x';
    M = 3;
    r = 0.4;
    g = sum((x(1,M:dim)-0.5).^2,2);
    y = repmat(1+g,1,M).*fliplr(cumprod([ones(size(g,1),1),cos(x(1,1:M-1)*pi/2)],2)).*[ones(size(g,1),1),sin(x(1,M-1:-1:1)*pi/2)];
    c = min(min((y-1).^2+repmat(sum(y.^2,2),1,M)-y.^2-r^2,[],2),sum((y-1/sqrt(M)).^2,2)-r^2);
    y = y';
    c = c';
end

function [y, c] = C1_DTLZ3(x)
    [dim, ~] = size(x);
    M = 3;
    x = x';
    g      = 10 *(dim-M+1+sum((x(1,M:end)-0.5).^2-cos(20.*pi.*(x(1,M:end)-0.5)),2));
    y = repmat(1+g,1,M).*fliplr(cumprod([ones(size(x,1),1),cos(x(1,1:M-1)*pi/2)],2)).*[ones(size(x,1),1),sin(x(1,M-1:-1:1)*pi/2)];
    if M == 2
      r = 6;
    elseif M <= 3
      r = 9;
    elseif M <= 8
      r = 12.5;
    else
      r = 15;
    end
    c = (sum(y.^2,2)-16).*(sum(y.^2,2)-r.^2);
    y = y';
    c = c';
end
 
function [y, c] = C3_DTLZ4(x)
   [~, ~] = size(x);
   M = 3;
   x = x';
   x(1,1:M-1) = x(1,1:M-1).^100;
   g      = sum((x(1,M:end)-0.5).^2,2);
   y = repmat(1+g,1,M).*fliplr(cumprod([ones(size(g,1),1),cos(x(1,1:M-1)*pi/2)],2)).*[ones(size(g,1),1),sin(x(1,M-1:-1:1)*pi/2)];
   c =  y.^2/4 + (repmat(sum(y.^2,2),1,M)-y.^2)-1;
   y = y';
   c =c';
end

%% Zitzler1 function (ZDT1)
function y = ZDT1 (x)
    % Number of objective is 2.
    % Number of variables is 30. Range x [0,1]
    x = x';
    y(:,1) = x(:,1);
    g = 1 + 9*mean(x(:,2:end),2);
    h = 1 - (y(:,1)./g).^0.5;
    y(:,2) = g.*h;
    y= y';
end


%% Zitzler1 function (ZDT2)
function y = ZDT2 (x)
    % Number of objective is 2.
    % Number of variables is 30. Range x [0,1]
    x = x';
    y(:,1) = x(:,1);
    g = 1 + 9*mean(x(:,2:end),2);
    h = 1 - (y(:,1)./g).^2;
    y(:,2) = g.*h;
    y = y';
end

%% Zitzler1 function (ZDT3) 

function y = ZDT3 (x)
    % Number of objective is 2.
    % Number of variables is 30. Range x [0,1]
    x = x';
    y(:,1) = x(:,1);
    g = 1 + 9*mean(x(:,2:end),2);
    h = 1 - (y(:,1)./g).^0.5 - y(:,1)./g.*sin(10*pi*y(:,1));
    y(:,2) = g.*h;
    y = y';
end

function y = ZDT4 (x)
    % Number of objective is 2.
    % Number of variables is 30. Range x [0,1]
    x = x';
    y(:,1) = x(:,1);
    g = 1 + 10*(size(x,2)-1) + sum(x(:,2:end).^2-10*cos(4*pi*x(:,2:end)),2);
    h = 1 - (y(:,1)./g).^0.5;
    y(:,2) =  g.*h;
    y = y';
end

function y = ZDT5 (x)
    % Number of objective is 2.
    % Number of variables is 30. Range x [0,1]
    x = x';
    u      = zeros(size(x,1),1+(size(x,2)-30)/5);
    u(:,1) = sum(x(:,1),2);
    for i = 2 : size(u,2)
        u(:,i) = sum(x(:,(i-2)*5+31:(i-2)*5+35),2);
    end
    v           = zeros(size(u));
    v(u<5)      = 2 + u(u<5);
    v(u==5)     = 1;
    y(:,1) = 1 + u(:,1);
    g           = sum(v(:,2:end),2);
    h           = 1./y(:,1);
    y(:,2) = g.*h;
    y = y';
end

function  y = ZDT6 (x)
    x = x';
    y(:,1) = 1 - exp(-4*x(:,1)).*sin(6*pi*x(:,1)).^6;
    g = 1 + 9*mean(x(:,2:end),2).^0.25;
    h = 1 - (y(:,1)./g).^2;
    y(:,2) = g.*h;
    y = y';
end


%% UF1

function [y, P] = UF1(x)
    [dim, num]  = size(x);
    tmp         = zeros(dim,num);
    tmp(2:dim,:)= (x(2:dim,:) - sin(6.0*pi*repmat(x(1,:),[dim-1,1]) + pi/dim*repmat((2:dim)',[1,num]))).^2;
    tmp1        = sum(tmp(3:2:dim,:));  % odd index
    tmp2        = sum(tmp(2:2:dim,:));  % even index
    y(1,:)      = x(1,:)             + 2.0*tmp1/size(3:2:dim,2);
    y(2,:)      = 1.0 - sqrt(x(1,:)) + 2.0*tmp2/size(2:2:dim,2);

    clear tmp;
end



%% UF2
% x and y are columnwise, the imput x must be inside the search space and
% it could be a matrix
function [y, P] = UF2(x)
    [dim, num]  = size(x);
    X1          = repmat(x(1,:),[dim-1,1]);
    A           = 6*pi*X1 + pi/dim*repmat((2:dim)',[1,num]);
    tmp         = zeros(dim,num);    
    tmp(2:dim,:)= (x(2:dim,:) - 0.3*X1.*(X1.*cos(4.0*A)+2.0).*cos(A)).^2;
    tmp1        = sum(tmp(3:2:dim,:));  % odd index
    tmp(2:dim,:)= (x(2:dim,:) - 0.3*X1.*(X1.*cos(4.0*A)+2.0).*sin(A)).^2;
    tmp2        = sum(tmp(2:2:dim,:));  % even index
    y(1,:)      = x(1,:)             + 2.0*tmp1/size(3:2:dim,2); 
    y(2,:)      = 1.0 - sqrt(x(1,:)) + 2.0*tmp2/size(2:2:dim,2); 
    
    clear X1 A tmp;
end

%% UF3
% x and y are columnwise, the imput x must be inside the search space and
% it could be a matrix
function y = UF3(x)
    [dim, num]   = size(x);
    Y            = zeros(dim,num);
    Y(2:dim,:)   = x(2:dim,:) - repmat(x(1,:),[dim-1,1]).^(0.5+1.5*(repmat((2:dim)',[1,num])-2.0)/(dim-2.0));
    tmp1         = zeros(dim,num);
    tmp1(2:dim,:)= Y(2:dim,:).^2;
    tmp2         = zeros(dim,num);
    tmp2(2:dim,:)= cos(20.0*pi*Y(2:dim,:)./sqrt(repmat((2:dim)',[1,num])));
    tmp11        = 4.0*sum(tmp1(3:2:dim,:)) - 2.0*prod(tmp2(3:2:dim,:)) + 2.0;  % odd index
    tmp21        = 4.0*sum(tmp1(2:2:dim,:)) - 2.0*prod(tmp2(2:2:dim,:)) + 2.0;  % even index
    y(1,:)       = x(1,:)             + 2.0*tmp11/size(3:2:dim,2);
    y(2,:)       = 1.0 - sqrt(x(1,:)) + 2.0*tmp21/size(2:2:dim,2);
    clear Y tmp1 tmp2;
end

%% UF4
% x and y are columnwise, the imput x must be inside the search space and
% it could be a matrix
function y = UF4(x)
    [dim, num]  = size(x);
    Y           = zeros(dim,num);
    Y(2:dim,:)  = x(2:dim,:) - sin(6.0*pi*repmat(x(1,:),[dim-1,1]) + pi/dim*repmat((2:dim)',[1,num]));
    H           = zeros(dim,num);
    H(2:dim,:)  = abs(Y(2:dim,:))./(1.0+exp(2.0*abs(Y(2:dim,:))));
    tmp1        = sum(H(3:2:dim,:));  % odd index
    tmp2        = sum(H(2:2:dim,:));  % even index
    y(1,:)      = x(1,:)          + 2.0*tmp1/size(3:2:dim,2);
    y(2,:)      = 1.0 - x(1,:).^2 + 2.0*tmp2/size(2:2:dim,2);
    clear Y H;
end

%% UF5
% x and y are columnwise, the imput x must be inside the search space and
% it could be a matrix
function y = UF5(x)
    N           = 10.0;
    E           = 0.1;
    [dim, num]  = size(x);
    Y           = zeros(dim,num);
    Y(2:dim,:)  = x(2:dim,:) - sin(6.0*pi*repmat(x(1,:),[dim-1,1]) + pi/dim*repmat((2:dim)',[1,num]));
    H           = zeros(dim,num);
    H(2:dim,:)  = 2.0*Y(2:dim,:).^2 - cos(4.0*pi*Y(2:dim,:)) + 1.0;
    tmp1        = sum(H(3:2:dim,:));  % odd index
    tmp2        = sum(H(2:2:dim,:));  % even index
    tmp         = (0.5/N+E)*abs(sin(2.0*N*pi*x(1,:)));
    y(1,:)      = x(1,:)      + tmp + 2.0*tmp1/size(3:2:dim,2);
    y(2,:)      = 1.0 - x(1,:)+ tmp + 2.0*tmp2/size(2:2:dim,2);
    clear Y H;
end

%% UF6
% x and y are columnwise, the imput x must be inside the search space and
% it could be a matrix
function y = UF6(x)
    N            = 2.0;
    E            = 0.1;
    [dim, num]   = size(x);
    Y            = zeros(dim,num);
    Y(2:dim,:)  = x(2:dim,:) - sin(6.0*pi*repmat(x(1,:),[dim-1,1]) + pi/dim*repmat((2:dim)',[1,num]));
    tmp1         = zeros(dim,num);
    tmp1(2:dim,:)= Y(2:dim,:).^2;
    tmp2         = zeros(dim,num);
    tmp2(2:dim,:)= cos(20.0*pi*Y(2:dim,:)./sqrt(repmat((2:dim)',[1,num])));
    tmp11        = 4.0*sum(tmp1(3:2:dim,:)) - 2.0*prod(tmp2(3:2:dim,:)) + 2.0;  % odd index
    tmp21        = 4.0*sum(tmp1(2:2:dim,:)) - 2.0*prod(tmp2(2:2:dim,:)) + 2.0;  % even index
    tmp          = max(0,(1.0/N+2.0*E)*sin(2.0*N*pi*x(1,:)));
    y(1,:)       = x(1,:)       + tmp + 2.0*tmp11/size(3:2:dim,2);
    y(2,:)       = 1.0 - x(1,:) + tmp + 2.0*tmp21/size(2:2:dim,2);
    clear Y tmp1 tmp2;
end

%% UF7
% x and y are columnwise, the imput x must be inside the search space and
% it could be a matrix
function y = UF7(x)
    [dim, num]  = size(x);
    Y           = zeros(dim,num);
    Y(2:dim,:)  = (x(2:dim,:) - sin(6.0*pi*repmat(x(1,:),[dim-1,1]) + pi/dim*repmat((2:dim)',[1,num]))).^2;
    tmp1        = sum(Y(3:2:dim,:));  % odd index
    tmp2        = sum(Y(2:2:dim,:));  % even index
    tmp         = (x(1,:)).^0.2;
    y(1,:)      = tmp       + 2.0*tmp1/size(3:2:dim,2);
    y(2,:)      = 1.0 - tmp + 2.0*tmp2/size(2:2:dim,2);
    clear Y;
end

%% UF8
% x and y are columnwise, the imput x must be inside the search space and
% it could be a matrix
function y = UF8(x)
    [dim, num]  = size(x);
    Y           = zeros(dim,num);
    Y(3:dim,:)  = (x(3:dim,:) - 2.0*repmat(x(2,:),[dim-2,1]).*sin(2.0*pi*repmat(x(1,:),[dim-2,1]) + pi/dim*repmat((3:dim)',[1,num]))).^2;
    tmp1        = sum(Y(4:3:dim,:));  % j-1 = 3*k
    tmp2        = sum(Y(5:3:dim,:));  % j-2 = 3*k
    tmp3        = sum(Y(3:3:dim,:));  % j-0 = 3*k
    y(1,:)      = cos(0.5*pi*x(1,:)).*cos(0.5*pi*x(2,:)) + 2.0*tmp1/size(4:3:dim,2);
    y(2,:)      = cos(0.5*pi*x(1,:)).*sin(0.5*pi*x(2,:)) + 2.0*tmp2/size(5:3:dim,2);
    y(3,:)      = sin(0.5*pi*x(1,:))                     + 2.0*tmp3/size(3:3:dim,2);
    clear Y;
end

%% UF9
% x and y are columnwise, the imput x must be inside the search space and
% it could be a matrix
function y = UF9(x)
    E           = 0.1;
    [dim, num]  = size(x);
    Y           = zeros(dim,num);
    Y(3:dim,:)  = (x(3:dim,:) - 2.0*repmat(x(2,:),[dim-2,1]).*sin(2.0*pi*repmat(x(1,:),[dim-2,1]) + pi/dim*repmat((3:dim)',[1,num]))).^2;
    tmp1        = sum(Y(4:3:dim,:));  % j-1 = 3*k
    tmp2        = sum(Y(5:3:dim,:));  % j-2 = 3*k
    tmp3        = sum(Y(3:3:dim,:));  % j-0 = 3*k
    tmp         = max(0,(1.0+E)*(1-4.0*(2.0*x(1,:)-1).^2));
    y(1,:)      = 0.5*(tmp+2*x(1,:)).*x(2,:)     + 2.0*tmp1/size(4:3:dim,2);
    y(2,:)      = 0.5*(tmp-2*x(1,:)+2.0).*x(2,:) + 2.0*tmp2/size(5:3:dim,2);
    y(3,:)      = 1-x(2,:)                       + 2.0*tmp3/size(3:3:dim,2);
    clear Y;
end

%% UF10
% x and y are columnwise, the imput x must be inside the search space and
% it could be a matrix
function y = UF10(x)
    [dim, num]  = size(x);
    Y           = zeros(dim,num);
    Y(3:dim,:)  = x(3:dim,:) - 2.0*repmat(x(2,:),[dim-2,1]).*sin(2.0*pi*repmat(x(1,:),[dim-2,1]) + pi/dim*repmat((3:dim)',[1,num]));
    H           = zeros(dim,num);
    H(3:dim,:)  = 4.0*Y(3:dim,:).^2 - cos(8.0*pi*Y(3:dim,:)) + 1.0;
    tmp1        = sum(H(4:3:dim,:));  % j-1 = 3*k
    tmp2        = sum(H(5:3:dim,:));  % j-2 = 3*k
    tmp3        = sum(H(3:3:dim,:));  % j-0 = 3*k
    y(1,:)      = cos(0.5*pi*x(1,:)).*cos(0.5*pi*x(2,:)) + 2.0*tmp1/size(4:3:dim,2);
    y(2,:)      = cos(0.5*pi*x(1,:)).*sin(0.5*pi*x(2,:)) + 2.0*tmp2/size(5:3:dim,2);
    y(3,:)      = sin(0.5*pi*x(1,:))                     + 2.0*tmp3/size(3:3:dim,2);
    clear Y H;
end


%% CF1
% x and y are columnwise, the imput x must be inside the search space and
% it could be a matrix
function [y,c] = CF1(x)
    a            = 1.0;
    N            = 10.0;
    [dim, num]   = size(x);
    Y            = zeros(dim,num);
    Y(2:dim,:)   = (x(2:dim,:) - repmat(x(1,:),[dim-1,1]).^(0.5+1.5*(repmat((2:dim)',[1,num])-2.0)/(dim-2.0))).^2;
    tmp1         = sum(Y(3:2:dim,:));% odd index
    tmp2         = sum(Y(2:2:dim,:));% even index 
    y(1,:)       = x(1,:)       + 2.0*tmp1/size(3:2:dim,2);
    y(2,:)       = 1.0 - x(1,:) + 2.0*tmp2/size(2:2:dim,2);
    c(1,:)       = y(1,:) + y(2,:) - a*abs(sin(N*pi*(y(1,:)-y(2,:)+1.0))) - 1.0; % >=0
    clear Y;
end

%% CF2
% x and y are columnwise, the imput x must be inside the search space and
% it could be a matrix
function [y,c] = CF2(x)
    a           = 1.0;
    N           = 2.0;
    [dim, num]  = size(x);
    tmp         = zeros(dim,num);
    tmp(2:dim,:)= (x(2:dim,:) - sin(6.0*pi*repmat(x(1,:),[dim-1,1]) + pi/dim*repmat((2:dim)',[1,num]))).^2;
    tmp1        = sum(tmp(3:2:dim,:));  % odd index
    tmp(2:dim,:)= (x(2:dim,:) - cos(6.0*pi*repmat(x(1,:),[dim-1,1]) + pi/dim*repmat((2:dim)',[1,num]))).^2;
    tmp2        = sum(tmp(2:2:dim,:));  % even index
    y(1,:)      = x(1,:)             + 2.0*tmp1/size(3:2:dim,2);
    y(2,:)      = 1.0 - sqrt(x(1,:)) + 2.0*tmp2/size(2:2:dim,2);
    t           = y(2,:) + sqrt(y(1,:)) - a*sin(N*pi*(sqrt(y(1,:))-y(2,:)+1.0)) - 1.0; 
%     c(1,:)      = sign(t).*abs(t)./(1.0+exp(4.0*abs(t)));
    c(1,:)      = t./(1.0+exp(4.0*abs(t)));
    clear tmp;
end

%% CF3
% x and y are columnwise, the imput x must be inside the search space and
% it could be a matrix
function [y,c] = CF3(x)
    a            = 1.0;
    N            = 2.0;
    [dim, num]   = size(x);
    Y            = zeros(dim,num);
    Y(2:dim,:)   = x(2:dim,:) - sin(6.0*pi*repmat(x(1,:),[dim-1,1]) + pi/dim*repmat((2:dim)',[1,num]));
    tmp1         = zeros(dim,num);
    tmp1(2:dim,:)= Y(2:dim,:).^2;
    tmp2         = zeros(dim,num);
    tmp2(2:dim,:)= cos(20.0*pi*Y(2:dim,:)./sqrt(repmat((2:dim)',[1,num])));
    tmp11        = 4.0*sum(tmp1(3:2:dim,:)) - 2.0*prod(tmp2(3:2:dim,:)) + 2.0;  % odd index
    tmp21        = 4.0*sum(tmp1(2:2:dim,:)) - 2.0*prod(tmp2(2:2:dim,:)) + 2.0;  % even index
    y(1,:)       = x(1,:)          + 2.0*tmp11/size(3:2:dim,2);
    y(2,:)       = 1.0 - x(1,:).^2 + 2.0*tmp21/size(2:2:dim,2);
    c(1,:)       = y(2,:) + y(1,:).^2 - a*sin(N*pi*(y(1,:).^2-y(2,:)+1.0)) - 1.0;   
    clear Y tmp1 tmp2;
end

%% CF4
% x and y are columnwise, the imput x must be inside the search space and
% it could be a matrix
function [y,c] = CF4(x)
    [dim, num]  = size(x);
    tmp         = zeros(dim,num);
    tmp(2:dim,:)= x(2:dim,:) - sin(6.0*pi*repmat(x(1,:),[dim-1,1]) + pi/dim*repmat((2:dim)',[1,num]));
    tmp1        = sum(tmp(3:2:dim,:).^2);  % odd index
    tmp2        = sum(tmp(4:2:dim,:).^2);  % even index
    index1      = tmp(2,:) < (1.5-0.75*sqrt(2.0));
    index2      = tmp(2,:)>= (1.5-0.75*sqrt(2.0));
    tmp(2,index1) = abs(tmp(2,index1));
    tmp(2,index2) = 0.125 + (tmp(2,index2)-1.0).^2;
    y(1,:)      = x(1,:)                  + tmp1;
    y(2,:)      = 1.0 - x(1,:) + tmp(2,:) + tmp2;
    t           = x(2,:) - sin(6.0*pi*x(1,:)+2.0*pi/dim) - 0.5*x(1,:) + 0.25;
    c(1,:)      = sign(t).*abs(t)./(1.0+exp(4.0*abs(t)));
    clear tmp index1 index2;
end

%% CF5
% x and y are columnwise, the imput x must be inside the search space and
% it could be a matrix
function [y,c] = CF5(x)
    [dim, num]  = size(x);
    tmp         = zeros(dim,num);
    tmp(2:dim,:)= x(2:dim,:) - 0.8*repmat(x(1,:),[dim-1,1]).*cos(6.0*pi*repmat(x(1,:),[dim-1,1]) + pi/dim*repmat((2:dim)',[1,num]));
    tmp1        = sum(2.0*tmp(3:2:dim,:).^2-cos(4.0*pi*tmp(3:2:dim,:))+1.0);  % odd index
    tmp(2:dim,:)= x(2:dim,:) - 0.8*repmat(x(1,:),[dim-1,1]).*sin(6.0*pi*repmat(x(1,:),[dim-1,1]) + pi/dim*repmat((2:dim)',[1,num]));    
    tmp2        = sum(2.0*tmp(4:2:dim,:).^2-cos(4.0*pi*tmp(4:2:dim,:))+1.0);  % even index
    index1      = tmp(2,:) < (1.5-0.75*sqrt(2.0));
    index2      = tmp(2,:)>= (1.5-0.75*sqrt(2.0));
    tmp(2,index1) = abs(tmp(2,index1));
    tmp(2,index2) = 0.125 + (tmp(2,index2)-1.0).^2;
    y(1,:)      = x(1,:)                  + tmp1;
    y(2,:)      = 1.0 - x(1,:) + tmp(2,:) + tmp2;
    c(1,:)      = x(2,:) - 0.8*x(1,:).*sin(6.0*pi*x(1,:)+2.0*pi/dim) - 0.5*x(1,:) + 0.25;
    clear tmp;
end

%% CF6
% x and y are columnwise, the imput x must be inside the search space and
% it could be a matrix
function [y,c] = CF6(x)
    [dim, num]  = size(x);
    tmp         = zeros(dim,num);
    tmp(2:dim,:)= x(2:dim,:) - 0.8*repmat(x(1,:),[dim-1,1]).*cos(6.0*pi*repmat(x(1,:),[dim-1,1]) + pi/dim*repmat((2:dim)',[1,num]));
    tmp1        = sum(tmp(3:2:dim,:).^2);  % odd index
    tmp(2:dim,:)= x(2:dim,:) - 0.8*repmat(x(1,:),[dim-1,1]).*sin(6.0*pi*repmat(x(1,:),[dim-1,1]) + pi/dim*repmat((2:dim)',[1,num]));    
    tmp2        = sum(tmp(2:2:dim,:).^2);  % even index
    y(1,:)      = x(1,:)            + tmp1;
    y(2,:)      = (1.0 - x(1,:)).^2 + tmp2;
    tmp         = 0.5*(1-x(1,:))-(1-x(1,:)).^2;
    c(1,:)      = x(2,:) - 0.8*x(1,:).*sin(6.0*pi*x(1,:)+2*pi/dim) - sign(tmp).*sqrt(abs(tmp));
    tmp         = 0.25*sqrt(1-x(1,:))-0.5*(1-x(1,:));
    c(2,:)      = x(4,:) - 0.8*x(1,:).*sin(6.0*pi*x(1,:)+4*pi/dim) - sign(tmp).*sqrt(abs(tmp));    
    clear tmp;
end

%% CF7
% x and y are columnwise, the imput x must be inside the search space and
% it could be a matrix
function [y,c] = CF7(x)
    [dim, num]  = size(x);
    tmp         = zeros(dim,num);
    tmp(2:dim,:)= x(2:dim,:) - cos(6.0*pi*repmat(x(1,:),[dim-1,1]) + pi/dim*repmat((2:dim)',[1,num]));
    tmp1        = sum(2.0*tmp(3:2:dim,:).^2-cos(4.0*pi*tmp(3:2:dim,:))+1.0);  % odd index
    tmp(2:dim,:)= x(2:dim,:) - sin(6.0*pi*repmat(x(1,:),[dim-1,1]) + pi/dim*repmat((2:dim)',[1,num]));
    tmp2        = sum(2.0*tmp(6:2:dim,:).^2-cos(4.0*pi*tmp(6:2:dim,:))+1.0);  % even index
    tmp(2,:)    = tmp(2,:).^2;
    tmp(4,:)    = tmp(4,:).^2;
    y(1,:)      = x(1,:)                                  + tmp1;
    y(2,:)      = (1.0 - x(1,:)).^2 + tmp(2,:) + tmp(4,:) + tmp2;
    tmp         = 0.5*(1-x(1,:))-(1-x(1,:)).^2;
    c(1,:)      = x(2,:) - sin(6.0*pi*x(1,:)+2*pi/dim) - sign(tmp).*sqrt(abs(tmp));
    tmp         = 0.25*sqrt(1-x(1,:))-0.5*(1-x(1,:));
    c(2,:)      = x(4,:) - sin(6.0*pi*x(1,:)+4*pi/dim) - sign(tmp).*sqrt(abs(tmp));    
    clear tmp;
end

%% CF8
% x and y are columnwise, the imput x must be inside the search space and
% it could be a matrix
function [y,c] = CF8(x)
    N           = 2.0;
    a           = 4.0;
    [dim, num]  = size(x);
    Y           = zeros(dim,num);
    Y(3:dim,:)  = (x(3:dim,:) - 2.0*repmat(x(2,:),[dim-2,1]).*sin(2.0*pi*repmat(x(1,:),[dim-2,1]) + pi/dim*repmat((3:dim)',[1,num]))).^2;
    tmp1        = sum(Y(4:3:dim,:));  % j-1 = 3*k
    tmp2        = sum(Y(5:3:dim,:));  % j-2 = 3*k
    tmp3        = sum(Y(3:3:dim,:));  % j-0 = 3*k
    y(1,:)      = cos(0.5*pi*x(1,:)).*cos(0.5*pi*x(2,:)) + 2.0*tmp1/size(4:3:dim,2);
    y(2,:)      = cos(0.5*pi*x(1,:)).*sin(0.5*pi*x(2,:)) + 2.0*tmp2/size(5:3:dim,2);
    y(3,:)      = sin(0.5*pi*x(1,:))                     + 2.0*tmp3/size(3:3:dim,2);
    c(1,:)      = (y(1,:).^2+y(2,:).^2)./(1.0-y(3,:).^2) - a*abs(sin(N*pi*((y(1,:).^2-y(2,:).^2)./(1.0-y(3,:).^2)+1.0))) - 1.0;
    clear Y;
end

%% CF9
% x and y are columnwise, the imput x must be inside the search space and
% it could be a matrix
function [y,c] = CF9(x)
    N           = 2.0;
    a           = 3.0;
    [dim, num]  = size(x);
    Y           = zeros(dim,num);
    Y(3:dim,:)  = (x(3:dim,:) - 2.0*repmat(x(2,:),[dim-2,1]).*sin(2.0*pi*repmat(x(1,:),[dim-2,1]) + pi/dim*repmat((3:dim)',[1,num]))).^2;
    tmp1        = sum(Y(4:3:dim,:));  % j-1 = 3*k
    tmp2        = sum(Y(5:3:dim,:));  % j-2 = 3*k
    tmp3        = sum(Y(3:3:dim,:));  % j-0 = 3*k
    y(1,:)      = cos(0.5*pi*x(1,:)).*cos(0.5*pi*x(2,:)) + 2.0*tmp1/size(4:3:dim,2);
    y(2,:)      = cos(0.5*pi*x(1,:)).*sin(0.5*pi*x(2,:)) + 2.0*tmp2/size(5:3:dim,2);
    y(3,:)      = sin(0.5*pi*x(1,:))                     + 2.0*tmp3/size(3:3:dim,2);
    c(1,:)      = (y(1,:).^2+y(2,:).^2)./(1.0-y(3,:).^2) - a*sin(N*pi*((y(1,:).^2-y(2,:).^2)./(1.0-y(3,:).^2)+1.0)) - 1.0;
    clear Y;
end

%% CF10
% x and y are columnwise, the imput x must be inside the search space and
% it could be a matrix
function [y,c] = CF10(x)
    a           = 1.0;
    N           = 2.0;
    [dim, num]  = size(x);
    Y           = zeros(dim,num);
    Y(3:dim,:)  = x(3:dim,:) - 2.0*repmat(x(2,:),[dim-2,1]).*sin(2.0*pi*repmat(x(1,:),[dim-2,1]) + pi/dim*repmat((3:dim)',[1,num]));
    H           = zeros(dim,num);
    H(3:dim,:)  = 4.0*Y(3:dim,:).^2 - cos(8.0*pi*Y(3:dim,:)) + 1.0;
    tmp1        = sum(H(4:3:dim,:));  % j-1 = 3*k
    tmp2        = sum(H(5:3:dim,:));  % j-2 = 3*k
    tmp3        = sum(H(3:3:dim,:));  % j-0 = 3*k
    y(1,:)      = cos(0.5*pi*x(1,:)).*cos(0.5*pi*x(2,:)) + 2.0*tmp1/size(4:3:dim,2);
    y(2,:)      = cos(0.5*pi*x(1,:)).*sin(0.5*pi*x(2,:)) + 2.0*tmp2/size(5:3:dim,2);
    y(3,:)      = sin(0.5*pi*x(1,:))                     + 2.0*tmp3/size(3:3:dim,2);
    c(1,:)      = (y(1,:).^2+y(2,:).^2)./(1.0-y(3,:).^2) - a*sin(N*pi*((y(1,:).^2-y(2,:).^2)./(1.0-y(3,:).^2)+1.0)) - 1.0;
    clear Y H;
end





%*****************************************
function Output = s_linear(y,A)
    Output = abs(y-A)./abs(floor(A-y)+A);
end
function Output = r_nonsep(y,A)
    Output = zeros(size(y,1),1);
    for j = 1 : size(y,2)
        Temp = zeros(size(y,1),1);
        for k = 0 : A-2
            Temp = Temp+abs(y(:,j)-y(:,1+mod(j+k,size(y,2))));
        end
        Output = Output+y(:,j)+Temp;
    end
    Output = Output./(size(y,2)/A)/ceil(A/2)/(1+2*A-2*ceil(A/2));
end
function Output = b_flat(y,A,B,C)
    Output = A+min(0,floor(y-B))*A.*(B-y)/B-min(0,floor(C-y))*(1-A).*(y-C)/(1-C);
    Output = round(Output*1e4)/1e4;
end

function Output = b_poly(y,a)
    Output = y.^a;
end

function Output = r_sum(y,w)
    Output = sum(y.*repmat(w,size(y,1),1),2)./sum(w);
end

function Output = convex(x)
    Output = fliplr(cumprod([ones(size(x,1),1),1-cos(x(:,1:end-1)*pi/2)],2)).*[ones(size(x,1),1),1-sin(x(:,end-1:-1:1)*pi/2)];
end
function Output = mixed(x)
    Output = 1-x(:,1)-cos(10*pi*x(:,1)+pi/2)/10/pi;
end

function Output = disc(x)
    Output = 1-x(:,1).*(cos(5*pi*x(:,1))).^2;
end
function Output = linear(x)
    Output = fliplr(cumprod([ones(size(x,1),1),x(:,1:end-1)],2)).*[ones(size(x,1),1),1-x(:,end-1:-1:1)];
end
function Output = concave(x)
    Output = fliplr(cumprod([ones(size(x,1),1),sin(x(:,1:end-1)*pi/2)],2)).*[ones(size(x,1),1),cos(x(:,end-1:-1:1)*pi/2)];
end

function Output = s_multi(y,A,B,C)
    Output = (1+cos((4*A+2)*pi*(0.5-abs(y-C)/2./(floor(C-y)+C)))+4*B*(abs(y-C)/2./(floor(C-y)+C)).^2)/(B+2);
end
function Output = s_decept(y,A,B,C)
    Output = 1+(abs(y-A)-B).*(floor(y-A+B)*(1-C+(A-B)/B)/(A-B)+floor(A+B-y)*(1-C+(1-A-B)/B)/(1-A-B)+1/B);
end

function PopCon = Constraint(PopObj)
    p     = [1.8,2.8];
    q     = [1.8,2.8];
    a     = [2,2];
    b     = [8,8];
    r     = 0.1;
    theta = -0.25 * pi;
    for k = 1 : 2
        PopCon(:,k) = r - ((PopObj(:,1)-p(k))*cos(theta)-(PopObj(:,2)-q(k))*sin(theta)).^2/(a(k)^2) -...
                      ((PopObj(:,1)-p(k))*sin(theta)+(PopObj(:,2)-q(k))*cos(theta)).^2/(b(k)^2);
    end
end

