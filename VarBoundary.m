function [range, GreyWolves] = VarBoundary(varargin)
%******************************* VarBoundary ************************************
%% Function: VarBoundary()
%% Description: 
%   Set the minimum and maximum values of test problems
%
% ----------------------------  Function   ---------------------------------
%% Syntax:  
%   range = VarBoundary(name,dim)
%% Parameters:
%   Inputs:
%       name: the name of test problem
%       dim:  the number of variables
%   Output:
%      range: the minimum and maximum values of the test problem,
%      range(:,1): minimum, range(:,2):maximum
%                
%                    Zhang, T.
%        Revision: 1.0.0  Date: 2021-04-01
%************************************************************************
    name = varargin{1};
    dim  = varargin{2};
    data = varargin{3};
    pionts = varargin{4};
    numGWO = varargin{5};
    objFun = varargin{7};
    gWolf = varargin{6};
    range = zeros(dim,2,numGWO);  
    GreyWolves =  repmat(gWolf,[numGWO,1]);
    switch name
        case {'UF1','UF2','UF5','UF6','UF7','CF2'}
            range(1,1)      =  0;
            range(2:dim,1)  = -1;
        case 'UF3'
            range(:,1)      =  0;  
        case {'UF4','CF3','CF4','CF5','CF6','CF7'}
            range(1,1)      =  0;
            range(2:dim,1)  = -2;
            range(2:dim,2)  =  2; 
        case {'UF8','UF9','UF10','CF9','CF10'}
            range(1:2,1)    =  0;
            range(3:dim,1)  = -2;
            range(3:dim,2)  =  2;   
        case 'CF1'
            range(:,1)      =  0; 
        case {'CF8'}
            range(1:2,1)    =  0;
            range(3:dim,1)  = -4;
            range(3:dim,2)  =  4;  
        case {'ZDT1','ZDT2','ZDT3','ZDT6','DTLZ1','DTLZ2','DTLZ3','DTLZ4','DTLZ5','DTLZ6','DTLZ7','DTLZ8','DTLZ9','C1_DTLZ1','C2_DTLZ2','C1_DTLZ3',...
                'C3_DTLZ4','IMOP1','IMOP2','IMOP3','IMOP4','IMOP5','IMOP6','IMOP7','IMOP8','DC1_DTLZ1','LIRCMOP1','LIRCMOP6'}
            range(:,1) = 0;
            range(:,2) = 1;
        case {'WFG1','WFG2','WFG3','WFG4','WFG5','WFG6','WFG7','WFG8','WFG9'}
            range(:,1) = 0;
            range(:,2) = (2 :2: 2*dim);
        case{'ZDT4'}
            range(1,1) = 0;
            range(2:dim,1) = -5;
            range(2:dim,2) = 5;
        case{'ZDT5'}
            range(:,1) = 0;
            range(1:2) =103741824;
            range(2:dim,2) = 32;
        case {'Map'}
            % 1 Wuyuan 2 Linhe 3 Urad qianqi 4 Hangjihouqi 5 Dengkou
            shape = varargin{3};
            range = [min(shape.X), max(shape.X); min(shape.Y), max(shape.Y)];
              
        case {'GoodLuck'}
            %  修改决策变量，决策变量以m=1来进行拆分，m=1表示漫灌的面积ARE，m=2表示滴灌增加的面积FWS,因此代码中决策变量x表示两个含义
            %  以2014年数据为参考，五原县滴灌主要用于种植玉米400hm2；磴口县滴灌主要种植玉米66.6667hm2，葵花：22hm2；乌拉特前旗滴灌主要种植玉米22453.3333hm2，葵花5566.6667hm2
