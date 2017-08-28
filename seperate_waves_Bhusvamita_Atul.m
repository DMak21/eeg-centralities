% fix - Fixation
% que - Question
% res - Response

% a - alpha
% b - beta
% d - delta
% t - theta
% g - gamma

% Q 1SEG
que_a = zeros(32,0);
que_b = zeros(32,0);
que_d = zeros(32,0);
que_t = zeros(32,0);

for k = 1:21
    eval(['[que_a', num2str(k, '%.2d') ,'_1,que_b', num2str(k, '%.2d') ,'_1,que_d', num2str(k, '%.2d') ,'_1,que_t', num2str(k, '%.2d') ,'_1,que_g', num2str(k, '%.2d') ,'_1]=basic_filter(Q', num2str(k), '_Segment_01,alpha,beta,delta,theta,gamma);']);
    eval(['temp_a = que_a', num2str(k, '%.2d') ,'_1']);
    eval(['temp_b = que_b', num2str(k, '%.2d') ,'_1']);
    eval(['temp_d = que_d', num2str(k, '%.2d') ,'_1']);
    eval(['temp_t = que_t', num2str(k, '%.2d') ,'_1']);
    
    que_a = [que_a closeness(temp_a)];
    que_b = [que_b closeness(temp_b)];
    que_d = [que_d closeness(temp_d)];
    que_t = [que_t closeness(temp_t)];
    
    
end
save closeness_que.mat que_a que_b que_d que_t
