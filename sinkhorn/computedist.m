rng default

x=randn(100,2);
y=randn(100,2)+[10,-2];
scatter(x(:,1),x(:,2))
hold on
scatter(y(:,1),y(:,2))
hold off

OTeps(0.1,ones(size(x,1),1)/size(x,1),x,ones(size(y,1),1)/size(y,1),y)
sinkhorn(0.1,ones(size(x,1),1)/size(x,1),x,ones(size(y,1),1)/size(y,1),y)

sinkhorn(0.1,ones(size(x,1),1)/size(x,1),x,ones(size(x,1),1)/size(x,1),x)