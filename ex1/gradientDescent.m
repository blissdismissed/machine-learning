function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
hold on;

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %


    % need to modify theta not X and y
    % plot J(theta) to monitor progress

        
    theta_temp1 = theta(1) - alpha/m*sum((X*theta-y).*X(:,1));
    theta_temp2 = theta(2) - alpha/m*sum((X*theta-y).*X(:,2));
    theta(1)= theta_temp1;
    theta(2)= theta_temp2;
    
    %fprintf('Theta computed from gradient descent:\n%f,\n%f\n',theta(1),theta(2))
    
    



    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);
    pl = computeCost(X,y,theta);
    fprintf('Cost at these thetas: %f\n',pl);
    plot(iter, pl, 'rx', 'MarkerSize', 10);

end
hold off;
end
