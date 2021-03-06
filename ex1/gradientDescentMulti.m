function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
theta_temp = zeros(1, size(X, 2));
%hold on;

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %

    for var1 = 1: size(X,2)
        
        theta_temp(var1) = theta(var1) - alpha/m*sum((X*theta-y).*X(:,var1));

    end
    
    for var2 = 1: size(X,2)
        
        theta(var2)= theta_temp(var2);

    end






    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);
    
    %pl = computeCost(X,y,theta);
    %fprintf('Cost at these thetas: %f\n',pl);
    %plot(iter, pl, 'rx', 'MarkerSize', 10);

end
%hold off;
end
