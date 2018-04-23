function [L,U,A,P] = luFactor(A)
%This function factors a matrix(A) using LU factorization
if nargin < 1 %checks to see if there are the right number of inputs
    error('not enough inputs')
elseif nargin > 1
    error('too many inputs')
end 

num=size(A); %checks the size of the matrix
if num(1)~=num(2)
    error('matrix not square')
end
U=A; %initially sets the upper matrix to A
P=eye(num); %initially sets the pivot matrix to the identity matrix
L=P;%initially sets the lower matrix to the identity matrix

for i=1:num
    [~,x] = max(abs(U(i:num,i))); %finds the row with the largest absolute number for the column we are looking at
    x=x+i-1; %set x relative to A instead of relative to ixi
    z = U(x,:);%Stores row with largest absolute number for column
    p=U(i,:); %Stores row being replaced
    U(i,:)=z;%replaces top row in ixi matrix with row with largest absolute number for column
    U(x,:)=p;%replaces origional row with largest absolute number for column with origional top row in ixi matrix

    for g=i:num-1
        if U(g+1,i)~=0 %checks that number hasnt already been zeroed
            rat=U(g+1,i)/U(i,i);%get ratio for gaussian elimination
            L(g+1,i)=rat;%insert ratio into lower matrix
            U(g+1,:)=U(g+1,:)-z.*rat;%perform gaussian elimination
        end
    end
   
end
    P=L*U/A; %uses XA=B to find Pivot matrix
    disp(P)
    disp(A)
    disp(L)
    disp(U)
  
end