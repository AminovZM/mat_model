model lab4_1
  parameter Real w=7.5;
  Real x(start=1.2);
  Real y(start=1);
  
  equation
    der(x)=y;
    der(y)=-w*x;

end lab4_1;
