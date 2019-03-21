# loop_extrusion_numerics

floops_belan() generates a vector f(s) for the ideal chain with exponentially distributed 
loops sizes, according to the Sergey's hypergeometric expression; loops_belan(s, k) computes 
the expression for each s and k. Exponential distribution corresponds to the choice k=1;

-------
intgsF(s, lambda, h) computes numerically the integrals for a fractal chain with arbitrary fractal dimension 
(h = 1/d is the Hurst exponent of fBm; the ideal case corresponds to d=2; fractal globule to d=3; 
phantom randomly branching polymer to d=4)

floops(lambda, h) computes vector f_h(s) calling intgsF(s, lambda, h) for each s -- the main result

Additional dependencies:
ploops(f, d, lambda, h) computes the probabilities p_h(s) from the vector f_h(s)
derloops(f, d, lambda, h) computes the log. derivative of p_h(s) from the vector f_h(s)
derloops_delta(f, lambda) computes the peak-n-dip factor \Delta_h(s) from the vector f_h(s)
