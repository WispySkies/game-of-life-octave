#returns state surrounding x,y
function out = neighborhood(x, y, size, gr)

  out = zeros([1, 8]);
  iterator = 1;
 
  for i = x - 1:x + 1
    for j = y - 1:y + 1
      if (i == x && j == y)
        continue
      endif
      
      positionX = i;
      positionY = j;
      
      if (i <= 0)
        positionX = size;
      elseif (i >= size)
        positionX = 1;
      endif
      
      if (j <= 0)
        positionY = size;
      elseif (j >= size)
        positionY = 1;
      endif
      out(iterator) = checkState(positionX, positionY, gr);
      iterator++;
    endfor
  endfor
endfunction