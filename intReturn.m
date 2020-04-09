function out = intReturn(surroundVec, isAlive)
  x = sum(surroundVec);
  if isAlive
    if x == 2 || x == 3
      out = 1;
    else
      out = 0;
      endif
  else
      if x == 3
        out = 1;
      else
        out = 0;
        endif
      endif
endfunction