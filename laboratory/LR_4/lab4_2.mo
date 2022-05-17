model lab4_2
  parameter Real w=5.5;
  parameter Real g=2;
  Real x(start=1.2);
  Real y(start=1);
  
  equation
    der(x)=y;
    der(y)=-g*y-w*x;

end lab4_2;
