   function [c, ceq] = simple_constraint(x)
   c = [0.1*x(5)-x(7)];
   ceq = [];