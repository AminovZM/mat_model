model lab7_1
  parameter Real a=0.12;
  parameter Real b=0.000039;
  parameter Real N=1600;

  Real n(start=13);

  equation
    der(n)=(a+b*n) * (N-n);

end lab7_1;
