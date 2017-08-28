% fix - Fixation
% que - Question
% res - Response

% a - alpha
% b - beta
% d - delta
% t - theta
% g - gamma

% Q 1SEG
for k = [1:21]
    eval(['[que_a', num2str(k, '%.2d') ,'_1,que_b', num2str(k, '%.2d') ,'_1,que_d', num2str(k, '%.2d') ,'_1,que_t', num2str(k, '%.2d') ,'_1,que_g', num2str(k, '%.2d') ,'_1]=basic_filter(Q', num2str(k), '_Segment_01,alpha,beta,delta,theta,gamma);']);
    eval(['temp_a = res_a', num2str(k, '%.2d') ,'_1']);
    eval(['temp_b = res_b', num2str(k, '%.2d') ,'_1']);
    eval(['temp_d = res_d', num2str(k, '%.2d') ,'_1']);
    eval(['temp_t = res_t', num2str(k, '%.2d') ,'_1']);
end

% -------------------------------------------------------------------------

% R 1SEG
for k = [1:21]
    eval(['[res_a', num2str(k, '%.2d') ,'_1,res_b', num2str(k, '%.2d') ,'_1,res_d', num2str(k, '%.2d') ,'_1,res_t', num2str(k, '%.2d') ,'_1,res_g', num2str(k, '%.2d') ,'_1]=basic_filter(REP_Segment_', num2str(k, '%.2d'),',alpha,beta,delta,theta,gamma);']);
    eval(['temp_a = res_a', num2str(k, '%.2d') ,'_1']);
    eval(['temp_b = res_b', num2str(k, '%.2d') ,'_1']);
    eval(['temp_d = res_d', num2str(k, '%.2d') ,'_1']);
    eval(['temp_t = res_t', num2str(k, '%.2d') ,'_1']);
end