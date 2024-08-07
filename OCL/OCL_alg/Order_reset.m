% reset data order
function Reorder_data=Order_reset(Fi,L,data)
  
    Fi=transpose(Fi);
    for col = 1:length(Fi)
        current_mapping = L{col};
        current_replacement = Fi{col};
        mapping_index_list=cell(1,length(current_mapping));
    
        for i = 1:length(current_mapping)
            mapping_index_list{i}=find(data(:, col) == current_mapping(i));
        end
        for i = 1:length(current_mapping)
            data(mapping_index_list{i},col) = current_replacement(i);        
        end 
    end
    Reorder_data=data;
end