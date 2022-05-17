model lab5_stationary_state
  parameter Real a=0.83;
  parameter Real b=0.043;
  parameter Real c=0.84;
  parameter Real d=0.024;
  
  Real x(start=c/d);
  Real y(start=a/b);
  
equation
  der(x)= -a*x + b*x*y;
  der(y)= c*y - d*x*y;

  annotation(experiment(StartTime=0, StopTime=400, Tplerance=1e-06,Interval=0.1));
  
end lab5_stationary_state;
