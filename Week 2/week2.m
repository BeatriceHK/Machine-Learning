%% test
A = ones(10,10);
x = [1,2,3,4,5,6,7,8,9,10]';
%% test
v = zeros(10, 1);
for i = 1:10
  for j = 1:10
    v(i) = v(i) + A(i, j) * x(j);
  end
end

%% Q4
v = [1,2,3,4,5,6,7]';
w = [4,5,6,7,8,9,10]';

%% Q4
z = 0;
for i = 1:7
  z = z + v(i) * w(i);
end

%% Q5
X = A(1:7,1:7);