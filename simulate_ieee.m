%   Parameters:
%       n = the desired number of simulations to run
%
%   Outputs:
%       None. It will display a graph with 
%       the results of the simulations.

function simulate_project(n)

    p = 10; % Number of software downloads
    b = 10; % Number of block in the chain
    
    avg_software_package_size = 256; % Average packet size is 256 bits
    
    for i = 1:n
        for k = 1:p
            S(k) = round(poissnd(avg_software_package_size)); % Poisson distribution
            for j = 1:n
                C(k, j) = S(k) * S(k); % Polynomial-time hash to verify each block. We chose n^2.
            end
        end
    end

end
