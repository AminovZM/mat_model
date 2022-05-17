model lab6_a
  parameter Real a=0.059;
  parameter Real b=0.072;
  
  Real I(start=190);
  Real R(start=59);
  Real S(start=12651);

equation
  der(S) = 0;
  der(I) = -b*I;
  der(R) = b*I;

end lab6_a;
