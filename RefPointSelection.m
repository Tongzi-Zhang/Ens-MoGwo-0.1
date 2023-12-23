function [GreyWolves,FrontNo,front] = RefPointSelection(GreyWolves,refUniValue,minRef,MaxFNo,FrontNo,numRef)
%******************************* RefPointSelection ************************************
%%  Function: RefPointSelection()
%% Description: 
%   This function is used to extract grey wolves as the same size of
%   original populations
% 
%% Syntax:  
%    GreyWolves= RefPointSelection(GreyWolves,refUniValue,minRef,MaxFNo,FrontNo,numRef)
%% Parameters:
%   Inputs:
%      GreyWolves:       grey wolves 
%      refUniValue:      reference points 
%      minRef:           ideal point
%      MaxFNo:           the maximum rank level
%      FrontNo:          the rank levels of each grey wolf
%      numRef:           the number of reference point
%   Outputs:
%      GreyWolves:   	 selected grey wolves      
%
%------------------------------- Reference --------------------------------
%. Kalyanmoy Deb.An Evolutionary Many-Objective Optimization Algorithm Using Reference-Point-Based
% Nondominated Sorting Approach,Part I: Solving Problems With Box
% Constraints.IEEE Transactions on Evolutionary Computation,2014,18(4):
% 577-601.
%% Cited from PlatEMO All rights reserved.
%
%%              PlatEMO
%       Copyright (c) 2021 BIMK Group.
%
%% Modified by Zhang, T.
%                
%   Revision: 1.0.0  Date: 2021-04-01
%************************************************************************   
    % Obtain parameters
    Next = FrontNo < MaxFNo;
    
    %% Select the solutions in the last front ����while�����������ص�FrontNo==MaxFNo����Ҫȥ���ĸ����������
       %%% 05/12/2021
    if isempty(minRef)
        minRef = ones(1,size(refUniValue,2));
    end
    Last   = find(FrontNo == MaxFNo);%���һ������λ��
    Choose = LastSelection(vertcat(GreyWolves(Next).cost),vertcat(GreyWolves(Last).cost),numRef-sum(Next),refUniValue,minRef);%��ȡ���һ��ѡ�����
    Next(Last(Choose)) = true;%���������һ��ѡ��λ��ȷ��
    % Population for next generation
    GreyWolves = GreyWolves(Next,:);%ȷ�����ѡ�����Ⱥ����
    FrontNo = vertcat(GreyWolves.rank);
    
    frontStr = struct('f',[]);
    front = repmat(frontStr,1,1);
                
    for i_front = 1:MaxFNo
        front(i_front).f = find(FrontNo' == i_front);
    end
   
end

%��һ����NSGA-III Algorithm 1��12��֮��Ĳ���;Zmin��ȡ��Algorith 2��2��ʵ��
function Choose = LastSelection(PopObj1,PopObj2,K,Z,Zmin)
% Select part of the solutions in the last front
    % Algorithm 2 ��3�� Translate objectives��fj'=fj-zmin
    PopObj = [PopObj1;PopObj2] - repmat(Zmin,size(PopObj1,1)+size(PopObj2,1),1);
    [N,M]  = size(PopObj);%��ǰoffspring����Ⱥ��Ŀ
    N1     = size(PopObj1,1);%offspring 1��2��...,l-1ǰ�ص���Ⱥ��Ŀ
    N2     = size(PopObj2,1);%offspring lǰ�ص���Ⱥ��Ŀ
    NZ     = size(Z,1);% �ο������Ŀ����˵��Ⱥ�����ݣ���Ϊ�����н��������Ⱥ��Ŀ��ο������Ŀ��ͬ

    %% Normalization
    % Detect the extreme points�� Algorithm 2��4��
    Extreme = zeros(1,M);
    w       = zeros(M)+1e-6+eye(M);
    for i = 1 : M
        [~,Extreme(i)] = min(max(PopObj./repmat(w(i,:),N,1),[],2));% Extreme(i)��ʾ��Ⱥ����;max����Ŀ�����Ȼ���ȡ������Ⱥ����С���Ǹ�
    end
    % Calculate the intercepts of the hyperplane constructed by the extreme
    % points and the axes��Algorithm 2 ��6-7��
%     Hyperplane = PopObj(Extreme,:)\ones(M,1);%A��������� A1���� B/A = B*A1��A\B = A1*B ,��Hyperplane��������,ϵ��
    Hyperplane = pinv(PopObj(Extreme,:)) * ones(M,1); %��ֹ����������
    a = 1./Hyperplane;%��ȡÿ������Ľؾ�,��ʵ����ؾ�Ҳ�Ǽ�ȥ�����֮��ģ������ҳ�֮Ϊ������ؾࡱ
    if any(isnan(a))%��a��Ԫ��ΪNaN������ֵ�����ڶ�Ӧλ���Ϸ����߼�1���棩�����򷵻��߼�0���٣�
        a = max(PopObj,[],1)';
    end
    % Normalization Algorithm 2�� end Normalization
    %a = a-Zmin';
    PopObj = PopObj./repmat(a',N,1);%���a��b�Ǿ���a./b����a��b�ж�Ӧ��ÿ��Ԫ��������õ�һ���µľ���
 
    %% Associate each solution with one reference point
    % Calculate the distance of each solution to each reference vector
    Cosine   = 1 - pdist2(PopObj,Z,'cosine');%cosine�� �������,�н����Ҿ���Cosine distance(��cosine��)�������ƶ�(���ҽ�)= 1-���Ҿ��� ������������֮��Ĳ���
    %pdist2 pairwise distance between two sets of observations
    %�ܿ��¾���Jaccard distance(��jaccard��)Jaccard���볣��������������ǶԳƵĶ�Ԫ(0-1)���ԵĶ��󡣺���Ȼ��Jaccard���벻����0-0ƥ��[1]��
    %�н����Ҿ���Cosine distance(��cosine��)��Jaccard������ȣ�Cosine���벻������0-0ƥ�䣬�����ܹ�����Ƕ�Ԫ�����������ǵ�����ֵ�Ĵ�С��
    %�������ߣ����������ƶȺ�Ϊһ��
    %https://www.cnblogs.com/chaosimple/archive/2013/06/28/3160839.html

    Distance = repmat(sqrt(sum(PopObj.^2,2)),1,NZ).*sqrt(1-Cosine.^2);% Popobj����*sin������Ҫע�⣬ÿ���ο��㣨��Ⱥ������ÿһ����Ⱥ���壨�ο��㣩����һ���нǣ���������ϵ
    %Distance = pdist2(PopObj,Z,'euclidean');%����ע�͵��������Ҳ����Ŷ
    % Associate each solution with its nearest reference point
    [d,pi] = min(Distance',[],1);%������С����ο��㾭����line������Ⱥ���������С�ľ��룬Ҳ����˵�ο���ӽ���Ⱥ���壬ÿһ����һ����Ⱥ���壬����Ⱥ����Ĳο��㣬pi�ǲο�������

    %% Calculate the number of associated solutions except for the last front of each reference point
    rho = hist(pi(1:N1),1:NZ);% The number of different reference points that selected by grey wolves.

    %% Environmental selection
    Choose  = false(1,N2);
    Zchoose = true(1,NZ);
    % Select K solutions one by one
    while sum(Choose) < K
        % Select the least crowded reference point
        Temp = find(Zchoose);%����
        Jmin = find(rho(Temp)==min(rho(Temp)));%���вο�������֮�����������ٵ��Ǹ��ο��㣬һ�����0����Ŀ���Ƕ�����
        j    = Temp(Jmin(randi(length(Jmin))));%���ѡ��һ��������С�Ĳο���
        I    = find(Choose==0 & pi(N1+1:end)==j);% ����λ���Ǹ�������Ԫ����ȷ���ģ������ж��
        % Then select one solution associated with this reference point
        if ~isempty(I)
            if rho(j) == 0
                [~,s] = min(d(N1+I));%�ж��ѡ����С���Ǹ�
            else
                s = randi(length(I));
            end
            Choose(I(s)) = true;%���ڵ�λ��
            rho(j) = rho(j) + 1;%��������1��Ҳ����˵�´���ѡ�����ĸ��ʽ��ǳ�С��
        else
            Zchoose(j) = false;
        end
    end
end