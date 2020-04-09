%This function initializes the cells of the matrix as 1 = alive or 0 = dead 

function mat = initCells (lifeGrid, size)
  
  mat = lifeGrid; 
  
  for r = 1:size
    for c = 1:size 
      if (rand <= .66)
        mat(r, c) = 0;
      elseif
        mat(r, c) = 1;
      endif
      
      #mat(r, c) = randi([0, 1]); 
    endfor
  endfor

endfunction
