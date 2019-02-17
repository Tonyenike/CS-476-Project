%   Parameters:
%       n = the desired number of simulations to run
%
%   Outputs:
%       None. It will display a graph with 
%       the results of the simulations.

function simulate_project(n)

    p = 10; % Number of software downloads
    avg_software_package_size = 256; % Average packet size is 256 bits
    avg_blocks_in_chain = 10;
    
    for i = 1:n
        for k = 1:p
            S(k) = round(exprnd(avg_software_package_size));
            blocks(n) = round(exprnd(avg_blocks_in_chain));
            for j = 1:blocks(n)
                C(k, j) = S(k) * S(k); % Polynomial-time hash to verify each block. We chose n^2.
            end
        end
    end

end