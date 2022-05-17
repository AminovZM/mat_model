model lab7_2
  parameter Real a=0.000012;
  parameter Real b=0.29;
  parameter Real N=1600;

  Real n(start=13);

  equation
    der(n)=(a+b*n) * (N-n);

end lab7_2;
