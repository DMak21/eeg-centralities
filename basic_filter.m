function [adj_a,adj_b,adj_d,adj_t,adj_g]=basic_filter(input,alpha,beta,delta,theta,gamma)

for i=1:32
    
    a(i,:)=filter(alpha,1,input(i,:));
    b(i,:)=filter(beta,1,input(i,:));
    d(i,:)=filter(delta,1,input(i,:));
    t(i,:)=filter(theta,1,input(i,:));
    g(i,:)=filter(gamma,1,input(i,:));

end

adj_a = gen_adj_mat(a, 90);
adj_b = gen_adj_mat(b, 90);
adj_d = gen_adj_mat(d, 90);
adj_t = gen_adj_mat(t, 90);
adj_g = gen_adj_mat(g, 90);

end
