clear all;

global P;
global T;
global m1;
global n1;
global m2;
global n2;
global b1;
global b2;


Data = xlsread('a.xls');

P = Data(:,3:4)';


T = Data(:,1:2)';


l1 = 7.5;
l2 = 10;

theta1=0:0.5:90;
theta2=0:0.5:140;

for k=1:length(theta1)
    for m = 1:length(theta2)
        T = [T   [theta1(k);theta2(m)] ];
        P = [P  [l1*cosd(theta1(k))+l2*cosd(theta1(k)+theta2(m)) ;l1*sind(theta1(k))+l2*sind(theta1(k)+theta2(m))] ] ;
    end
end

Ps = max(P,[],2);
Ts = max(T,[],2);

P(1,:) =  2*P(1,:)/Ps(1)  -1 ; 
P(2,:) =  2*P(2,:)/Ps(2)  -1 ; 

T(1,:) =  2*T(1,:)/Ts(1)  -1 ; 
T(2,:) =  2*T(2,:)/Ts(2)  -1 ; 


 


N1 = 30;



m1 = N1;
n1=2;



m2 = 2;
n2=N1;



b1 = N1;
b2 = 2;

global net;

net.IW{1,1} = zeros(m1,n1);

net.LW{2,1} = zeros(m2,n2);

net.b{1} = zeros(b1,1);
net.b{2} = zeros(b2,1);





dimension = m1*n1 + m2*n2  + b1 + b2;

f = @cost;

  
% x = ga(f1,dimension);
% 
% x = fminsearch(f,x);
x=PSO(f,dimension);



net.IW{1,1} = reshape(x(1:m1*n1),m1,n1 );
net.LW{2,1}= reshape(x( m1*n1+1 : m1*n1 + m2*n2),m2,n2);

net.b{1} = reshape(x(m1*n1 + m2*n2+1: m1*n1 + m2*n2+b1),b1,1);
net.b{2} = reshape(x(m1*n1 + m2*n2+b1+1: m1*n1 + m2*n2+b1 + b2),b2,1);

a1 = tansig(net.IW{1,1}*P + repmat(net.b{1},1,size(P,2)));
a2 = tansig(net.LW{2,1}*a1 + repmat(net.b{2},1,size(a1,2) ) );

mean_error = sum(sum((a2 - T ).^2 ))/size(T,2)

figure(1)
plot(T(1,:),T(2,:),'r*');
hold on;
plot(a2(1,:),a2(2,:),'b*');
xlabel('joint angle 1');
ylabel('joint angle 2');
hnew = legend('theta1 vs theta2 for test data','theta1 vs theta2 for neural network output');


 




