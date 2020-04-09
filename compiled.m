# game of life
sz = input("size -> ");
lifeMatrix = zeros(sz);
lifeMatrix = initCells(lifeMatrix, sz);

limit = 50;

while (limit >= 0)
  #clf;
  #hold off;
  z = zeros(sz);
  for x = 1:sz
    for y = 1:sz
      z(x, y) = intReturn(neighborhood(x, y, sz, lifeMatrix), checkState(x, y, lifeMatrix));
    endfor
  endfor
  
  lifeMatrix = z
  
%  display graph
%  hold on;
%  for x = 1:sz
%    for y = 1:sz
%     if (lifeMatrix(x, y) == 1)
%        plot(x, y, "*g");
%      else
%       plot(x, y, "*r");
%     endif
%    endfor
%  endfor

  limit--;
endwhile

lifeMatrix
