function d = sinkhorn(epsilon,alpha,x,beta,y)

d = OTeps(epsilon,alpha,x,beta,y)-1/2*SymOTeps(epsilon,alpha,x)-1/2*SymOTeps(epsilon,beta,y);
end