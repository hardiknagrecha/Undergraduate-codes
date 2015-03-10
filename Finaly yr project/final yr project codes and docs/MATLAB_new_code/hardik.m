clear all;

Data = xlsread('a.xls');

P = Data(:,3:4)';


T = Data(:,1:2)';


l1=0.075;
l2=0.1;

theta1=0:0.5:90;
theta2=0:0.5:140;

for k=1:length(theta1)
    for m = 1:length(theta2)
        T = [T   [theta1(k);theta2(m)] ];
        P = [P  [l1*cosd(theta1(k))+l2*cosd(theta1(k)+theta2(m)) ;l1*sind(theta1(k))+l2*sind(theta1(k)+theta2(m))] ] ;
    end
end
        





net = feedforwardnet([7 3]);

net.layers{1}.transferFcn = 'tansig';
net.layers{2}.transferFcn = 'tansig';

net=init(net);
[net,tr] = train(net,P,T);


out = net(P);

plot(out(1,:),out(2,:),'b*');

hold on;

plot(T(1,:),T(2,:),'r*');


