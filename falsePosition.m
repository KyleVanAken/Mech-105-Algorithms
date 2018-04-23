
function [root,fx,ea,iter] = falsePosition(func,xl,xu,es,maxiter)
format long
%Finds the root of the function using the false position method

%check that the brackets work for this method
if func(xl)*func(xu)<0
    error=100;
    i=0;
    
    %set iteration loop
    while error>es&&i<maxiter 
    i=i+1;
    %find root using false position
    root=xu-(xl-xu)/(func(xl)-func(xu))*func(xu);
    
    %decide whether to search for a more accurate root left or right of the
    %origional estimate
    if func(root)*func(xu)<0
        xl=root;
    else 
        xu=root;
    end
    %show final function outputs
    ea = abs(func(root));
    iter=i;
    fx=func(root);
  
    end
    disp('root=')
    disp(root)
   %disp('iterations=')
    %disp(i)
    %disp('function at x=')
    %disp(func(root))
    %disp('error=')
    %disp(abs(func(root)))
    
else
    disp('youre brackets cannont find a zero using this method')
end
end
