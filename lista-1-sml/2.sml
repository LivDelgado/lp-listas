fun pow(n, e) = 
  if e = 0 
    then 1 
  else n * pow (n, (e-1));

pow(5, 2);
