function[I] = Simpson(x,y)
%This function uses the Simpsons 1/3 rule to estimate the integral of an
%array of y values with respect to an array of x values. If the number of
%intervals is odd the function uses the simpsons 1/3 rule on all but the
%last inerval, then takes the trapizodal rule for the last interval and
%adds them together.

%The following if statements check for errors like tomany arguments or
%arrays that dont match and unevenly spaced x values
if nargin<2||nargin>2
    error('you do not have the correct amount of arguments (2)')
elseif length(x)~=length(y)
    error('inputs not equal')
elseif sum(diff(diff(x)))~=0
    error('x values are not evenly spaced')
end

if mod(length(x),2)==0 %checks if the number of intervals arn't equal and if so the trapizodal rule is used for the last interval
    
%array is broken into last interval and rest of intervals (shortened and extra)    
ys=y(1:length(y)-1);
ye=y(length(y)-1:length(y));
xs=x(1:length(x)-1);
xe=x(length(x)-1:length(x));

%Simpsons 1/3 rule is used and added to the trapizodial rule for an
%integral estimate
h=(xs(end)-xs(1))/2;
I=h/3*(ys(1)+4*median(ys)+ys(end))+(xe(end)-xe(1))*(ye(1)+ye(end))/2;
disp('warning, tapizodial rule has been used for the last interval')
else
%if array intervals are even Simpsons 1/3 rule is used to estimate the
%integral
h=(x(end)-x(1))/2;
I=h/3*(y(1)+4*median(y)+y(end));
end
disp(I)
end

    