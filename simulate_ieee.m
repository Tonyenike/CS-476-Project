%   This is the simulation for testing the ieee protocol as outlined here: 
%       http://www.cuhk.edu.cn/academics/caiwei/paper/WeiCaiWEHFL2018.pdf
%   Parameters:
%       n = the desired number of simulations to run
%
%   Outputs:
%       None. It will display a graph with 
%       the results of the simulations.

function simulate_project(n)

    p = 10; % Number of software downloads
    b = 10; % Number of block in the chain
    avg_items = 10; % Number of IoT in gateway.
    
    nodes = 100;
    
    avg_software_package_size = 256; % Average packet size is 256 bits
    
    service_rate = 20; % Service rate is 20 bits per second
    
    for i = 1:n
        for k = 1:p
            S(k) = round(poissrnd(avg_software_package_size)); % Poisson distribution
            for j = 1:n
                C(k, j) = (S(k) / service_rate) * (S(k) / service_rate); % Polynomial-time hash to verify each block. We chose n^2.
            end
            download_time = S(k) / service_rate; % time to download the firmware once we have verified the block. Assume that executing smart contract time is 0.
            routing_time = poissrnd(avg_items);
        end
    end
end
