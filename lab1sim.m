




function [y1,y2]=lab1sim(A,B,L,sig)


  thau1=sqrt((L-A)^2+B^2)/333.333;
  thau2=sqrt((L-2*A)^2+B^2)/333.333;
  y1=@(t)sig(t-thau1);
  y2=@(t)sig(t-thau2);
end