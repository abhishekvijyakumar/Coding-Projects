% ECE 10 - Fundamentals of Robot Kinematics and Dynamics
% Prof. Dejan Milutinovic
% Abhishek Vijayakumar
% Hw4 plots
function dx=odeHw4(t,x)
 
%global vars
  global v
  global D
  global u

  xv=x(1,1);
  yv=x(2,1);
  theta=x(3,1);

  %1st partial derivatve of f(x,y) with respect to x
  dfdx= 3 * (xv .^2) -4;
  
  %2nd partial derivatve of f(x,y) with respect to x
  df2dx2= 6 * xv;
  
  %1st partial derivatve of f(x,y) with respect to y
  dfdy= -1;
  
  %2nd partial derivatve of f(x,y) with respect to y
  df2dy2=0;

  % u=-v*(df2dx2*cos(theta)^2+df2dy2*sin(theta)^2)/(dfdy*cos(theta)-dfdx*sin(theta));
  dfdx=-dfdy*tan(theta);
  u=-v*(df2dx2*cos(theta)+df2dy2*tan(theta)*sin(theta))/(dfdy-dfdx*tan(theta));
  dx(1,1)=v*cos(theta);
  dx(2,1)=v*sin(theta);
  dx(3,1)=u;

end