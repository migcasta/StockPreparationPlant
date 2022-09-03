% Linear Transfer Function Models of the Stock Preparation Plant

G=tf(num2cell(zeros(5,5)),num2cell(ones(5,5))); 
G(1,1)= tf(2.8961,[5.8279 , 2.965,1]); % PA-PI1
G(1,2)=tf( -0.54313 , [2.9712 ,1  ]); % VA1-PI1
G(1,3)=tf(-0.87994,[0.92472,1]); % VA2-PI1
G(2,2)=tf(1.5359, [42.331,1] ); % VA1-FI1
G(2,3)=tf(0.40553, [20.046,1]); % VA2-FI1
G(3,2)=tf(0.35223, [18.8525,1]); %  VA1-FI2
G(3,3)=tf(1.8979,[29.6601,1]); % VA2-FI2
G(4,4)=tf(0.24843,[4.505,1]); % VA3-FI3
G(4,5)=tf(-0.019761,[2.1097,1]);% VA4-FI3
G(5,4)=tf(-0.042479,[4.7492,1]); % VA3-FI4
G(5,5)=tf(0.20199,[2.018,1]); % VA4-FI4
%Set input and Output Names
set(G,'InputName',{'PA','VA1','VA2','VA3','VA4'});
set(G,'OutputName',{'PI1','FI1','FI2','FI3','FI4'});