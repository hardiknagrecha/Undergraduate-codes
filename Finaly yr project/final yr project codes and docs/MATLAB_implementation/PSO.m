function xgbest = PSO(f,dimension)



dim = dimension;
PopSize=20; 


Iterations=500; 

xmin=-1;
xmax=1;

c1 = 2.05;

c2=c1;



for p=1:PopSize
    particle(p).x = xmin + (xmax-xmin)*rand(1,dim);
    particle(p).v =  xmin + (xmax-xmin)*rand(1,dim);
    particle(p).pbest= xmin + (xmax-xmin)*rand(1,dim);
    particle(p).cost= sphere(particle(p).x);
end

xgbest =  xmin + (xmax-xmin)*rand(1,dim);
cgbest = f(xgbest);



bestsols = zeros(Iterations,1);

for r=1:Iterations
    
    r1 = -1+2*rand;
    r2=-1+2*rand;
    
    v = c1*(r1*(particle(p).pbest - particle(p).x) + c2*r2*(xgbest- particle(p).x));
    
    
    particle(p).v = particle(p).v + v;
    
    particle(p).v = max(particle(p).v,-2);
    particle(p).v = min(particle(p).v,2);
    
    particle(p).x =( particle(p).x +particle(p).v);
    
    particle(p).x  = max(particle(p).x ,-1);   %-10
    
    particle(p).x  = min(particle(p).x ,1);   %10
    
    cost =  f(particle(p).x);
    
    if cost < f(particle(p).pbest)
        particle(p).pbest =  particle(p).x;
    end
    
    if cost <  cgbest
        xgbest =  particle(p).x;
        cgbest = cost;
    end
    
    bestsols(r) = cgbest;
    
end

% figure;
% plot(bestsols);
% 
% xlabel('Iteration')
% ylabel('Cost')



end
    

    
    
    
    
    
    
    
