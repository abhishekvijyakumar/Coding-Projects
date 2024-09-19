% dot x function definition
function dotX = f1(t,X)
x=X(1,1);
v=X(2,1); 
dotx = v;
dotv = -(0.1+sin(x/0.8));
dotX(1,1)=dotx;
dotX(2,1)=dotv;
return