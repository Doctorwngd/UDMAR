function Reduction_set = reduceDis_M_Ez(Dis_M)

% ��ʼ��Reduction_setΪ�ռ���
Reduction_set = [];

while true
    % �������
    
    col_sum = sum(sum(Dis_M .^5, 1), 2);
    
    % ��ȡ���ֵ
    [max_val, c_max] = max(col_sum);
%     max_val
    % ������ֵ��0��ֹͣ����
    if max_val == max(col_sum(Reduction_set))
%     if max_val <= theta
        break;
    end
    
    
    % ������c_max����Reduction_set
    Reduction_set = [Reduction_set, c_max];
    
    % ����Dis_M
    L_c_max = Dis_M(:, :, c_max);
    Eliminate_c_max = L_c_max * -1 + 1;  % ��0��Ϊ1��1��Ϊ0
    Dis_M = Dis_M .* Eliminate_c_max;
   
end

end
