syms t
x=1-t/10;
Dx=diff(x);
DDx=diff(Dx);
al=0.041;
r=25
ft=10
tp=0:0.5:ft
tap=0:al:al*(r)

for i=1:r
    i
xi=inline(x);
X(i,:)=xi(tp);

Dxi=inline(Dx);
Eq=strcat('D2y =  ',char(x-DDx));
Cond=strcat('y(0) = 0, Dy(10) =',num2str(-Dxi(10)));
y = dsolve(Eq, Cond);
x=x+al*y;
Dx=diff(x);
DDx=diff(Dx);
ezplot(x,[0 10])
hold on
pause(0.001)

end
xi=inline(x);
X(i+1,:)=xi(tp);

[X0,Y] = meshgrid(tp,tap);
figure(2)
mesh(X0,Y,X)
axis([0 tf 0 al*(r)])

ylabel('Virtual Time ( \tau)','Interpreter','Tex')
xlabel('Real Time (t)','Interpreter','Tex')
zlabel('x(t,\tau)','Interpreter','Tex')
title('State Variable','Interpreter','Tex')