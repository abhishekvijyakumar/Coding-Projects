%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  CE10 Spring 2023, 4-side planter
%  Prof. Dejan Milutinovic
%  UC Santa Cruz
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%corners of the bottom base
clear all;
close all;
d1=[1;0;0];
R=RotMatrix([0;0;1],2*pi/5); %pi/2 shows 4 sided in pi
d2=R*d1;
d3=R*d2;
d4=R*d3;
d5=R*d4;

%draw vector d1  
plot3([0 d1(1)],[0 d1(2)], [0 d1(3)],'r-o');
axis([-6 6 -6 6 -1 11]);
axis square
hold on

%draw vectors d2, d3, d4, d5
plot3([0 d2(1)],[0 d2(2)], [0 d2(3)],'r-');
plot3([0 d3(1)],[0 d3(2)], [0 d3(3)],'r-');
plot3([0 d4(1)],[0 d4(2)], [0 d4(3)],'r-');
plot3([0 d5(1)],[0 d5(2)], [0 d5(3)],'r-');

%draw the edges of the bottom base
plot3([d1(1) d2(1) d3(1) d4(1) d5(1) d1(1)],...
      [d1(2) d2(2) d3(2) d4(2) d5(2) d1(2)],...
      [d1(3) d2(3) d3(3) d4(3) d5(3) d1(3)],'b-');
%return;

%vector D1
R=RotMatrix([0;0;1],2*pi/5);
nd1=R*d1;

