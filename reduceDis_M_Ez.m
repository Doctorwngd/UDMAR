function Reduction_set = reduceDis_M_Ez(Dis_M)

% Initialize Reduction_set as an empty set
Reduction_set = [];

while true
    % Sum across columns
    col_sum = sum(sum(Dis_M .^5, 1), 2);
    
    % Get the maximum value
    [max_val, c_max] = max(col_sum);
    
    % If the maximum value is 0, stop the program
    if max_val == max(col_sum(Reduction_set))
        break;
    end
    
    % Add the index c_max to the Reduction_set
    Reduction_set = [Reduction_set, c_max];
    
    % Update Dis_M
    L_c_max = Dis_M(:, :, c_max);
    Eliminate_c_max = L_c_max * -1 + 1;  % Change 0 to 1, and 1 to 0
    Dis_M = Dis_M .* Eliminate_c_max;
   
end

end

