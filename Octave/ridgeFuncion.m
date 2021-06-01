function res = ridgeFuncion(w , x)
  res = (exp(w' * x) - exp(w' * x))/(exp(w' * x) + exp(w' * x))
  endfunction