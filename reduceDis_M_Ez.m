function Reduction_set = reduceDis_M_Ez(Dis_M)

% 初始化Reduction_set为空集合
Reduction_set = [];

while true
    % 按列求和
    
    col_sum = sum(sum(Dis_M .^5, 1), 2);
    
    % 获取最大值
    [max_val, c_max] = max(col_sum);
%     max_val
    % 如果最大值是0，停止程序
    if max_val == max(col_sum(Reduction_set))
%     if max_val <= theta
        break;
    end
    
    
    % 将索引c_max加入Reduction_set
    Reduction_set = [Reduction_set, c_max];
    
    % 更新Dis_M
    L_c_max = Dis_M(:, :, c_max);
    Eliminate_c_max = L_c_max * -1 + 1;  % 将0变为1，1变为0
    Dis_M = Dis_M .* Eliminate_c_max;
   
end

end
