# False Position Method Algorithm

This Matlab algorithm estimates the root of a bracketed fucntion using the false position method

The inputs are func,xl,xu,es,and maxiter where func is the function, xl is the lower x bracket, xu is the upper x bracket, es is the desired error, and maxiter is the max iterations desired

The outputs are root,fx,ea,iter where root is the estimated root of the function, fx is the the function evaluated at that root, ea is the error, and iter is the number of iterations

The function works well however the error is not calculated correctly
