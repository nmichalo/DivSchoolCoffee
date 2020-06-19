function d = OTeps(epsilon,alpha,x,beta,y)

f=zeros(size(alpha));
g=zeros(size(beta));
d=0;
dold=1;
k=0;
while (abs(d-dold) > 1e-14)
    dold=d;
    %for k=1:50
    for i=1:length(alpha)
        f(i) = -epsilon*lse(log(beta) + 1./epsilon*g - 1./epsilon*cost(x(i,:),y));
    end
    for j = 1:length(beta)
        g(j) = -epsilon*lse(log(alpha) + 1./epsilon*f - 1./epsilon*cost(x,y(j,:)));
    end
    %end
    k=k+1;
    d = alpha'*f + beta'*g;
end
disp(k)