%R=RotMatrix(nd1,-(pi/2-30*pi/180));
alpha=75*pi/180;
R=RotMatrix(nd1,-alpha);
D1=d1+R*d1/sqrt(d1'*d1)*2;
R=RotMatrix([0;0;1],2*pi/5);

%corners of the upper base 
D2=R*D1;
D3=R*D2;
D4=R*D3;
D5=R*D4;

%draw the vectors of the upper base
plot3([0 D1(1)],[0 D1(2)], [0 D1(3)],'r-o');
hold on
plot3([0 D2(1)],[0 D2(2)], [0 D2(3)],'r-');
plot3([0 D3(1)],[0 D3(2)], [0 D3(3)],'r-');
plot3([0 D4(1)],[0 D4(2)], [0 D4(3)],'r-');
plot3([0 D5(1)],[0 D5(2)], [0 D5(3)],'r-');

%draw the edges of the upper base
plot3([D1(1) D2(1) D3(1) D4(1) D5(1) D1(1)],...
      [D1(2) D2(2) D3(2) D4(2) D5(2) D1(2)],...
      [D1(3) D2(3) D3(3) D4(3) D5(3) D1(3)]);  
%return;

%draw the edges connecting the bottom and upper bases
plot3([d1(1) D1(1)],[d1(2) D1(2)],[d1(3) D1(3)],'k-');
plot3([d2(1) D2(1)],[d2(2) D2(2)],[d2(3) D2(3)],'k-');
plot3([d3(1) D3(1)],[d3(2) D3(2)],[d3(3) D3(3)],'k-');
plot3([d4(1) D4(1)],[d4(2) D4(2)],[d4(3) D4(3)],'k-');
plot3([d5(1) D5(1)],[d5(2) D5(2)],[d5(3) D5(3)],'k-');

%edge vectors of the 1st side 
%return;
edg1=d2-d1;
edg9=D1-d1;
edg10=D2-d2;

%angle of the 1st side 
v1=cross(edg9,edg1);
v1=v1/sqrt(v1'*v1);
plot3([d1(1) d1(1)+v1(1)],[d1(2) d1(2)+v1(2)],...
    [d1(3) d1(3)+v1(3)],'b-','linewidth',2);
rotAngle=acos(v1(3));

%edge vectors of the 1st side
edg1=d2-d1;
edg9=D1-d1;
edg10=D2-d2;

%1st side vector rotations 
R=RotMatrix(edg1,rotAngle);
edg9_1=R*edg9;
edg10_1=R*edg10;
D1pln_1=d1+edg9_1;
D2pln_1=d2+edg10_1;
plot3([d1(1) D1pln_1(1) D2pln_1(1) d2(1)],...
      [d1(2) D1pln_1(2) D2pln_1(2) d2(2)],...
      [d1(3) D1pln_1(3) D2pln_1(3) d2(3)],'k-');

%edge vectors of the 2nd side
edg2=d3-d2;
edg10=D2-d2;
edg11=D3-d3;

%2nd side vector rotations 
R=RotMatrix(edg2,rotAngle);
edg10_2=R*edg10;
edg11_2=R*edg11;
D2pln_2=d2+edg10_2;
D3pln_2=d3+edg11_2;
plot3([d2(1) D2pln_2(1) D3pln_2(1) d3(1)],...
      [d2(2) D2pln_2(2) D3pln_2(2) d3(2)],...
      [d2(3) D2pln_2(3) D3pln_2(3) d3(3)],'k-');

%edge vectors of the 3rd side
%return;
edg3=d4-d3;
edg11=D3-d3;
edg12=D4-d4;

%3rd side vector rotations 
R=RotMatrix(edg3,rotAngle);
edg11_3=R*edg11;
edg12_3=R*edg12;
D3pln_3=d3+edg11_3;
D4pln_3=d4+edg12_3;
plot3([d3(1) D3pln_3(1) D4pln_3(1) d4(1)],...
      [d3(2) D3pln_3(2) D4pln_3(2) d4(2)],...
      [d3(3) D3pln_3(3) D4pln_3(3) d4(3)],'k-');


%edge vectors of the 4th side 
edg4=d5-d4;
edg12=D4-d4;
edg13=D5-d5;

%4th side vector rotations 
R=RotMatrix(edg4,rotAngle);
edg12_4=R*edg12;
edg13_4=R*edg13;
D4pln_4=d4+edg12_4;
D5pln_4=d5+edg13_4;
plot3([d4(1) D4pln_4(1) D5pln_4(1) d5(1)],...
      [d4(2) D4pln_4(2) D5pln_4(2) d5(2)],...
      [d4(3) D4pln_4(3) D5pln_4(3) d5(3)],'k-');

%edge vectors of the 5th side (only one,
%the others are already defined) 
edg5=d1-d5;

%5th side vector rotations 
R=RotMatrix(edg5,rotAngle);
edg9_5=R*edg9;
edg13_5=R*edg13;
D1pln_5=d1+edg9_5;
D5pln_5=d5+edg13_5;
plot3([d5(1) D5pln_5(1) D1pln_5(1) d1(1)],...
      [d5(2) D5pln_5(2) D1pln_5(2) d1(2)],...
      [d5(3) D5pln_5(3) D1pln_5(3) d1(3)],'k-');

%return;
figure(2)

%draw the template 
plot([d1(1) d2(1) d3(1) d4(1) d5(1) d1(1)],...
     [d1(2) d2(2) d3(2) d4(2) d5(2) d1(2)],'k-','linewidth',2);
hold on
axis([-3.1 3.1 -3.1 3.1]);
axis square
plot([d1(1) D1pln_1(1) D2pln_1(1) d2(1)],...
     [d1(2) D1pln_1(2) D2pln_1(2) d2(2)],'k-','linewidth',2);
plot([d2(1) D2pln_2(1) D3pln_2(1) d3(1)],...
     [d2(2) D2pln_2(2) D3pln_2(2) d3(2)],'k-','linewidth',2);
plot([d3(1) D3pln_3(1) D4pln_3(1) d4(1)],...
     [d3(2) D3pln_3(2) D4pln_3(2) d4(2)],'k-','linewidth',2);
plot([d4(1) D4pln_4(1) D5pln_4(1) d5(1)],...
     [d4(2) D4pln_4(2) D5pln_4(2) d5(2)],'k-','linewidth',2);
plot([d5(1) D5pln_5(1) D1pln_5(1) d1(1)],...
     [d5(2) D5pln_5(2) D1pln_5(2) d1(2)],'k-','linewidth',2);