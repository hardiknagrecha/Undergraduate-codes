function c = cost(x)





global net;
global m1;
global n1;
global m2;
global n2;
global b1;
global b2;

global P;
global T;


net.IW{1,1} = reshape(x(1:m1*n1),m1,n1 );



net.LW{2,1}= reshape(x( m1*n1+1 : m1*n1 + m2*n2),m2,n2);



net.b{1} = reshape(x(m1*n1 + m2*n2+1: m1*n1 + m2*n2+b1),b1,1);

net.b{2} = reshape(x(m1*n1 + m2*n2+b1+1: m1*n1 + m2*n2+ b1 + b2),b2,1);

a1 = tansig(net.IW{1,1}*P + repmat(net.b{1},1,size(P,2)));

a2 = tansig(net.LW{2,1}*a1 + repmat(net.b{2},1,size(a1,2) ) );

c = sum(sum(  (a2 - T ).^2 )) /size(T,2);

end