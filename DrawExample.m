function DrawExample(numObj,costOld,Archive,testPro,Iteration,maxIter,divImp)
%******************************* DrawOld ****************************
%% Function: DrawOld()
%
% ----------------------------  Function   ---------------------------------
%% Syntax:  
%    DrawExample(numObj,costOld,costOpt,archiveCost,testPro,Iteration,maxIter,divImp)
%% Parameters: 
%   Inputs:
%       numObj:         the number of grey wolves
%       costOld:        function values of  Old grey wolves
%       costOpt:        function values of new grey wolves
%       archiveCost:    function values of first rank level
%       testPro:        the name of test problem
%       Iteration :     current iteration
%       maxIter:        the maximum iteration
%       divImp:     	selection methods
%
%%                  Zhang T.
%                
%        Revision: 1.0.0  Date: 2021-04-01
%*************************************************************************    

    %% Plot data  
       costOpt = vertcat(Archive.cost);
       
       iter = Iteration;

       if numObj == 2
           if iter ~= maxIter
            hold off;
           end
           
%             subplot(2,1,1)
            plot(-costOld(:,1),costOld(:,2),'k.');
            hold on;     
            plot(-costOpt(:,1),costOpt(:,2),'rd');
            t = title(['TestProbem: ',testPro,'   Iterations:',num2str(iter)]);
            t.FontName = 'Cambria';
            t.FontSize = 16;
            t.Color = 'red';
            t.FontWeight = 'bold';
            legend({'Grey wolves','Non-dominated solutions'},'Location','northeast','FontSize',14,'TextColor','blue','FontName','Cambria');
            legend('boxoff');
            set(gca,'XTickMode','auto','YTickMode','auto','FontName','Cambria','FontWeight','bold','FontSize',14);
            drawnow;
       else 
            
           if iter ~= maxIter
            hold off;
           end
%             subplot(2,1,1)
           plot3(costOld(:,1),costOld(:,2),costOld(:,3),'k.');
            hold on;
           plot3(costOpt(:,1),costOpt(:,2),costOpt(:,3),'rd');
            t = title(['TestProblem: ',testPro, '   Iteration:',num2str(iter)]);
            t.FontName = 'Cambria';
            t.FontSize = 16;
            t.Color = 'red';
            t.FontWeight = 'bold';
%             legend({'Grey wolves','Non-dominated solutions'},'Location','northeast','FontSize',10,'TextColor','blue','FontName','Cambria');
%             legend('boxoff');
%             set(gca,'xdir','reverse','ydir','reverse')
           if  iter == maxIter
            legend({'Ture PF','Grey wolves','Non-dominated solutions'},'Location','northeast','FontSize',14,'TextColor','blue','FontName','Cambria');
           else
            legend({'Grey wolves','Non-dominated solutions'},'Location','northeast','FontSize',14,'TextColor','blue','FontName','Cambria');
           end
            legend('boxoff')
            set(gca,'XTickMode','auto','YTickMode','auto','ZTickMode','auto','View',[-45 20],'FontName','Cambria','FontWeight','bold','FontSize',14);
            grid on;
            axis on;
            axis tight;
            drawnow;
         
       end
   
       if iter == maxIter
           dir = ['Images/'  divImp '/' testPro '/' datestr(datetime,'yyyymmddTHHMMSS')];
            if ~exist(dir,'dir')
                mkdir(dir);
            end
            figName = [dir '/' testPro];
            strfigure1 = ['print -f -djpeg -r600 ' figName];
            eval(strfigure1);
            saveas(gcf,figName);
     
%             t= toc;
            timePath = [dir  '/time.mat'];
            save(timePath,'t');
            
            archivePath = [dir '/Archive.mat'];
            save(archivePath,'Archive');  
            clear costOpt;
            clear costOld;
            close all;
       end
           
end