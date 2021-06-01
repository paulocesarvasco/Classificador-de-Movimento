function [label] = dist(x, y, p, k)
  
  d = sqrt(sum((x - p).^2, 2));
  d = [d y];

  sd = sortrows(d);
  label = sum(sd(1:k, 2));
  
endfunction
  