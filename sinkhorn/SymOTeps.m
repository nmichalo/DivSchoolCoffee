function d = SymOTeps(epsilon,alpha,x)

f=zeros(size(alpha));

d=0;
dold=1;
k=0;
while (abs(d-dold) > 1e-14)
    dold=d;
    for i=1:length(alpha)
        f(i) = 1/2*(f(i)-epsilon*lse(log(alpha) + 1./epsilon*f - 1./epsilon*cost(x(i,:),x)));
    end
    k=k+1;
    d = 2*alpha'*f;    
end
disp(k)
end