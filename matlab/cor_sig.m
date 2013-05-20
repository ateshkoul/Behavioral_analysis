function [cor sig] = cor_sig(a,b)
for (j=1:size(a,2))
for(i=1:size(a{j},2))
c = a{j}(:,i)
d = b(:,j)
[p q] = corrcoef(c,d)
cor(j,i) = p(1,2)
sig(j,i) = q(1,2)
end
end
end