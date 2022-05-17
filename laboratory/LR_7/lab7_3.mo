model lab7_3
  parameter Real a=0.12;
  parameter Real b=0.29;
  parameter Real N=1600;

  Real n(start=13);

  equation
    der(n) = (cos(time)*a + b*cos(time)*n ) * (N-n);
    
end lab7_3;
