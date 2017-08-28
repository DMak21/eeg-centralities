fix=20;
que=0;
res=21;

% fix - Fixation
% que - Question
% res - Response

% a - alpha
% b - beta
% d - delta
% t - theta
% g - gamma

if(fix ~= 0)
    for i = 1:fix
        eval(['[fix_a', num2str(i, '%.2d') ,',fix_b', num2str(i, '%.2d') ,',fix_d', num2str(i, '%.2d') ,',fix_t', num2str(i, '%.2d') ,',fix_g', num2str(i, '%.2d') ,']=basic_filter(Fixation_Segment_', num2str(i, '%.3d'), ',alpha,beta,delta,theta,gamma);']);
    end
end
if(que ~= 0)
    for j = 1:que
       eval(['[que_a', num2str(j, '%.2d') ,',que_b', num2str(j, '%.2d') ,',que_d', num2str(j, '%.2d') ,',que_t', num2str(j, '%.2d') ,',que_g', num2str(j, '%.2d') ,']=basic_filter(Q', num2str(j) ,'_Segment_01,alpha,beta,delta,theta,gamma);']);
    end
end
if(res ~= 0)
    for k = 1:res
       eval(['[res_a', num2str(k, '%.2d') ,',res_b', num2str(k, '%.2d') ,',res_d', num2str(k, '%.2d') ,',res_t', num2str(k, '%.2d') ,',res_g', num2str(k, '%.2d') ,']=basic_filter(REP_Segment_', num2str(k, '%.2d') ,',alpha,beta,delta,theta,gamma);']);
    end
end

