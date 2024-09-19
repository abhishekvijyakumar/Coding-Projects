% dot x function definition
function dotX = f1(t,X)
x=X(1,1);
v=X(2,1); 
dotx = v;
dotv = 12-6*t;
dotX(1,1)=dotx;
dotX(2,1)=dotv;
return