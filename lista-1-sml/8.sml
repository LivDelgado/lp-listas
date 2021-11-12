fun allTrue [] = true
  | allTrue (x::xs) = x = true andalso allTrue xs;


allTrue [true, true, false, true];

allTrue [true, true, true];
