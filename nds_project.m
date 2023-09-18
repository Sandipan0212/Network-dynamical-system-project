close all;
clear all;
clc;

N=4;

x(1)= 1.0;
x(2)= 1.2;
x(3)= 1.4;
x(4)= 1.5;

x_initial = x;

%L = [ -1 .5 .5; .5 -1 .5; .5 .5 -1];
%L = [ 1 -1 1 -1; -1 2 -1 0; 1 -1 1 -1; -1 0 -1 2];
L = [ 2 -1 0 -1; -1 2 -1 0; 0 -1 2 -1; -1 0 -1 2];
%L = [ -1 1 0 0; 1 2 -1 -2; 0 -1 1 0; 0 -2 0 2];
T = 10;
dt = 0.01;


iStep = 1;
xStore = zeros(round(T/dt),N);
uStore = zeros(round(T/dt),N);
time = zeros(round(T/dt),1);

for t = 0:dt:T
    
    
        
        u = -L*x';
        
    
    
    
    
    xStore(iStep,:)=x;
    uStore(iStep,:)=u;
    time(iStep,:)= t;
    iStep = iStep +1;
    
    
    x = x + u'*dt;
    
    drawnow
    
end

figure(1)
plot(time,xStore)
xlabel("time")
ylabel("states")
axis square
%axis equal

hold on

figure(2)
plot(time,uStore)
xlabel("time")
ylabel("control unit")











    
        
    




