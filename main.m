load ./data_set/example_new.mat

for i=3:4
    if rem(max(trandata(:,i)),1) ~= 0 
        trandata(:,i) = (trandata(:,i)-min(trandata(:,i)))/(max(trandata(:,i))-min(trandata(:,i)));
    end
end
data = trandata([1, 2, 5, 6, 18], :);

Red = DMAR(data(:, 1:end - 1), 1)