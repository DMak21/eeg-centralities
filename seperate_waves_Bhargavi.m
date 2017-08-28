% fix - Fixation
% que - Question
% res - Response

% a - alpha
% b - beta
% d - delta
% t - theta
% g - gamma

% Q 1SEG
for k = [1 4]
    eval(['[que_a', num2str(k, '%.2d') ,'_1,que_b', num2str(k, '%.2d') ,'_1,que_d', num2str(k, '%.2d') ,'_1,que_t', num2str(k, '%.2d') ,'_1,que_g', num2str(k, '%.2d') ,'_1]=basic_filter(Q', num2str(k), '_Segment_01,alpha,beta,delta,theta,gamma);']);
    eval(['temp_a = res_a', num2str(k, '%.2d') ,'_1']);
    eval(['temp_b = res_b', num2str(k, '%.2d') ,'_1']);
    eval(['temp_d = res_d', num2str(k, '%.2d') ,'_1']);
    eval(['temp_t = res_t', num2str(k, '%.2d') ,'_1']);
end

% Q 2SEG
for i = [2 3 5:21]
    for j = 1:2
        eval(['[que_a', num2str(i, '%.2d'), '_', num2str(j) ,',que_b', num2str(i, '%.2d'), '_', num2str(j) ,',que_d', num2str(i, '%.2d'), '_', num2str(j) ,',que_t', num2str(i, '%.2d'), '_', num2str(j) ,',que_g', num2str(i, '%.2d'), '_', num2str(j) ,']=basic_filter(Q', num2str(i) ,'_Segment_', num2str(j,'%.2d') ,',alpha,beta,delta,theta,gamma);']);
        eval(['temp_a = que_a', num2str(i, '%.2d'), '_', num2str(j)]);
        eval(['temp_b = que_b', num2str(i, '%.2d'), '_', num2str(j)]);
        eval(['temp_d = que_d', num2str(i, '%.2d'), '_', num2str(j)]);
        eval(['temp_t = que_t', num2str(i, '%.2d'), '_', num2str(j)]);

    end
end

% Q 3SEG
for i = []
    for j = 1:3
        eval(['[que_a', num2str(i, '%.2d'), '_', num2str(j) ,',que_b', num2str(i, '%.2d'), '_', num2str(j) ,',que_d', num2str(i, '%.2d'), '_', num2str(j) ,',que_t', num2str(i, '%.2d'), '_', num2str(j) ,',que_g', num2str(i, '%.2d'), '_', num2str(j) ,']=basic_filter(Q', num2str(i) ,'_Segment_', num2str(j,'%.2d') ,',alpha,beta,delta,theta,gamma);']);
        eval(['temp_a = que_a', num2str(i, '%.2d'), '_', num2str(j)]);
        eval(['temp_b = que_b', num2str(i, '%.2d'), '_', num2str(j)]);
        eval(['temp_d = que_d', num2str(i, '%.2d'), '_', num2str(j)]);
        eval(['temp_t = que_t', num2str(i, '%.2d'), '_', num2str(j)]);

    end
end

% Q 4SEG
for i = []
    for j = 1:4
        eval(['[que_a', num2str(i, '%.2d'), '_', num2str(j) ,',que_b', num2str(i, '%.2d'), '_', num2str(j) ,',que_d', num2str(i, '%.2d'), '_', num2str(j) ,',que_t', num2str(i, '%.2d'), '_', num2str(j) ,',que_g', num2str(i, '%.2d'), '_', num2str(j) ,']=basic_filter(Q', num2str(i) ,'_Segment_', num2str(j,'%.2d') ,',alpha,beta,delta,theta,gamma);']);
        eval(['temp_a = que_a', num2str(i, '%.2d'), '_', num2str(j)]);
        eval(['temp_b = que_b', num2str(i, '%.2d'), '_', num2str(j)]);
        eval(['temp_d = que_d', num2str(i, '%.2d'), '_', num2str(j)]);
        eval(['temp_t = que_t', num2str(i, '%.2d'), '_', num2str(j)]);

    end
end

% -------------------------------------------------------------------------

% R 1SEG
for k = [1 2 6 8 10 11 13 15 17 21]
    eval(['[res_a', num2str(k, '%.2d') ,'_1,res_b', num2str(k, '%.2d') ,'_1,res_d', num2str(k, '%.2d') ,'_1,res_t', num2str(k, '%.2d') ,'_1,res_g', num2str(k, '%.2d') ,'_1]=basic_filter(Q', num2str(k), 'R_Segment_01,alpha,beta,delta,theta,gamma);']);
    eval(['temp_a = res_a', num2str(k, '%.2d') ,'_1']);
    eval(['temp_b = res_b', num2str(k, '%.2d') ,'_1']);
    eval(['temp_d = res_d', num2str(k, '%.2d') ,'_1']);
    eval(['temp_t = res_t', num2str(k, '%.2d') ,'_1']);
end

% R 2SEG
for i = []
    for j = 1:2
        eval(['[res_a', num2str(i, '%.2d'), '_', num2str(j) ,',res_b', num2str(i, '%.2d'), '_', num2str(j) ,',res_d', num2str(i, '%.2d'), '_', num2str(j) ,',res_t', num2str(i, '%.2d'), '_', num2str(j) ,',res_g', num2str(i, '%.2d'), '_', num2str(j) ,']=basic_filter(Q', num2str(i) ,'R_Segment_', num2str(j,'%.2d') ,',alpha,beta,delta,theta,gamma);']);
        eval(['temp_a = res_a', num2str(i, '%.2d'), '_', num2str(j)]);
        eval(['temp_b = res_b', num2str(i, '%.2d'), '_', num2str(j)]);
        eval(['temp_d = res_d', num2str(i, '%.2d'), '_', num2str(j)]);
        eval(['temp_t = res_t', num2str(i, '%.2d'), '_', num2str(j)]);

    end
end
