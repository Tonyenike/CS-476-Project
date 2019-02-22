%   This is the simulation for testing the ieee protocol as outlined here: 
%       https://csce.ucmss.com/cr/books/2018/LFS/CSREA2018/IKE9004.pdf
%   Parameters:
%       n = the desired number of simulations to run
%
%   Outputs:
%       None. It will display a graph with 
%       the results of the simulations.

function simulate_project(n)

    p = 10; % Number of software downloads
    b = 10; % Number of block in the chain
    
    normal_nodes = 100;
    vendor_nodes = 20;
    
    avg_software_package_size = 256; % Average packet size is 256 bits
    
    avg_contract_creation = 512; % Average contract size is 512 bits
    
    service_rate = 20; % Service rate is 20 bits per second
    
    C = zeros(1, p);
    G = zeros(1, p);
    S = zeros(1, p);
    
    for i = 1:n
        for k = 1:p
            S(k) = round(poissrnd(avg_software_package_size)); % Poisson distribution
            G(k) = round(poissrnd(avg_contract_creation));
            C(k) = (G(k) / service_rate) * (G(k) / service_rate); % Polynomial-time hash to create each block. We chose n^2.
            download_time = S(k) / service_rate; % time to download the firmware once we have verified the block. Assume that executing smart contract time is 0.
        end
    end
end