%             dripTArea = data{1}.maxDrip; %每个阶段前三个区域最大调整为5000hm2
%             dripTArea2 = data{1}.maxDripT; % 每个阶段后两个区域的最大滴灌调整面积 2000hm2
%             potentialDArea = [data{10}(1).dripArea data{10}(2).dripArea data{10}(3).dripArea data{10}(4).dripArea data{10}(5).dripArea];
            %===================Wuyuan=====================================
            % 1-40  
            wheatAreaMin = data{8}(1).wheatAreaMin;
            wheatAreaMax = data{8}(1).wheatAreaMax;
            dripTArea = data{8}(1).wheatTAdd;
            for i_Gwo = 1 : numGWO
                wheatArea = unifrnd(wheatAreaMin,wheatAreaMax);           
                range(21,1,i_Gwo) = 0; % min area of wheat
                range(21,2,i_Gwo) = min([wheatArea,dripTArea]);
                GreyWolves(i_Gwo).position(21) = unifrnd(range(21,1,i_Gwo),range(21, 2,i_Gwo),1,1);
                GreyWolves(i_Gwo).position(1) = wheatArea - GreyWolves(i_Gwo).position(21);
                range(1,1,i_Gwo) = wheatAreaMin - GreyWolves(i_Gwo).position(21); 
                range(1,2,i_Gwo) = wheatAreaMax - GreyWolves(i_Gwo).position(21);
                for t = 2 : 20
                   range(20 + t ,2,i_Gwo) = min([ wheatArea, t * dripTArea]); %  max area of added drip for wheat
                   range(20 + t,1,i_Gwo) = min([ wheatArea, (t-1)* dripTArea]);
                   GreyWolves(i_Gwo).position(20 + t ) = unifrnd(range(20 + t ,1,i_Gwo),range(20 +t, 2,i_Gwo),1,1);
                   % 滴灌加入随机range的目的是为了体现每个时段的总的作物面积的波动变化；否则仅用wheatArea，则会出现所有时段均不变化的局面
                   range(t,1,i_Gwo) = wheatArea - GreyWolves(i_Gwo).position(20 + t ); % 减去滴灌的漫灌最小面积
                   range(t,2,i_Gwo) = GreyWolves(i_Gwo).position(t-1); % 上一时段漫灌的面积
                   GreyWolves(i_Gwo).position(t) = unifrnd(range(t,1,i_Gwo),range(t,2,i_Gwo),1,1);
                end           
            end % end for i_Gwo
             
            % 41-80  
            
            cornAreaMin = data{8}(1).cornAreaMin;
            cornAreaMax = data{8}(1).cornAreaMax;
            dripTArea = data{8}(1).cornTAdd;
            for i_Gwo = 1 : numGWO
                cornArea = unifrnd(cornAreaMin,cornAreaMax);
                range(61,1,i_Gwo) = 0; % min area of corn
                range(61,2,i_Gwo) = min([cornArea,dripTArea]);
                GreyWolves(i_Gwo).position(61) = unifrnd(range(61,1,i_Gwo),range(61, 2,i_Gwo),1,1);
                GreyWolves(i_Gwo).position(41) = cornArea - GreyWolves(i_Gwo).position(61); 
                range(41,1,i_Gwo) = cornAreaMin - GreyWolves(i_Gwo).position(61);
                range(41,2,i_Gwo) = cornAreaMax - GreyWolves(i_Gwo).position(61);
                for t = 2 : 20
                   range(60 + t ,2,i_Gwo) = min([cornArea, t * dripTArea]); %  max area of added drip for wheat
                   range(60 + t,1,i_Gwo) = min([cornArea, (t-1) * dripTArea]);
                   GreyWolves(i_Gwo).position(60 + t ) = unifrnd(range(60 + t ,1,i_Gwo),range(60 +t, 2,i_Gwo),1,1);
                   range(40 + t,1,i_Gwo) = cornArea - GreyWolves(i_Gwo).position(60 + t);
                   range(40 + t,2,i_Gwo) = GreyWolves(i_Gwo).position(40 + t -1);
                   GreyWolves(i_Gwo).position(40 + t) = unifrnd(range(40 + t,1,i_Gwo),range(40 +t,2,i_Gwo),1,1);
                end
            end % end for i_Gwo
            
            % 81-120 
            sunflowerAreaMin = data{8}(1).sunflowerAreaMin;
            sunflowerAreaMax = data{8}(1).sunflowerAreaMax;
            dripTArea = data{8}(1).sunflowerTAdd;
            for i_Gwo = 1 : numGWO
                sunflowerArea = unifrnd(sunflowerAreaMin,sunflowerAreaMax);
                range(101,1,i_Gwo) = 0; % min area of sunflower
                range(101,2,i_Gwo) = min([sunflowerArea,dripTArea]);
                GreyWolves(i_Gwo).position(101) = unifrnd(range(101,1,i_Gwo),range(101, 2,i_Gwo),1,1);
                GreyWolves(i_Gwo).position(81) = sunflowerArea - GreyWolves(i_Gwo).position(101); 
                range(81,1,i_Gwo) = sunflowerAreaMin - GreyWolves(i_Gwo).position(101);
                range(81,2,i_Gwo) = sunflowerAreaMax - GreyWolves(i_Gwo).position(101);
                for t = 2 : 20
                   range(100 + t ,2,i_Gwo) = min([sunflowerArea, t * dripTArea]); %  max area of added drip for wheat
                   range(100 + t,1,i_Gwo) =  min([sunflowerArea, (t-1) * dripTArea]);
                   GreyWolves(i_Gwo).position(100 + t ) = unifrnd(range(100 + t ,1,i_Gwo),range(100 +t, 2,i_Gwo),1,1);   
                   range(80 + t,1,i_Gwo) = sunflowerArea - GreyWolves(i_Gwo).position(100 + t);
                   range(80 + t,2,i_Gwo) = GreyWolves(i_Gwo).position(80 + t -1);
                   GreyWolves(i_Gwo).position(80 + t) =  unifrnd(range(80 + t,1,i_Gwo),range(80 +t,2,i_Gwo),1,1);
                end
            end % end for i_Gwo
            
            % 121-160 
            melonAreaMin = data{8}(1).melonAreaMin;
            melonAreaMax = data{8}(1).melonAreaMax;
            dripTArea = data{8}(1).melonTAdd;
            for i_Gwo = 1 : numGWO
                melonArea = unifrnd(melonAreaMin,melonAreaMax);
                range(141,1,i_Gwo) = 0; % min area of melon
                range(141,2,i_Gwo) = min([melonArea,dripTArea]); %  max area of added drip for melon
                GreyWolves(i_Gwo).position(141) = unifrnd(range(141,1,i_Gwo),range(141, 2,i_Gwo),1,1);
                GreyWolves(i_Gwo).position(121) = melonArea - GreyWolves(i_Gwo).position(141); 
                range(121,1,i_Gwo) = melonAreaMin - GreyWolves(i_Gwo).position(141);
                range(121,2,i_Gwo) = melonAreaMax - GreyWolves(i_Gwo).position(141);
                for t = 2 : 20
                   range(140 + t ,2,i_Gwo) = min([melonArea, t * dripTArea]); %  max area of added drip for wheat
                   range(140 + t,1,i_Gwo) = min([melonArea, (t-1) * dripTArea]); 
                   GreyWolves(i_Gwo).position(140 + t ) = unifrnd(range(140 + t ,1,i_Gwo),range(140 +t, 2,i_Gwo),1,1);
                   range(120 + t,1,i_Gwo) = melonArea - GreyWolves(i_Gwo).position(140 + t);
                   range(120 + t,2,i_Gwo) = GreyWolves(i_Gwo).position(120 + t -1);
                   GreyWolves(i_Gwo).position(120 + t) = unifrnd(range(120 + t,1,i_Gwo),range(120 +t,2,i_Gwo),1,1);
                end
            end % end for i_Gwo
            
             % 161-200 
            tomatoAreaMin =  data{8}(1).tomatoAreaMin;
            tomatoAreaMax  = data{8}(1).tomatoAreaMax; 
            dripTArea = data{8}(1).tomatoTAdd;
            for i_Gwo = 1 : numGWO
                tomatoArea =  unifrnd(tomatoAreaMin,tomatoAreaMax);
                range(181,1,i_Gwo) = 0; % min area of tomato
                range(181,2,i_Gwo) = min([tomatoArea,dripTArea]); %  max area of added drip for tomato
                GreyWolves(i_Gwo).position(181) = unifrnd(range(181,1,i_Gwo),range(181, 2,i_Gwo),1,1);  
                GreyWolves(i_Gwo).position(161) = tomatoArea - GreyWolves(i_Gwo).position(181) ; 
                range(161,1,i_Gwo) = tomatoAreaMin - GreyWolves(i_Gwo).position(181);
                range(161,2,i_Gwo) = tomatoAreaMax - GreyWolves(i_Gwo).position(181);
                for t = 2 : 20
                   range(180 + t ,2,i_Gwo) = min([tomatoArea, t * dripTArea]); %  max area of added drip for wheat
                   range(180 + t,1,i_Gwo) =  min([tomatoArea, (t-1) * dripTArea]);
                   GreyWolves(i_Gwo).position(180 + t ) = unifrnd(range(180 + t ,1,i_Gwo),range(180 +t, 2,i_Gwo),1,1);
                   range(160 + t,1,i_Gwo) = tomatoArea - GreyWolves(i_Gwo).position(180 + t);
                   range(160 + t,2,i_Gwo) = GreyWolves(i_Gwo).position(160 + t -1);
                   GreyWolves(i_Gwo).position(160 + t) = unifrnd(range(160 + t,1,i_Gwo),range(160 +t,2,i_Gwo),1,1);
                end
            end % end for i_Gwo
            %=====================Linhe====================================
            % 201-240  
            wheatAreaMin2 =  data{8}(2).wheatAreaMin;
            wheatAreaMax2 = data{8}(2).wheatAreaMax;
            dripTArea = data{8}(2).wheatTAdd;
            for i_Gwo = 1 : numGWO
                wheatArea2 = unifrnd(wheatAreaMin2,wheatAreaMax2);
                range(221,1,i_Gwo) = 0; % min area of wheat
                range(221,2,i_Gwo) = min([wheatArea2,dripTArea]);
                GreyWolves(i_Gwo).position(221) = unifrnd(range(221,1,i_Gwo),range(221, 2,i_Gwo),1,1);
                GreyWolves(i_Gwo).position(201) = wheatArea2 - GreyWolves(i_Gwo).position(221);
                range(201,1,i_Gwo) = wheatAreaMin2 - GreyWolves(i_Gwo).position(221);
                range(201,2,i_Gwo) = wheatAreaMax2 - GreyWolves(i_Gwo).position(221);
                for t = 2 : 20
                   range(220 + t ,2,i_Gwo) = min([wheatArea2, t * dripTArea]); %  max area of added drip for wheat
                   range(220 + t,1,i_Gwo) = min([wheatArea2, (t-1) * dripTArea]);
                   GreyWolves(i_Gwo).position(220 + t ) = unifrnd(range(220 + t ,1,i_Gwo),range(220 +t, 2,i_Gwo),1,1);
                   range(200 + t,1,i_Gwo) = wheatArea2 - GreyWolves(i_Gwo).position(220 + t);
                   range(200 + t,2,i_Gwo) = GreyWolves(i_Gwo).position(200 + t-1);
                   GreyWolves(i_Gwo).position(200 + t) = unifrnd(range(200 + t,1,i_Gwo),range(200+ t,2,i_Gwo),1,1);
                end           
            end % end for i_Gwo
            
            % 241-280  
            cornAreaMin2 = data{8}(2).cornAreaMin;
            cornAreaMax2 = data{8}(2).cornAreaMax;
            dripTArea = data{8}(2).cornTAdd;
            for i_Gwo = 1 : numGWO
                cornArea2 = unifrnd(cornAreaMin2,cornAreaMax2);
                range(261,1,i_Gwo) = 0; % min area of corn
                range(261,2,i_Gwo) = min([cornArea2,dripTArea]);
                GreyWolves(i_Gwo).position(261) = unifrnd(range(261,1,i_Gwo),range(261, 2,i_Gwo),1,1);
                GreyWolves(i_Gwo).position(241) = cornArea2 - GreyWolves(i_Gwo).position(261); 
                range(241,1,i_Gwo) = cornAreaMin2 - GreyWolves(i_Gwo).position(261);
                range(241,2,i_Gwo) = cornAreaMax2 - GreyWolves(i_Gwo).position(261);
                for t = 2 : 20
                   range(260 + t ,2,i_Gwo) = min([cornArea2, t * dripTArea]); %  max area of added drip for wheat
                   range(260 + t,1,i_Gwo) = min([cornArea2, (t-1) * dripTArea]);
                   GreyWolves(i_Gwo).position(260 + t ) = unifrnd(range(260 + t ,1,i_Gwo),range(260 +t, 2,i_Gwo),1,1);
                   range(240 + t,1,i_Gwo) = cornArea2 - GreyWolves(i_Gwo).position(260 + t);
                   range(240 + t,2,i_Gwo) = GreyWolves(i_Gwo).position(240 + t -1);
                   GreyWolves(i_Gwo).position(240 + t) = unifrnd(range(240 + t,1,i_Gwo),range(240 +t,2,i_Gwo),1,1);
                end
            end % end for i_Gwo
            % 281-320  
            sunflowerAreaMin2 = data{8}(2).sunflowerAreaMin;
            sunflowerAreaMax2 = data{8}(2).sunflowerAreaMax;
            dripTArea = data{8}(2).sunflowerTAdd;
            for i_Gwo = 1 : numGWO
                sunflowerArea2 = unifrnd(sunflowerAreaMin2,sunflowerAreaMax2);
                range(301,1,i_Gwo) = 0; % min area of sunflower
                range(301,2,i_Gwo) = min([sunflowerArea2,dripTArea]);
                GreyWolves(i_Gwo).position(301) = unifrnd(range(301,1,i_Gwo),range(301, 2,i_Gwo),1,1);
                GreyWolves(i_Gwo).position(281) = sunflowerArea2 - GreyWolves(i_Gwo).position(301); 
                range(281,1,i_Gwo) = sunflowerAreaMin2 - GreyWolves(i_Gwo).position(301);
                range(281,2,i_Gwo) = sunflowerAreaMax2 - GreyWolves(i_Gwo).position(301);
                for t = 2 : 20
                   range(300 + t ,2,i_Gwo) = min([sunflowerArea2, t * dripTArea]); %  max area of added drip for wheat
                   range(300 + t,1,i_Gwo) = min([sunflowerArea2, (t-1) * dripTArea]);
                   GreyWolves(i_Gwo).position(300 + t ) = unifrnd(range(300 + t ,1,i_Gwo),range(300 +t, 2,i_Gwo),1,1);
                   range(280 + t,1,i_Gwo) = sunflowerArea2 - GreyWolves(i_Gwo).position(300 + t);
                   range(280 + t,2,i_Gwo) = GreyWolves(i_Gwo).position(280 + t -1);
                   GreyWolves(i_Gwo).position(280 + t) = unifrnd(range(280 + t,1,i_Gwo),range(280 +t,2,i_Gwo),1,1);
                end
            end % end for i_Gwo
            % 321-360 
            melonAreaMin2 = data{8}(2).melonAreaMin;
            melonAreaMax2 = data{8}(2).melonAreaMax;
            dripTArea = data{8}(2).melonTAdd;
            for i_Gwo = 1 : numGWO
                melonArea2 =   unifrnd(melonAreaMin2, melonAreaMax2);
                range(341,1,i_Gwo) = 0; % min area of melon
                range(341,2,i_Gwo) = min([melonArea2,dripTArea]); %  max area of added drip for melon
                GreyWolves(i_Gwo).position(341) = unifrnd(range(341,1,i_Gwo),range(341, 2,i_Gwo),1,1); 
                GreyWolves(i_Gwo).position(321) = melonArea2 -  GreyWolves(i_Gwo).position(341); 
                range(321,1,i_Gwo) = melonAreaMin2 - GreyWolves(i_Gwo).position(341);
                range(321,2,i_Gwo) = melonAreaMax2 - GreyWolves(i_Gwo).position(341);
                for t = 2 : 20
                   range(340 + t ,2,i_Gwo) = min([melonArea2, t * dripTArea]); %  max area of added drip for wheat
                   range(340 + t,1,i_Gwo) =  min([melonArea2, (t-1) * dripTArea]); 
                   GreyWolves(i_Gwo).position(340 + t ) = unifrnd(range(340 + t ,1,i_Gwo),range(340 +t, 2,i_Gwo),1,1);
                   range(320 + t,1,i_Gwo) = melonArea2 - GreyWolves(i_Gwo).position(340 + t);
                   range(320 + t,2,i_Gwo) = GreyWolves(i_Gwo).position(320 + t -1);   
                   GreyWolves(i_Gwo).position(320 + t) = unifrnd(range(320 + t,1,i_Gwo),range(320 +t,2,i_Gwo),1,1);
                end
            end % end for i_Gwo
             % 361-400
            tomatoAreaMin2 =  data{8}(2).tomatoAreaMin;
            tomatoAreaMax2  = data{8}(2).tomatoAreaMax; 
            dripTArea = data{8}(2).tomatoTAdd;
            for i_Gwo = 1 : numGWO
                tomatoArea2 =   unifrnd(tomatoAreaMin2, tomatoAreaMax2);
                range(381,1,i_Gwo) = 0; % min area of tomato
                range(381,2,i_Gwo) = min([tomatoArea2,dripTArea]); %  max area of added drip for tomato
                GreyWolves(i_Gwo).position(381) = unifrnd(range(381,1,i_Gwo),range(381, 2,i_Gwo),1,1);
                GreyWolves(i_Gwo).position(361) = tomatoArea2 - GreyWolves(i_Gwo).position(381);
                range(361,1,i_Gwo) = tomatoAreaMin2 - GreyWolves(i_Gwo).position(381);
                range(361,2,i_Gwo) = tomatoAreaMax2 - GreyWolves(i_Gwo).position(381);
                for t = 2 : 20
                   range(380 + t ,2,i_Gwo) = min([tomatoArea2, t * dripTArea]); %  max area of added drip for wheat
                   range(380 + t,1,i_Gwo) = min([tomatoArea2, (t-1) * dripTArea]);
                   GreyWolves(i_Gwo).position(380 + t ) = unifrnd(range(380 + t ,1,i_Gwo),range(380 +t, 2,i_Gwo),1,1);
                   range(360 + t,1,i_Gwo) = tomatoArea2 - GreyWolves(i_Gwo).position(380 + t);
                   range(360 + t,2,i_Gwo) = GreyWolves(i_Gwo).position(360 + t -1);
                   GreyWolves(i_Gwo).position(360 + t) = unifrnd(range(360 + t,1,i_Gwo),range(360 +t,2,i_Gwo),1,1);
                end
            end % end for i_Gwo
            %=====================Urad qianqi====================================
            % 401-440 
            wheatAreaMin3 = data{8}(3).wheatAreaMin;
            wheatAreaMax3 = data{8}(3).wheatAreaMax;
            dripTArea = data{8}(3).wheatTAdd;
            for i_Gwo = 1 : numGWO
                wheatArea3 = unifrnd(wheatAreaMin3,wheatAreaMax3);
                range(421,1,i_Gwo) = 0; % min area of wheat
                range(421,2,i_Gwo) = min([wheatArea3,dripTArea]);
                GreyWolves(i_Gwo).position(421) = unifrnd(range(421,1,i_Gwo),range(421, 2,i_Gwo),1,1);
                GreyWolves(i_Gwo).position(401) = wheatArea3 - GreyWolves(i_Gwo).position(421);
                range(401,1,i_Gwo) = wheatAreaMin3 - GreyWolves(i_Gwo).position(421);
                range(401,2,i_Gwo) = wheatAreaMax3 - GreyWolves(i_Gwo).position(421);
                for t = 2 : 20
                   range(420 + t ,2,i_Gwo) = min([wheatArea3, t * dripTArea]); %  max area of added drip for wheat
                   range(420 + t,1,i_Gwo) =  min([wheatArea3, (t-1) * dripTArea]); 
                   GreyWolves(i_Gwo).position(420 + t ) = unifrnd(range(420 + t ,1,i_Gwo),range(420 +t, 2,i_Gwo),1,1);
                   range(400 + t,1,i_Gwo) = wheatArea3 - GreyWolves(i_Gwo).position(420 + t);
                   range(400 + t,2,i_Gwo) = GreyWolves(i_Gwo).position(400 + t-1);
                   GreyWolves(i_Gwo).position(400 + t)  = unifrnd(range(400 + t,1,i_Gwo),range(400+ t,2,i_Gwo),1,1);
                end           
            end % end for i_Gwo
            % 441-480  
            cornAreaMin3 = data{8}(3).cornAreaMin;
            cornAreaMax3 = data{8}(3).cornAreaMax;
            dripTArea = data{8}(3).cornTAdd;
            for i_Gwo = 1 : numGWO
                cornArea3 = unifrnd(cornAreaMin3,cornAreaMax3);
                range(461,1,i_Gwo) = 0; % min area of corn
                range(461,2,i_Gwo) = min([cornArea3,dripTArea]);
                GreyWolves(i_Gwo).position(461) = unifrnd(range(461,1,i_Gwo),range(461, 2,i_Gwo),1,1);
                GreyWolves(i_Gwo).position(441) = cornArea3 - GreyWolves(i_Gwo).position(461); 
                range(441,1,i_Gwo) = cornAreaMin3 - GreyWolves(i_Gwo).position(461);
                range(441,2,i_Gwo) = cornAreaMax3 - GreyWolves(i_Gwo).position(461);
                for t = 2 : 20
                   range(460 + t ,2,i_Gwo) = min([cornArea3, t * dripTArea]); %  max area of added drip for wheat
                   range(460 + t,1,i_Gwo) = min([cornArea3, (t-1) * dripTArea]);
                   GreyWolves(i_Gwo).position(460 + t ) = unifrnd(range(460 + t ,1,i_Gwo),range(460 +t, 2,i_Gwo),1,1);
                   range(440 + t,1,i_Gwo) = cornArea3 - GreyWolves(i_Gwo).position(460 + t);
                   range(440 + t,2,i_Gwo) = GreyWolves(i_Gwo).position(440 + t -1);
                   GreyWolves(i_Gwo).position(440 + t) = unifrnd(range(440 + t,1,i_Gwo),range(440 +t,2,i_Gwo),1,1);
                end
            end % end for i_Gwo
            % 481-520  
            sunflowerAreaMin3 = data{8}(3).sunflowerAreaMin;
            sunflowerAreaMax3 = data{8}(3).sunflowerAreaMax;
            dripTArea = data{8}(3).sunflowerTAdd;
            for i_Gwo = 1 : numGWO
                sunflowerArea3 = unifrnd(sunflowerAreaMin3,sunflowerAreaMax3);
                range(501,1,i_Gwo) = 0; % min area of sunflower
                range(501,2,i_Gwo) = min([sunflowerArea3,dripTArea]);
                GreyWolves(i_Gwo).position(501) = unifrnd(range(501,1,i_Gwo),range(501, 2,i_Gwo),1,1);
                GreyWolves(i_Gwo).position(481) = sunflowerArea3 - GreyWolves(i_Gwo).position(501); 
                range(481,1,i_Gwo) = sunflowerAreaMin3 - GreyWolves(i_Gwo).position(501);
                range(481,2,i_Gwo) = sunflowerAreaMax3 - GreyWolves(i_Gwo).position(501);
                for t = 2 : 20
                   range(500 + t ,2,i_Gwo) = min([sunflowerArea3, t * dripTArea]); %  max area of added drip for wheat
                   range(500 + t,1,i_Gwo) = min([sunflowerArea3, (t-1) * dripTArea]);
                   GreyWolves(i_Gwo).position(500 + t ) = unifrnd(range(500 + t ,1,i_Gwo),range(500 +t, 2,i_Gwo),1,1); 
                   range(480 + t,1,i_Gwo) = sunflowerArea3 - GreyWolves(i_Gwo).position(500 + t);
                   range(480 + t,2,i_Gwo) = GreyWolves(i_Gwo).position(480 + t -1);   
                   GreyWolves(i_Gwo).position(480 + t) = unifrnd(range(480 + t,1,i_Gwo),range(480 +t,2,i_Gwo),1,1);
                end
            end % end for i_Gwo
            % 521-560
            melonAreaMin3 = data{8}(3).melonAreaMin;
            melonAreaMax3 = data{8}(3).melonAreaMax;
            dripTArea = data{8}(3).melonTAdd;
            for i_Gwo = 1 : numGWO
                melonArea3 =   unifrnd(melonAreaMin3, melonAreaMax3);
                range(541,1,i_Gwo) = 0; % min area of melon
                range(541,2,i_Gwo) = min([melonArea3,dripTArea]); %  max area of added drip for melon
                GreyWolves(i_Gwo).position(541) = unifrnd(range(541,1,i_Gwo),range(541, 2,i_Gwo),1,1);
                GreyWolves(i_Gwo).position(521) = melonArea3 - GreyWolves(i_Gwo).position(541); 
                range(521,1,i_Gwo) = melonAreaMin3 - GreyWolves(i_Gwo).position(541);
                range(521,2,i_Gwo) = melonAreaMax3 - GreyWolves(i_Gwo).position(541);
                for t = 2 : 20
                   range(540 + t ,2,i_Gwo) = min([melonArea3, t * dripTArea]); %  max area of added drip for wheat
                   range(540 + t,1,i_Gwo) =  min([melonArea3, (t-1) * dripTArea]); 
                   GreyWolves(i_Gwo).position(540 + t ) = unifrnd(range(540 + t ,1,i_Gwo),range(540 +t, 2,i_Gwo),1,1);  
                   range(520 + t,1,i_Gwo) = melonArea3 - GreyWolves(i_Gwo).position(540 + t);
                   range(520 + t,2,i_Gwo) = GreyWolves(i_Gwo).position(520 + t -1);  
                   GreyWolves(i_Gwo).position(520 + t) = unifrnd(range(520 + t,1,i_Gwo),range(520 +t,2,i_Gwo),1,1);
                end
            end % end for i_Gwo
             % 561-600 
            tomatoAreaMin3 =  data{8}(3).tomatoAreaMin;
            tomatoAreaMax3  = data{8}(3).tomatoAreaMax;
            dripTArea = data{8}(3).tomatoTAdd;
            for i_Gwo = 1 : numGWO
                tomatoArea3 = unifrnd(tomatoAreaMin3,tomatoAreaMax3);
                range(581,1,i_Gwo) = 0; % min area of tomato
                range(581,2,i_Gwo) = min([tomatoArea3,dripTArea]); %  max area of added drip for tomato
                GreyWolves(i_Gwo).position(581) = unifrnd(range(581,1,i_Gwo),range(581, 2,i_Gwo),1,1);
                GreyWolves(i_Gwo).position(561) = tomatoArea3 - GreyWolves(i_Gwo).position(581) ; 
                range(561,1,i_Gwo) = tomatoAreaMin3 - GreyWolves(i_Gwo).position(581);
                range(561,2,i_Gwo) = tomatoAreaMax3 - GreyWolves(i_Gwo).position(581);
                for t = 2 : 20
                   range(580 + t ,2,i_Gwo) = min([tomatoArea3, t * dripTArea]); %  max area of added drip for wheat
                   range(580 + t,1,i_Gwo) = min([tomatoArea3, (t-1) * dripTArea]); 
                   GreyWolves(i_Gwo).position(580 + t ) = unifrnd(range(580 + t ,1,i_Gwo),range(580 +t, 2,i_Gwo),1,1);
                   range(560 + t,1,i_Gwo) = tomatoArea3 - GreyWolves(i_Gwo).position(580 + t);
                   range(560 + t,2,i_Gwo) = GreyWolves(i_Gwo).position(560 + t -1);
                   GreyWolves(i_Gwo).position(560 + t) = unifrnd(range(560 + t,1,i_Gwo),range(560 +t,2,i_Gwo),1,1);
                end
            end % end for i_Gwo
            %=====================Hangjinhouqi====================================
            % 601-640 
            wheatAreaMin4 = data{8}(4).wheatAreaMin;
            wheatAreaMax4 = data{8}(4).wheatAreaMax;
            dripTArea2 = data{8}(4).wheatTAdd;
            for i_Gwo = 1 : numGWO
                wheatArea4= unifrnd(wheatAreaMin4,wheatAreaMax4);
                range(621,1,i_Gwo) = 0; % min area of wheat
                range(621,2,i_Gwo) = min([wheatArea4,dripTArea2]);
                GreyWolves(i_Gwo).position(621) = unifrnd(range(621,1,i_Gwo),range(621, 2,i_Gwo),1,1);
                GreyWolves(i_Gwo).position(601) = wheatArea4 - GreyWolves(i_Gwo).position(621);
                range(601,1,i_Gwo) = wheatAreaMin4 - GreyWolves(i_Gwo).position(621);
                range(601,2,i_Gwo) = wheatAreaMax4 - GreyWolves(i_Gwo).position(621);
                for t = 2 : 20
                   range(620 + t ,2,i_Gwo) = min([wheatArea4, t * dripTArea2]); %  max area of added drip for wheat
                   range(620 + t,1,i_Gwo) = min([wheatArea4, (t-1) * dripTArea2]);
                   GreyWolves(i_Gwo).position(620 + t ) = unifrnd(range(620 + t ,1,i_Gwo),range(620 +t, 2,i_Gwo),1,1); 
                   range(600 + t,1,i_Gwo) = wheatArea4 - GreyWolves(i_Gwo).position(620 + t);
                   range(600 + t,2,i_Gwo) = GreyWolves(i_Gwo).position(600 + t-1);       
                   GreyWolves(i_Gwo).position(600 + t) = unifrnd(range(600 + t,1,i_Gwo),range(600+ t,2,i_Gwo),1,1);
                end           
            end % end for i_Gwo
            % 641-680 
            cornAreaMin4 = data{8}(4).cornAreaMin;
            cornAreaMax4 = data{8}(4).cornAreaMax;
            dripTArea2 = data{8}(4).cornTAdd;
            for i_Gwo = 1 : numGWO
                cornArea4 = unifrnd(cornAreaMin4,cornAreaMax4);
                range(661,1,i_Gwo) = 0; % min area of corn
                range(661,2,i_Gwo) = min([cornArea4,dripTArea2]);
                GreyWolves(i_Gwo).position(661) = unifrnd(range(661,1,i_Gwo),range(661, 2,i_Gwo),1,1);
                GreyWolves(i_Gwo).position(641) = cornArea4 - GreyWolves(i_Gwo).position(661);
                range(641,1,i_Gwo) = cornAreaMin4 - GreyWolves(i_Gwo).position(661);
                range(641,2,i_Gwo) = cornAreaMax4 - GreyWolves(i_Gwo).position(661);
                for t = 2 : 20
                   range(660 + t ,2,i_Gwo) = min([cornArea4, t * dripTArea2]); %  max area of added drip for wheat
                   range(660 + t,1,i_Gwo) = min([cornArea4, (t-1) * dripTArea2]); 
                   GreyWolves(i_Gwo).position(660 + t ) = unifrnd(range(660 + t ,1,i_Gwo),range(660 +t, 2,i_Gwo),1,1);
                   range(640 + t,1,i_Gwo) = cornArea4 - GreyWolves(i_Gwo).position(660 + t);
                   range(640 + t,2,i_Gwo) = GreyWolves(i_Gwo).position(640 + t -1);
                   GreyWolves(i_Gwo).position(640 + t) = unifrnd(range(640 + t,1,i_Gwo),range(640 +t,2,i_Gwo),1,1);
                end
            end % end for i_Gwo
            % 681-720  
            sunflowerAreaMin4 = data{8}(4).sunflowerAreaMin;
            sunflowerAreaMax4 = data{8}(4).sunflowerAreaMax;
            dripTArea2 = data{8}(4).cornTAdd;
            for i_Gwo = 1 : numGWO
                sunflowerArea4 = unifrnd(sunflowerAreaMin4,sunflowerAreaMax4);
                range(701,1,i_Gwo) = 0; % min area of sunflower
                range(701,2,i_Gwo) = min([sunflowerArea4,dripTArea2]);
                GreyWolves(i_Gwo).position(701) = unifrnd(range(701,1,i_Gwo),range(701, 2,i_Gwo),1,1);
                GreyWolves(i_Gwo).position(681) = sunflowerArea4 - GreyWolves(i_Gwo).position(701);
                range(681,1,i_Gwo) = sunflowerAreaMin4 - GreyWolves(i_Gwo).position(701);
                range(681,2,i_Gwo) = sunflowerAreaMax4 - GreyWolves(i_Gwo).position(701);
                for t = 2 : 20
                   range(700 + t ,2,i_Gwo) = min([sunflowerArea4, t * dripTArea2]); %  max area of added drip for wheat
                   range(700 + t,1,i_Gwo) =  min([sunflowerArea4, (t-1) * dripTArea2]);
                   GreyWolves(i_Gwo).position(700 + t ) = unifrnd(range(700 + t ,1,i_Gwo),range(700 +t, 2,i_Gwo),1,1);
                   range(680 + t,1,i_Gwo) = sunflowerArea4 - GreyWolves(i_Gwo).position(700 + t);
                   range(680 + t,2,i_Gwo) = GreyWolves(i_Gwo).position(680 + t -1);
                   GreyWolves(i_Gwo).position(680 + t) = unifrnd(range(680 + t,1,i_Gwo),range(680 +t,2,i_Gwo),1,1);
                end
            end % end for i_Gwo 
            % 721-760  
            melonAreaMin4 = data{8}(4).melonAreaMin;
            melonAreaMax4 = data{8}(4).melonAreaMax;
            dripTArea2 = data{8}(4).melonTAdd;
            for i_Gwo = 1 : numGWO
                melonArea4 =   unifrnd(melonAreaMin4, melonAreaMax4);
                range(741,1,i_Gwo) = 0; % min area of melon
                range(741,2,i_Gwo) = min([melonArea4,dripTArea2]); %  max area of added drip for melon
                GreyWolves(i_Gwo).position(741) = unifrnd(range(741,1,i_Gwo),range(741, 2,i_Gwo),1,1);
                GreyWolves(i_Gwo).position(721) = melonArea4 - GreyWolves(i_Gwo).position(741); 
                range(721,1,i_Gwo) = melonAreaMin4 - GreyWolves(i_Gwo).position(741);
                range(721,2,i_Gwo) = melonAreaMax4 - GreyWolves(i_Gwo).position(741);
                for t = 2 : 20
                   range(740 + t ,2,i_Gwo) = min([melonArea4, t * dripTArea2]); %  max area of added drip for wheat
                   range(740 + t,1,i_Gwo) =  min([melonArea4, (t-1) * dripTArea2]); 
                   GreyWolves(i_Gwo).position(740 + t ) = unifrnd(range(740 + t ,1,i_Gwo),range(740 +t, 2,i_Gwo),1,1);
                   range(720 + t,1,i_Gwo) = melonArea4 - GreyWolves(i_Gwo).position(740 + t);
                   range(720 + t,2,i_Gwo) = GreyWolves(i_Gwo).position(720 + t -1);
                   GreyWolves(i_Gwo).position(720 + t) = unifrnd(range(720 + t,1,i_Gwo),range(720 +t,2,i_Gwo),1,1);
                end
            end % end for i_Gwo
             % 761-800 
            tomatoAreaMin4 =  data{8}(4).tomatoAreaMin;
            tomatoAreaMax4  = data{8}(4).tomatoAreaMax; 
            dripTArea2 = data{8}(4).tomatoTAdd;
            for i_Gwo = 1 : numGWO
                tomatoArea4 = unifrnd(tomatoAreaMin4,tomatoAreaMax4);
                range(781,1,i_Gwo) = 0; % min area of tomato
                range(781,2,i_Gwo) = min([tomatoArea4,dripTArea2]); %  max area of added drip for tomato
                GreyWolves(i_Gwo).position(781) = unifrnd(range(781,1,i_Gwo),range(781, 2,i_Gwo),1,1);
                GreyWolves(i_Gwo).position(761) = tomatoArea4 - GreyWolves(i_Gwo).position(781);
                range(761,1,i_Gwo) = tomatoAreaMin4 - GreyWolves(i_Gwo).position(781);
                range(761,2,i_Gwo) = tomatoAreaMax4 - GreyWolves(i_Gwo).position(781);
                for t = 2 : 20
                   range(780 + t ,2,i_Gwo) = min([tomatoArea4, t * dripTArea2]); %  max area of added drip for wheat
                   range(780 + t,1,i_Gwo) =  min([tomatoArea4, (t-1) * dripTArea2]); 
                   GreyWolves(i_Gwo).position(780 + t ) = unifrnd(range(780 + t ,1,i_Gwo),range(780 +t, 2,i_Gwo),1,1);
                   range(760 + t,1,i_Gwo) = tomatoArea4 - GreyWolves(i_Gwo).position(780 + t);
                   range(760 + t,2,i_Gwo) = GreyWolves(i_Gwo).position(760 + t -1);
                   GreyWolves(i_Gwo).position(760 + t) = unifrnd(range(760 + t,1,i_Gwo),range(760 +t,2,i_Gwo),1,1);;
                end
            end % end for i_Gwo
            %=====================Dengkou====================================
            % 801-840  
            wheatAreaMin5 = data{8}(5).wheatAreaMin;
            wheatAreaMax5 = data{8}(5).wheatAreaMax;
            dripTArea2 = data{8}(5).wheatTAdd;
           
            for i_Gwo = 1 : numGWO
                wheatArea5 = unifrnd(wheatAreaMin5,wheatAreaMax5);
                range(821,1,i_Gwo) = 0; % min area of wheat
                range(821,2,i_Gwo) = min([wheatArea5,dripTArea2]);
                GreyWolves(i_Gwo).position(821) = unifrnd(range(821,1,i_Gwo),range(821, 2,i_Gwo),1,1);
                GreyWolves(i_Gwo).position(801) = wheatArea5 - GreyWolves(i_Gwo).position(821);
                range(801,1,i_Gwo) = wheatAreaMin5 - GreyWolves(i_Gwo).position(821);
                range(801,2,i_Gwo) = wheatAreaMax5 - GreyWolves(i_Gwo).position(821);
                for t = 2 : 20
                   range(820 + t ,2,i_Gwo) = min([wheatArea5, t * dripTArea2]); %  max area of added drip for wheat
                   range(820 + t,1,i_Gwo) =  min([wheatArea5, (t-1) * dripTArea2]);
                   GreyWolves(i_Gwo).position(820 + t ) = unifrnd(range(820 + t ,1,i_Gwo),range(820 +t, 2,i_Gwo),1,1);
                   range(800 + t,1,i_Gwo) = wheatArea5 - GreyWolves(i_Gwo).position(820 + t);
                   range(800 + t,2,i_Gwo) = GreyWolves(i_Gwo).position(800 + t-1);   
                   GreyWolves(i_Gwo).position(800 + t) = unifrnd(range(800 + t,1,i_Gwo),range(800+ t,2,i_Gwo),1,1);
                end           
            end % end for i_Gwo
            % 841-880  
            cornAreaMin5 = data{8}(5).cornAreaMin;
            cornAreaMax5 = data{8}(5).cornAreaMax;
            dripTArea2 = data{8}(5).cornTAdd;
            for i_Gwo = 1 : numGWO
                cornArea5 = unifrnd(cornAreaMin5,cornAreaMax5);
                range(861,1,i_Gwo) = 0; % min area of corn
                range(861,2,i_Gwo) = min([cornArea5,dripTArea2]);
                GreyWolves(i_Gwo).position(861) = unifrnd(range(861,1,i_Gwo),range(861, 2,i_Gwo),1,1);
                GreyWolves(i_Gwo).position(841) = cornArea5 - GreyWolves(i_Gwo).position(861); 
                range(841,1,i_Gwo) = cornAreaMin5 - GreyWolves(i_Gwo).position(861);
                range(841,2,i_Gwo) = cornAreaMax5 - GreyWolves(i_Gwo).position(861);
                for t = 2 : 20
                   range(860 + t ,2,i_Gwo) = min([cornArea5, t * dripTArea2]); %  max area of added drip for wheat
                   range(860 + t,1,i_Gwo) =  min([cornArea5, (t-1) * dripTArea2]);
                   GreyWolves(i_Gwo).position(860 + t ) = unifrnd(range(860 + t ,1,i_Gwo),range(860 +t, 2,i_Gwo),1,1);
                   range(840 + t,1,i_Gwo) = cornArea5 - GreyWolves(i_Gwo).position(860 + t);
                   range(840 + t,2,i_Gwo) = GreyWolves(i_Gwo).position(840 + t -1);
                   GreyWolves(i_Gwo).position(840 + t) = unifrnd(range(840 + t,1,i_Gwo),range(840 +t,2,i_Gwo),1,1);
                end
            end % end for i_Gwo
            % 881-920  
            sunflowerAreaMin5 = data{8}(5).sunflowerAreaMin;
            sunflowerAreaMax5 = data{8}(5).sunflowerAreaMax;
            dripTArea2 = data{8}(5).sunflowerTAdd;
            for i_Gwo = 1 : numGWO
                sunflowerArea5= unifrnd(sunflowerAreaMin5,sunflowerAreaMax5);
                range(901,1,i_Gwo) = 0; % min area of sunflower
                range(901,2,i_Gwo) = min([sunflowerArea5,dripTArea2]);
                GreyWolves(i_Gwo).position(901) = unifrnd(range(901,1,i_Gwo),range(901, 2,i_Gwo),1,1);
                GreyWolves(i_Gwo).position(881) = sunflowerArea5 - GreyWolves(i_Gwo).position(901);
                range(881,1,i_Gwo) = sunflowerAreaMin5 - GreyWolves(i_Gwo).position(901);
                range(881,2,i_Gwo) = sunflowerAreaMax5 - GreyWolves(i_Gwo).position(901);
                for t = 2 : 20
                   range(900 + t ,2,i_Gwo) = min([sunflowerArea5, t * dripTArea2]); %  max area of added drip for wheat
                   range(900 + t,1,i_Gwo) =  min([sunflowerArea5, (t-1) * dripTArea2]);
                   GreyWolves(i_Gwo).position(900 + t ) = unifrnd(range(900 + t ,1,i_Gwo),range(900 +t, 2,i_Gwo),1,1);
                   range(880 + t,1,i_Gwo) = sunflowerArea5 - GreyWolves(i_Gwo).position(900 + t);
                   range(880 + t,2,i_Gwo) = GreyWolves(i_Gwo).position(880 + t -1);
                   GreyWolves(i_Gwo).position(880 + t) = unifrnd(range(880 + t,1,i_Gwo),range(880 +t,2,i_Gwo),1,1);
                end
            end % end for i_Gwo 
            % 921-960 
            melonAreaMin5 = data{8}(5).melonAreaMin;
            melonAreaMax5 = data{8}(5).melonAreaMax;
            dripTArea2 = data{8}(5).melonTAdd;
            for i_Gwo = 1 : numGWO
                melonArea5 =   unifrnd(melonAreaMin5, melonAreaMax5);
                range(941,1,i_Gwo) = 0; % min area of melon
                range(941,2,i_Gwo) = min([melonArea5,dripTArea2]); %  max area of added drip for melon
                GreyWolves(i_Gwo).position(941) = unifrnd(range(941,1,i_Gwo),range(941, 2,i_Gwo),1,1);
                GreyWolves(i_Gwo).position(921) = melonArea5 - GreyWolves(i_Gwo).position(941);
                range(941,1,i_Gwo) = melonAreaMin5 - GreyWolves(i_Gwo).position(941) ; % min area of melon
                range(941,2,i_Gwo) = melonAreaMax5 - GreyWolves(i_Gwo).position(941); %  max area of added drip for melon
                for t = 2 : 20
                   range(940 + t ,2,i_Gwo) = min([melonArea5, t * dripTArea2]); %  max area of added drip for wheat
                   range(940 + t,1,i_Gwo) =  min([melonArea5, (t-1) * dripTArea2]);
                   GreyWolves(i_Gwo).position(940 + t ) = unifrnd(range(940 + t ,1,i_Gwo),range(940 +t, 2,i_Gwo),1,1);
                   range(920 + t,1,i_Gwo) = melonArea5 - GreyWolves(i_Gwo).position(940 + t);
                   range(920 + t,2,i_Gwo) = GreyWolves(i_Gwo).position(920 + t -1);
                   GreyWolves(i_Gwo).position(920 + t) = unifrnd(range(920 + t,1,i_Gwo),range(920 +t,2,i_Gwo),1,1);
                end
            end % end for i_Gwo
             % 961-1000
            tomatoAreaMin5 =  data{8}(5).tomatoAreaMin;
            tomatoAreaMax5  = data{8}(5).tomatoAreaMax; 
            dripTArea2 = data{8}(5).tomatoTAdd;
            for i_Gwo = 1 : numGWO
                tomatoArea5 = unifrnd(tomatoAreaMin5,tomatoAreaMax5);
                range(981,1,i_Gwo) = 0; % min area of tomato
                range(981,2,i_Gwo) = min([tomatoArea5,dripTArea2]); %  max area of added drip for tomato
                GreyWolves(i_Gwo).position(981) = unifrnd(range(981,1,i_Gwo),range(981, 2,i_Gwo),1,1);
                GreyWolves(i_Gwo).position(961) = tomatoArea5 - GreyWolves(i_Gwo).position(981);
                range(961,1,i_Gwo) = tomatoAreaMin5 - GreyWolves(i_Gwo).position(981); % min area of tomato
                range(961,2,i_Gwo) = tomatoAreaMax5 - GreyWolves(i_Gwo).position(981); %  max area of added drip for tomato
                for t = 2 : 20
                   range(980 + t ,2,i_Gwo) = min([tomatoArea5, t * dripTArea2]); %  max area of added drip for wheat
                   range(980 + t,1,i_Gwo) =  min([tomatoArea5, (t-1) * dripTArea2]);
                   GreyWolves(i_Gwo).position(980 + t ) = unifrnd(range(980 + t ,1,i_Gwo),range(980 +t, 2,i_Gwo),1,1);
                   range(960 + t,1,i_Gwo) = tomatoArea5 - GreyWolves(i_Gwo).position(980 + t);
                   range(960 + t,2,i_Gwo) = GreyWolves(i_Gwo).position(960 + t -1);
                   GreyWolves(i_Gwo).position(960 + t) = unifrnd(range(960 + t,1,i_Gwo),range(960 +t,2,i_Gwo),1,1);
                end
            end % end for i_Gwo
            % ******************************************************************
            % 1501 - 1520变量为ICL  第一年应该为0 因为生物质发电还未运行
            %===================================================================
           
            for  i_Gwo = 1 : numGWO  
               range(1001:1020,1,i_Gwo) = data{1}.minCanal;
               range(1001:1020,2,i_Gwo) = data{1}.maxCanal;
               GreyWolves(i_Gwo).position(1001:1020) = unifrnd(range(1001:1020,1,i_Gwo)',range(1001:1020,2,i_Gwo)',1,20);
            end
                          
            for i_Gwo = 1 : numGWO
                [GreyWolves(i_Gwo).cost,GreyWolves(i_Gwo).constraints] = objFun(GreyWolves(i_Gwo).position',data,pionts);
                % Store by column way for later use
                GreyWolves(i_Gwo).cost = GreyWolves(i_Gwo).cost';
                GreyWolves(i_Gwo).constraints     =  GreyWolves(i_Gwo).constraints';
            end % end for i_Gwo
    end
end