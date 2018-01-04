function dist = manhattan(q, q1)
[m,n] = size(q);
dist = 0;
for i = 1 : m
  dist = dist + abs(q1(i)-q(i));
end
end