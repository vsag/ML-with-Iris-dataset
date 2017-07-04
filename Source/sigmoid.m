function [sigmo]=sigmoid(z)

sigmo=1.0 ./ (1.0 + exp(-z));
end
