model lab6_b
  parameter Real a=0.059;
  parameter Real b=0.072;
  
  Real I(start=190);
  Real R(start=59);
  Real S(start=12651);

equation
  der(S) = -a*S;
  der(I) = a*S-b*I;
  der(R) = b*I;

end lab6_b;
