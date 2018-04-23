# Simpsons 1/3 Rule

This Matlab algorithm uses the Simpsons 1/3 rule to estimate the integral of an
array of y values with respect to an array of x values. If the number of
intervals is odd the function uses the simpsons 1/3 rule on all but the
last inerval, then takes the trapizodal rule for the last interval and
adds them together.

The inputs are arrays x and y

The output is the integral, I
